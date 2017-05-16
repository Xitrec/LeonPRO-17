unit newUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh;

type
  TfNewUser = class(TForm)
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    PanelДанные: TPanel;
    L_НарядЗаказ: TLabel;
    Bevel1: TBevel;
    Фамилия: TDBEditEh;
    Имя: TDBEditEh;
    Отчество: TDBEditEh;
    Почта: TDBEditEh;
    Мобильный: TDBEditEh;
    Пароль: TDBEditEh;
    PanelКартинка: TPanel;
    Image1: TImage;
    Label1: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    procedure ПроверкаДанных(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure СоздатьНовогоПользователя();
  end;

var
  fNewUser: TfNewUser;

implementation

uses
  server, user;

{$R *.dfm}

{ TfNewUser }

procedure TfNewUser.ПроверкаДанных(Sender: TObject);
begin
  if Length(Имя.Text) < 4 then
  begin
    ShowMessage('Имя не может быть короче 4 символов.');
    exit;
  end;

  if Length(Пароль.Text) < 4 then
  begin
    ShowMessage('Пароль не может быть короче 4 символов.');
    exit;
  end;

  if DBComboBoxEh1.SelText = '' then
  begin
    ShowMessage('Интерфейс не выбран.');
    exit;
  end;

  try
    if dmServer.FDQЗапросы.Modified then
      dmServer.FDQЗапросы.post;
    ModalResult := MrOk;
  except
    ShowMessage('Не корректный ввод данных. Измените вводимые данные и повторите попытку.');
  end;
end;

procedure TfNewUser.СоздатьНовогоПользователя;
begin
  if fUser.Интерфес <> 777 then
  begin
    Application.MessageBox('Данная функция не доступна.', 'Отказ в доступе',
      MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  with dmServer.FDQЗапросы do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `Менеджеры` ';
    Open;
    Append;
  end;

  if ShowModal = MrOk then
  begin
    //Leon.Сообщение('Создан новый пользователь.');
  end
  else
  begin
    beep; //FAutorization.FDМенеджер.Cancel;
  end;
end;

end.

