unit addAvans;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DBCtrlsEh, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  Vcl.StdCtrls, DBLookupEh, Vcl.Mask;

type
  TfAvans = class(TForm)
    pnlБоковая_Панель: TPanel;
    lbl1: TLabel;
    edtСтоимость: TDBNumberEditEh;
    edtАванс: TDBNumberEditEh;
    edtДоплата: TDBNumberEditEh;
    btnРежим: TButton;
    pnl1: TPanel;
    DBGridEh1: TDBGridEh;
    pnlВерхняя_Панель: TPanel;
    lblL_НарядЗаказ: TLabel;
    bvl1: TBevel;
    edtКлиент: TDBEditEh;
    edtМенеджер: TDBEditEh;
    FDQФинансы: TFDQuery;
    fdtncfldFDФинансыFID: TFDAutoIncField;
    dtfldFDФинансыДата: TDateField;
    intgrfldFDФинансыZID: TIntegerField;
    intgrfldFDФинансыMID: TIntegerField;
    intgrfldFDФинансыCID: TIntegerField;
    strngfldFDФинансыВидПлатежа: TStringField;
    intgrfldFDФинансыНомер_счёта: TIntegerField;
    intgrfldFDФинансыСумма: TIntegerField;
    blnfldFDФинансыГашение: TBooleanField;
    intgrfldFDФинансыСпособ_оплаты: TIntegerField;
    strngfldFDФинансыМенеджер: TStringField;
    strngfldFDФинансыКлиент: TStringField;
    dsФинансы: TDataSource;
    FDQЗапросы: TFDQuery;
    pnlНижняя_Панель: TPanel;
    btnОтмена: TButton;
    btnСохранить: TButton;
    edtZID: TDBNumberEditEh;
    pnlФинансы: TPanel;
    pnl2: TPanel;
    btnДобавить: TButton;
    btnBtnОтмена: TButton;
    edtРасчетнаяДоплата: TDBNumberEditEh;
    edtСумма: TDBNumberEditEh;
    edtНомерСчета: TDBNumberEditEh;
    cbbСпособОплаты: TDBLookupComboboxEh;
    edtCID: TDBNumberEditEh;
    lbl2: TLabel;
    procedure НоваяТранзакция(Sender: TObject);
    procedure btnBtnОтменаClick(Sender: TObject);
    procedure btnДобавитьClick(Sender: TObject);
    procedure РежимРедактирования(DataSet: TDataSet);
    procedure РежимПросмотра(DataSet: TDataSet);
    procedure edtСуммаDblClick(Sender: TObject);
    procedure edtСуммаChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure РасчетАвансДоплаты();
  private
    FТранзакции: integer;
    procedure SetТранзакции(const Value: integer);
    { Private declarations }
    property Транзакции: integer read FТранзакции write SetТранзакции;
  public
    { Public declarations }
    procedure ВнестиАванс();
  end;

var
  fAvans: TfAvans;

implementation

uses
  order, server, user;

{$R *.dfm}

{ TfAvans }

procedure TfAvans.btnДобавитьClick(Sender: TObject);
begin
  if edtСумма.value <= 0 then
  begin
    ShowMessage('Вы не указали сумму аванса.');
    edtСумма.SetFocus;
    exit;
  end;

  if edtСумма.value > edtДоплата.value then
  begin
    ShowMessage('Вносимая сумма превыщает доплату.');
    edtСумма.SetFocus;
    exit;
  end;

  if (cbbСпособОплаты.KeyValue > 1) and (edtНомерСчета.value = 0) then
  begin
    ShowMessage('Не указан номер счета или карты.');
    exit;
  end;

  if FDQФинансы.Modified then
  begin
    FDQФинансы.Post;
    edtАванс.value := edtАванс.value + edtСумма.value;
    edtДоплата.value := edtСтоимость.value - edtАванс.value;
    Транзакции := Транзакции + 1;
  end;
end;

procedure TfAvans.btnBtnОтменаClick(Sender: TObject);
begin
  FDQФинансы.Cancel;
end;

