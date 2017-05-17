unit clientEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  DBCtrlsEh, System.IOUtils;

type
  TFClientEdit = class(TForm)
    Фамилия: TDBEditEh;
    Имя: TDBEditEh;
    Отчество: TDBEditEh;
    Папка: TDBEditEh;
    Почта: TDBEditEh;
    Мобильный: TDBEditEh;
    Статус: TDBEditEh;
    Компания: TDBEditEh;
    L_НарядЗаказ: TLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ПапкаEditButtons0Click(Sender: TObject; var Handled: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure Открыть();
    procedure СоздатьНовыйКаталог;
  public
    { Public declarations }
    procedure Изменить();
    procedure НовыйКлиент();
    procedure Удалить();
  end;

var
  FClientEdit: TFClientEdit;

implementation

{$R *.dfm}

uses clients, server, setting;

{ TFClientEdit }

procedure TFClientEdit.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
const
br = #10#13;
begin
  if not FClients.FDКлиенты.Modified then
  begin
    FClients.FDКлиенты.Cancel;
    CanClose := true;
    exit;
  end;

  if ModalResult = mrCancel then
  begin
    CanClose := true;
    exit;
  end;

  if Почта.Text = '' then
    if MessageDlg('Почта клиента не задана. Некоторые функции программы будут не доступны.' + br + 'Продолжить?', mtConfirmation, mbOKCancel, 0) = mrOk
    then
      CanClose := true
    else
    begin
      CanClose := false;
      exit;
    end;

  if Папка.Text = '' then
    if MessageDlg('Папка клиента не задана. Некоторые функции программы будут не доступны.' + br + 'Продолжить?', mtConfirmation, mbOKCancel, 0) = mrOk
    then
      CanClose := true
    else
    begin
      CanClose := false;
      exit;
    end;
end;

procedure TFClientEdit.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if Msg.CharCode = VK_ESCAPE then
  begin
    Close;
    Handled := true;
  end;
end;

procedure TFClientEdit.Изменить;
begin
  // Изменяем данные о клиенте.
  Открыть();
end;

procedure TFClientEdit.НовыйКлиент;
begin
  // Создаем нового клиента
  FClients.FDКлиенты.Append;
  Открыть();
end;

procedure TFClientEdit.Открыть;
begin
  // Открываем форму и ждем действия пользвателя сохраняем или отменяем внесенные данные.
  if ShowModal = mrOk then
  begin
    if FClients.FDКлиенты.Modified then
    begin
      FClients.FDКлиенты.post;
      СоздатьНовыйКаталог;
    end;
  end
  else
    FClients.FDКлиенты.Cancel;

  // Обновляем данные для корректного отображения во всех таблицах.
  dmServer.FDQКлиентФИО.Close;
  dmServer.FDQКлиентФИО.Open();
end;

procedure TFClientEdit.ПапкаEditButtons0Click(Sender: TObject; var Handled: Boolean);
var
  PathName: string;
  I       : Integer;
begin

  PathName := '';

  if (Имя.Text = '') and (Фамилия.Text = '') and (Отчество.Text = '') and (Компания.Text = '') then
    ShowMessage('Для генерации папки нужно задать ФИО или Компанию.')
  else
  begin
    if Имя.Text > '' then
      PathName := Имя.Text;

    if PathName > '' then
      PathName := PathName + ' ';

    if Фамилия.Text > '' then
      PathName := PathName + Фамилия.Text;

    if PathName > '' then
      PathName := PathName + ' ';

    if Отчество.Text > '' then
      PathName := PathName + Отчество.Text;

    if PathName > '' then
      PathName := PathName + ' ';

    if Компания.Text > '' then
      PathName := PathName + '[' + Компания.Text + ']';

    for I    := 1 to Length(PathName) do
      if not TPath.IsValidFileNameChar(PathName[I]) then
        PathName[I] := '_';

    Папка.Value := PathName;
    //Leon.Сообщение('Сгенерированна название папки: '+ PathName);
  end;
end;

procedure TFClientEdit.Удалить;
begin
  with FClients do
    with FDЗапросы do
    begin
      Close;
      SQL.Text                     := 'SELECT `Z-ID` FROM `Заказы` WHERE `C-ID` LIKE :CID';
      ParamByName('CID').AsInteger := FDКлиенты.FieldByName('C-ID').AsInteger;
      Open;
      if RecordCount = 0 then
        FDКлиенты.Delete
      else
        ShowMessage('Удаление невозможно. К клиенту прикрепленно: ' + RecordCount.ToString + ' заказ(ов)');
    end;
end;

procedure TFClientEdit.СоздатьНовыйКаталог;
begin
  // Проверяем существование каталога если его нет то пытаемся создать.
  if (not DirectoryExists(fSetting.КаталогКлиентов + '\' + Папка.Text)) then
    if CreateDir(fSetting.КаталогКлиентов + '\' + Папка.Text) then
    begin
      ShowMessage('Новый каталог создан.');
     // Leon.Сообщение('Создан новый каталог:' + Leon.PathOrderFiles + '\' + Папка.Text);
    end
    else
    begin
      ShowMessage('Создание нового каталога прошло неудачно и вызвало ошибку : ' + IntToStr(GetLastError));
      //Leon.Сообщение('Создание нового каталога прошло неудачно: ' + Leon.PathOrderFiles + '\' + Папка.Text);
    end;
end;

end.
