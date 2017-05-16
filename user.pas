unit user;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  DBCtrlsEh, Vcl.Mask;

type
  TfUser = class(TForm)
    pnlButtom: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    pnlMain: TPanel;
    edtPassword: TDBEditEh;
    edtEmail: TDBEditEh;
    lbl1: TLabel;
    cbbRoot: TDBComboBoxEh;
    chkСохранитьПароль: TCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    FФамилия: string;
    FМобильный: string;
    FОтчество: string;
    FИнтерфес: Integer;
    FMID: Integer;
    FПароль: string;
    FИмя: string;
    FОнлайн: TDateTime;
    FПочта: string;
    FСохранитьПароль: boolean;
    procedure SetMID(const Value: Integer);
    procedure SetФамилия(const Value: string);
    procedure SetИнтерфес(const Value: Integer);
    procedure SetИмя(const Value: string);
    procedure SetМобильный(const Value: string);
    procedure SetОнлайн(const Value: TDateTime);
    procedure SetОтчество(const Value: string);
    procedure SetПароль(const Value: string);
    procedure SetПочта(const Value: string);
    procedure SetСохранитьПароль(const Value: boolean);
    { Private declarations }
  public
    { Public declarations }
    procedure Идентификация();
    procedure Открыть();
    procedure ЗагрузитьФайл();
    procedure СохранитьФайл();
    property MID: Integer read FMID write SetMID;
    property Имя: string read FИмя write SetИмя;
    property Фамилия: string read FФамилия write SetФамилия;
    property Отчество: string read FОтчество write SetОтчество;
    property Мобильный: string read FМобильный write SetМобильный;
    property Почта: string read FПочта write SetПочта;
    property Пароль: string read FПароль write SetПароль;
    property Интерфес: Integer read FИнтерфес write SetИнтерфес;
    property Онлайн: TDateTime read FОнлайн write SetОнлайн;
    property СохранитьПароль: boolean read FСохранитьПароль write SetСохранитьПароль;
  end;

var
  fUser: TfUser;

implementation

uses
  System.IniFiles, server;

{$R *.dfm}

{ TfUser }

procedure TfUser.FormCreate(Sender: TObject);
begin
  ЗагрузитьФайл;
end;

procedure TfUser.SetMID(const Value: Integer);
begin
  FMID := Value;
end;

procedure TfUser.SetИмя(const Value: string);
begin
  FИмя := Value;
end;

procedure TfUser.SetИнтерфес(const Value: Integer);
begin
  if FИнтерфес <> Value then
  begin
    FИнтерфес := Value;
    cbbRoot.Value := Value;
  end;
end;

procedure TfUser.SetМобильный(const Value: string);
begin
  FМобильный := Value;
end;

procedure TfUser.SetОнлайн(const Value: TDateTime);
begin
  FОнлайн := Value;
end;

procedure TfUser.SetОтчество(const Value: string);
begin
  FОтчество := Value;
end;

procedure TfUser.SetПароль(const Value: string);
begin
  if FПароль <> Value then
  begin
    FПароль := Value;
    edtPassword.Text := Value;
  end;
end;

procedure TfUser.SetПочта(const Value: string);
begin
  if FПочта <> Value then
  begin
    FПочта := Value;
    edtEmail.Text := Value;
  end;
end;

procedure TfUser.SetСохранитьПароль(const Value: boolean);
begin
  if FСохранитьПароль <> Value then
  begin
    FСохранитьПароль := Value;
    chkСохранитьПароль.Checked := Value;
  end;
end;

procedure TfUser.SetФамилия(const Value: string);
begin
  FФамилия := Value;
end;

procedure TfUser.ЗагрузитьФайл;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'setting.ini');

  Почта := Ini.ReadString('User', 'Почта', '');
  Пароль := Ini.ReadString('User', 'Пароль', '');
  СохранитьПароль := Ini.ReadBool('User', 'СохранитьПароль', false);
  Интерфес := Ini.ReadInteger('User', 'Интерфес', 222);

  Ini.Free;
end;

procedure TfUser.Идентификация;
begin
  if (Почта = '') or (Пароль = '') then
    if Application.MessageBox('Не заданы параметры для входа в систему.' + #13#10 + 'Хотите ввести данные сейчас?', 'Ошибка идентификации', MB_YESNO + MB_ICONINFORMATION) = IDYES then
    begin
      Открыть;
    end;

  with dmServer.FDQЗапросы do
  begin
    Close;
    while RecordCount <> 1 do
    begin
      SQL.Text := 'SELECT * FROM `Менеджеры` WHERE (`Почта` LIKE :EMail) AND (`Пароль` LIKE :Pass)';
      ParamByName('EMail').AsString := Почта;
      ParamByName('Pass').AsString := Пароль;
      Open;
      if RecordCount = 1 then
      begin
        MID := FieldByName('M-ID').AsInteger;
        Имя := FieldByName('Имя').AsString;
        Фамилия := FieldByName('Фамилия').AsString;
        Отчество := FieldByName('Отчество').AsString;
        Мобильный := FieldByName('Мобильный').AsString;
        Почта := FieldByName('Почта').AsString;
//    Пароль := FieldByName('Пароль').AsString;
        Интерфес := FieldByName('Права').AsInteger;
        Онлайн := Now;
      end
      else
      begin
        if Application.MessageBox('Пользователь не найден в системе.' + #13#10 + 'Хотите ввести данные повторно?', 'Ошибка идентификации', MB_YESNO + MB_ICONINFORMATION) = IDYES then
        begin
          Открыть;
        end
        else
          ExitProcess(0);
      end;
    end;
  end;
end;

procedure TfUser.Открыть;
begin
  if ShowModal = mrOk then
  begin
    Почта := edtEmail.Text;
    Пароль := edtPassword.Text;
    СохранитьПароль := chkСохранитьПароль.Checked;
    Интерфес := cbbRoot.Value;

    СохранитьФайл;
    Идентификация;
  end
  else
  begin

  end;
end;

procedure TfUser.СохранитьФайл;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'setting.ini');

  Ini.WriteString('User', 'Почта', Почта);

  if СохранитьПароль then
    Ini.WriteString('User', 'Пароль', Пароль)
  else
    Ini.WriteString('User', 'Пароль', '');

  Ini.WriteBool('User', 'СохранитьПароль', СохранитьПароль);
  Ini.WriteInteger('User', 'Интерфес', Интерфес);

  Ini.Free;
end;

end.