procedure TfAvans.edtСуммаChange(Sender: TObject);
begin
  edtРасчетнаяДоплата.value := edtДоплата.value - edtСумма.value;
end;

procedure TfAvans.edtСуммаDblClick(Sender: TObject);
begin
  edtСумма.value := edtДоплата.value;
end;

procedure TfAvans.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (FDQФинансы.Modified) then
  begin
    if Application.MessageBox('Ввод данных не завершен.' + #13#10 + 'Внесенные изменения будут утеряны.' + #13#10 + 'Продолжить?', 'Подтверждение', MB_YESNO + MB_ICONQUESTION) = IDYES then
      FDQФинансы.Cancel
    else
      CanClose := false;
  end;

  if (ModalResult = mrCancel) and (Транзакции > 0) then
  begin
    if Application.MessageBox(PChar('Внимание отмена транзакций!' + #13#10 + 'Бедет отменено: ' + (Транзакции.ToString) + ' операций.' + #13#10 + 'Внесенные изменения будут утеряны.' + #13#10 + 'Продолжить?'), 'Подтверждение', MB_YESNO + MB_ICONQUESTION) = IDYES then
      FDQФинансы.Cancel
    else
      CanClose := false;
  end;

end;

procedure TfAvans.SetТранзакции(const Value: integer);
begin
  if FТранзакции <> Value then
  begin
    FТранзакции := Value;
    lbl2.Caption := 'Транзакций: ' + Транзакции.ToString;
  end;
end;

procedure TfAvans.РасчетАвансДоплаты;
begin
  with FDQЗапросы do
  begin
    Close;
    SQL.Text := 'SELECT SUM(`Сумма`) AS `Result` FROM `Финансы` WHERE `Z-ID` LIKE :ZID';
    ParamByName('ZID').AsInteger := edtZID.Value;
    Open;
    edtАванс.value := FieldByName('Result').AsInteger;
  end;

  edtДоплата.value := edtСтоимость.value - edtАванс.value;
end;

procedure TfAvans.РежимПросмотра(DataSet: TDataSet);
begin
  pnlФинансы.Visible := false;
  btnРежим.Enabled := true;
  DBGridEh1.Enabled := true;
end;

procedure TfAvans.РежимРедактирования(DataSet: TDataSet);
begin
  pnlФинансы.Visible := true;
  btnРежим.Enabled := false;
  DBGridEh1.Enabled := false;
end;

procedure TfAvans.ВнестиАванс;
begin
  Транзакции :=-1;
  Транзакции := 0;  //Подсчитываем число транзакция для вывода сообщения вслучае отмены.

  if edtCID.value = 0 then
  begin
    ShowMessage('Для проведения платежа необходимо выбрать клиента.');
    exit;
  end;

  with FDQФинансы do
  begin
    close;
    sql.Text := 'SELECT * FROM `Финансы` WHERE `Z-ID` LIKE :ZID';
    ParamByName('ZID').AsInteger := edtZID.Value;
    open;
  end;

  dmServer.Connection.StartTransaction;

  if ShowModal = mrOk then
  begin
    if FDQФинансы.Modified then
      FDQФинансы.post;
    dmServer.Connection.Commit;
  end
  else
  begin
    FDQФинансы.Cancel;
    dmServer.Connection.Rollback;
  end;
  РасчетАвансДоплаты();
end;

procedure TfAvans.НоваяТранзакция(Sender: TObject);
begin
  with FDQФинансы do
  begin
    Append;
 // FieldByName('F-ID').AsInteger := 0;
    FieldByName('Z-ID').AsInteger := edtZID.Value;
    FieldByName('M-ID').AsInteger := fUser.MID;
    FieldByName('C-ID').AsInteger := edtCID.Value;
    FieldByName('Дата').AsDateTime := Now;
    FieldByName('Сумма').AsInteger := 0;
    FieldByName('Способ_оплаты').AsInteger := 1;
    FieldByName('Номер_счёта').AsInteger := 0;
    FieldByName('Гашение').AsBoolean := false;
  end;
end;

end.

