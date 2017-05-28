unit clients;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.Mask, DBCtrlsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus;

type
  TFClients = class(TForm)
    Panel1: TPanel;
    Отмена: TButton;
    Выбрать: TButton;
    DBGridEh2: TDBGridEh;
    FDКлиенты: TFDQuery;
    DS_Клиенты: TDataSource;
    FDКлиентыCID: TFDAutoIncField;
    FDКлиентыФамилия: TWideStringField;
    FDКлиентыИмя: TWideStringField;
    FDКлиентыОтчество: TWideStringField;
    FDКлиентыМобильный: TWideStringField;
    FDКлиентыПочта: TWideStringField;
    FDКлиентыПапка: TWideStringField;
    FDКлиентыКомпания: TWideStringField;
    FDКлиентыСтатус: TIntegerField;
    PopupMenu1: TPopupMenu;
    НовыйКлиент: TMenuItem;
    Редактировать: TMenuItem;
    Удалить: TMenuItem;
    PopupВыбрать: TMenuItem;
    FDЗапросы: TFDQuery;
    Panel2: TPanel;
    СтрокаПоиска: TDBEditEh;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    edtCID: TDBEditEh;
    procedure ВыбратьКлиентаИзТаблицы(Sender: TObject);
    procedure РедактироватьКлиента(Sender: TObject);
    procedure СоздатьНовогоКлиента(Sender: TObject);
    procedure УдалитьКлиента(Sender: TObject);
    procedure ПоискКлиента(Sender: TObject);
    procedure СтрокаПоискаEnter(Sender: TObject);
    procedure СтрокаПоискаExit(Sender: TObject);
    procedure ОчиститьСтрокуПоиска(Sender: TObject; var Handled: Boolean);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ВыбратьКлиента();
  end;

var
  FClients: TFClients;

implementation

uses
  server, clientEdit;

{$R *.dfm}


{ TClients }

procedure TFClients.ВыбратьКлиентаИзТаблицы(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFClients.ПоискКлиента(Sender: TObject);
begin
  // Обработка ввода данных строки поиска для фильтрации данных

  if СтрокаПоиска.Text <> '' then
  begin
    СтрокаПоиска.EditButtons[0].Visible := true; // Кнопка отчистки Edit`a
    DBGridEh2.SearchPanel.SearchingText := СтрокаПоиска.Text;
    DBGridEh2.SearchPanel.RestartFind;

    DBGridEh2.SearchPanel.ApplySearchFilter; // Убираем отфильтрованные данные
  end
  else
  begin
    DBGridEh2.SearchPanel.CancelSearchFilter;     // Возвращаем данные после фильтрации
    СтрокаПоиска.EditButtons[0].Visible := false; // Кнопка отчистки Edit`a
  end;
end;

procedure TFClients.ОчиститьСтрокуПоиска(Sender: TObject; var Handled: Boolean);
begin
  СтрокаПоиска.Clear;
end;

procedure TFClients.СтрокаПоискаEnter(Sender: TObject);
begin
  DBGridEh2.SearchPanel.Active := true;
end;

procedure TFClients.СтрокаПоискаExit(Sender: TObject);
begin
  DBGridEh2.SearchPanel.Active := false;
end;

procedure TFClients.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  // Обработка HotKeys
  if Msg.CharCode = VK_ESCAPE then
  begin
    Close;
    Handled := true;
  end;
end;

procedure TFClients.ВыбратьКлиента();
begin
  //Leon.Сообщение('Выбор клиент. Воходящий CID: ' + CID.ToString);

  With FDКлиенты do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `Клиенты`';
    Open;
    Locate('C-ID', edtCID.Value, []);
  end;

  if ShowModal = mrOk then
  begin
    edtCID.Value := FDКлиенты.FieldByName('C-ID').AsInteger;
  end
  else
  begin

  end;

 // Leon.Сообщение('Выходящий CID: ' + Result.ToString);
end;

procedure TFClients.СоздатьНовогоКлиента(Sender: TObject);
begin
  FClientEdit.НовыйКлиент();
end;

procedure TFClients.РедактироватьКлиента(Sender: TObject);
begin
  FClientEdit.Изменить();
end;

procedure TFClients.УдалитьКлиента(Sender: TObject);
begin
  FClientEdit.Удалить();
end;

end.
