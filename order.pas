unit order;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBGridEh, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, DBCtrlsEh, DBLookupEh,
  Vcl.StdCtrls, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.Mask;

type
  TfOrder = class(TForm)
    pnlНижняя_Панель: TPanel;
    btnОтмена: TButton;
    btnСохранить: TButton;
    chkБлокировка: TDBCheckBoxEh;
    edtAID: TDBEditEh;
    edtMID: TDBEditEh;
    edtCID: TDBEditEh;
    pnlОсновная_Панель: TPanel;
    DBGridEh3: TDBGridEh;
    pnlВерхняя_Панель: TPanel;
    pnlДоп_Панель: TPanel;
    pnlДаты_Панель: TPanel;
    edtДатаСоздания: TDBDateTimeEditEh;
    edtДатаМакета: TDBDateTimeEditEh;
    edtДатаИзготовления: TDBDateTimeEditEh;
    pnlНазвание_Панель: TPanel;
    edtНазвание: TDBEditEh;
    edtКлиент: TDBEditEh;
    edtМенеджер: TDBEditEh;
    pnl1: TPanel;
    bvl1: TBevel;
    pnl2: TPanel;
    lblL_НарядЗаказ: TLabel;
    edtUpdate: TDBEditEh;
    pnl3: TPanel;
    edtНомер: TDBEditEh;
    edtZID: TDBEditEh;
    pnlБоковая_Панель: TPanel;
    lbl1: TLabel;
    cbbAID: TDBLookupComboboxEh;
    edtСтоимость: TDBNumberEditEh;
    edtДоплата: TDBNumberEditEh;
    edtАванс: TDBNumberEditEh;
    dbmh1: TDBMemoEh;
    pmСоставPopup: TPopupMenu;
    N1: TMenuItem;
    PopupПолимер: TMenuItem;
    PopupПолиграфия: TMenuItem;
    PopupТаблички: TMenuItem;
    PopupИзменить: TMenuItem;
    PupupУдалить: TMenuItem;
    FDQЗаказ: TFDQuery;
    intgrfldFDЗаказНомер: TIntegerField;
    wdstrngfldFDЗаказНазвание: TWideStringField;
    fdtncfldFDЗаказZID: TFDAutoIncField;
    intgrfldFDЗаказCID: TIntegerField;
    intgrfldFDЗаказMID: TIntegerField;
    intgrfldFDЗаказAID: TIntegerField;
    dtfldFDЗаказСоздан: TDateField;
    dtfldFDЗаказМакет: TDateField;
    dtfldFDЗаказГотовность: TDateField;
    blnfldFDЗаказБлокировка: TBooleanField;
    intgrfldFDЗаказСтоимость: TIntegerField;
    intgrfldFDЗаказАванс: TIntegerField;
    intgrfldFDЗаказДоплата: TIntegerField;
    dtmfldFDЗаказUpdate: TDateTimeField;
    strngfldFDЗаказКлиент: TStringField;
    strngfldFDЗаказМенеджер: TStringField;
    strngfldFDЗаказСтатус: TStringField;
    wdmfldFDЗаказЗаметка: TWideMemoField;
    ds_Заказ: TDataSource;
    FDQСостав: TFDQuery;
    strngfldFDСоставНаименование: TStringField;
    wdstrngfldFDСоставПараметры: TWideStringField;
    fdtncfldFDСоставSID: TFDAutoIncField;
    intgrfldFDСоставZID: TIntegerField;
    intgrfldFDСоставWID: TIntegerField;
    intgrfldFDСоставVID: TIntegerField;
    wdstrngfldFDСоставОписание: TWideStringField;
    intgrfldFDСоставКоличество: TIntegerField;
    intgrfldFDСоставСтоимость: TIntegerField;
    ds_Состав: TDataSource;
    FDQЗапросы: TFDQuery;
  private
    { Private declarations }
    function GetZID: Integer;
  public
    { Public declarations }
    procedure Открыть();
  end;

var
  fOrder: TfOrder;

implementation

uses
  server, clients;

{$R *.dfm}

{ TForm1 }

function TfOrder.GetZID: Integer;
begin
  // Запрос на пулечение Z-ID из главного грида.
  Result := dmServer.FDQЗаказы.FieldByName('Z-ID').AsInteger;
end;

procedure TfOrder.Открыть;
begin
  with FDQЗаказ do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `Заказы` WHERE `Z-ID` LIKE :ZID';
    ParamByName('ZID').AsInteger := GetZID;
    Open;

    if RecordCount = 0 then
    begin
      ShowMessage('Заказ не найден.');
      exit;
    end;
  end;

  FDQСостав.Close;
  FDQСостав.Open();

  if ShowModal = mrOk then
  begin

  end
  else
  begin

  end;
end;

end.

