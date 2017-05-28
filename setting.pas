unit setting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Mask, DBCtrlsEh;

type
  TfSetting = class(TForm)
    pnlButtom: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    Pages: TPageControl;
    Сервер: TTabSheet;
    Дополнительно: TTabSheet;
    edtСервер: TDBEditEh;
    edtDB: TDBEditEh;
    edtUser: TDBEditEh;
    edtPassword: TDBEditEh;
    edtProt: TDBEditEh;
    lbl1: TLabel;
    панельСервер: TPanel;
    btnПодключитьБД: TButton;
    lblСостояниеСервера: TLabel;
    chkАвтоПодключениеБД: TCheckBox;
    edtPingInterval: TDBNumberEditEh;
    edtПапкаКлиентов: TDBEditEh;
    lbl2: TLabel;
    Сообщения: TTabSheet;
    grp1: TGroupBox;
    grp2: TGroupBox;
    grp3: TGroupBox;
    edtТемаОформление: TDBEditEh;
    edtТемаМакет: TDBEditEh;
    edtТемаГотов: TDBEditEh;
    memoОформление: TDBMemoEh;
    memoМакет: TDBMemoEh;
    memoГотов: TDBMemoEh;
    lbl3: TLabel;
    chkОткрыватьПапкуКлиента: TCheckBox;
    Бланк: TTabSheet;
    lbl4: TLabel;
    memoБланкЗаказа: TDBMemoEh;
    procedure btnПодключитьБДClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtПапкаКлиентовEditButtons0Click(Sender: TObject; var Handled: Boolean);
  private
    FUserName: string;
    FPort: string;
    FDatabase: string;
    FPassword: string;
    FServer: string;
    FИндикацияПодключения: Boolean;
    FАвтоПодключение: Boolean;
    FSelectAID: Integer;
    FPingTime: Integer;
    FКаталогКлиентов: string;
    FТемаОформление: string;
    FТемаМакет: string;
    FТемаГотов: string;
    FТелоМакет: string;
    FТелоОформление: string;
    FТелоГотов: string;
    FОткрыватьПапкуКлиента: Boolean;
    FАдресБланкаЗаказа: string;
    procedure SetDatabase(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetPort(const Value: string);
    procedure SetServer(const Value: string);
    procedure SetUser_Name(const Value: string);
    procedure SetИндикацияПодключения(const Value: Boolean);
    procedure SetАвтоПодключение(const Value: Boolean);
    procedure SetSelectAID(const Value: Integer);
    procedure SetPingTime(const Value: Integer);
    procedure SetКаталогКлиентов(const Value: string);
    procedure SetТемаОформление(const Value: string);
    procedure SetТемаМакет(const Value: string);
    procedure SetТемаГотов(const Value: string);
    procedure SetТелоГотов(const Value: string);
    procedure SetТелоМакет(const Value: string);
    procedure SetТелоОформление(const Value: string);
    procedure SetОткрыватьПапкуКлиента(const Value: Boolean);
    { Private declarations }
    function ЗагрузитьФайл(ИмяФайла: string): string;
    procedure СохранитьФайл(ИмяФайла: string; Value: string);
    procedure SetАдресБланкаЗаказа(const Value: string);
  public
    { Public declarations }
    property ОткрыватьПапкуКлиента: Boolean read FОткрыватьПапкуКлиента write SetОткрыватьПапкуКлиента;
    property ТелоОформление: string read FТелоОформление write SetТелоОформление;
    property ТелоМакет: string read FТелоМакет write SetТелоМакет;
    property ТелоГотов: string read FТелоГотов write SetТелоГотов;
    property ТемаГотов: string read FТемаГотов write SetТемаГотов;
    property ТемаМакет: string read FТемаМакет write SetТемаМакет;
    property ТемаОформление: string read FТемаОформление write SetТемаОформление;
    property КаталогКлиентов: string read FКаталогКлиентов write SetКаталогКлиентов;
    property Database: string read FDatabase write SetDatabase;
    property UserName: string read FUserName write SetUser_Name;
    property Password: string read FPassword write SetPassword;
    property Server: string read FServer write SetServer;
    property Port: string read FPort write SetPort;
    property ИндикацияПодключения: Boolean read FИндикацияПодключения write SetИндикацияПодключения;
    property АвтоПодключение: Boolean read FАвтоПодключение write SetАвтоПодключение;
    property SelectAID: Integer read FSelectAID write SetSelectAID;
    property PingTime: Integer read FPingTime write SetPingTime;
    property АдресБланкаЗаказа: string read FАдресБланкаЗаказа write SetАдресБланкаЗаказа;
    procedure Открыть();
    procedure ЗагрузитьНастройки();
    procedure СохранитьНастройки();
  end;

var
  fSetting: TfSetting;

implementation

uses
  server, IniFiles, main, FileCtrl;

{$R *.dfm}

{ TfNastroyki }

procedure TfSetting.btnПодключитьБДClick(Sender: TObject);
begin
  dmServer.Подключить;
end;

procedure TfSetting.edtПапкаКлиентовEditButtons0Click(Sender: TObject; var Handled: Boolean);
var
  chosenDirectory: string;
begin
  if SelectDirectory('Выберите каталог', '', chosenDirectory) then
    КаталогКлиентов := chosenDirectory;
end;

procedure TfSetting.FormCreate(Sender: TObject);
begin
  ЗагрузитьНастройки;
end;

procedure TfSetting.FormDestroy(Sender: TObject);
begin
  СохранитьНастройки;
end;

procedure TfSetting.SetDatabase(const Value: string);
begin
  if FDatabase <> Value then
  begin
    FDatabase := Value;
    edtDB.Text := FDatabase;
  end;
end;

procedure TfSetting.SetPassword(const Value: string);
begin
  if FPassword <> Value then
  begin
    FPassword := Value;
    edtPassword.Text := FPassword;
  end;
end;

procedure TfSetting.SetPingTime(const Value: Integer);
begin
  if FPingTime <> Value then
  begin
    FPingTime := Value;
    edtPingInterval.Value := Value;
    dmServer.tmrPing.Interval := Value;

    if Value > 0 then
      dmServer.tmrPing.Enabled := True
    else
      dmServer.tmrPing.Enabled := False;
  end;
end;

procedure TfSetting.SetPort(const Value: string);
begin
  if FPort <> Value then
  begin
    FPort := Value;
    edtProt.Text := FPort;
  end;
end;

procedure TfSetting.SetSelectAID(const Value: Integer);
begin
  if (FSelectAID <> Value) or (not dmServer.FDQЗаказы.Active) then
  begin
    FSelectAID := Value;
    fMain.TabSet.TabIndex := Value;
    dmServer.ОткрытьЗаказы;
  end;
end;

procedure TfSetting.SetServer(const Value: string);
begin
  if FServer <> Value then
  begin
    FServer := Value;
    edtСервер.Text := FServer;
  end;
end;

procedure TfSetting.SetUser_Name(const Value: string);
begin
  if FUserName <> Value then
  begin
    FUserName := Value;
    edtUser.Text := FUserName;
  end;
end;

procedure TfSetting.SetАвтоПодключение(const Value: Boolean);
begin
  if FАвтоПодключение <> Value then
  begin
    FАвтоПодключение := Value;
    chkАвтоПодключениеБД.Checked := Value;
    if Value then
      dmServer.Подключить;
  end;
end;

procedure TfSetting.SetАдресБланкаЗаказа(const Value: string);
begin
  if FАдресБланкаЗаказа <> Value then
  begin
    FАдресБланкаЗаказа := Value;
    memoБланкЗаказа.Text := Value;
  end;
end;

procedure TfSetting.SetИндикацияПодключения(const Value: Boolean);
begin
  if FИндикацияПодключения <> Value then
  begin
    FИндикацияПодключения := Value;

    if Value then
      lblСостояниеСервера.Caption := 'Состояние сервера: Подключенно.'
    else
      lblСостояниеСервера.Caption := 'Состояние сервера: Отключен.';
  end;
end;

procedure TfSetting.SetКаталогКлиентов(const Value: string);
begin
  if FКаталогКлиентов <> Value then
  begin
    FКаталогКлиентов := Value;
    edtПапкаКлиентов.Text := Value;
  end;
end;

procedure TfSetting.SetОткрыватьПапкуКлиента(const Value: Boolean);
begin
  if FОткрыватьПапкуКлиента <> Value then
  begin
    FОткрыватьПапкуКлиента := Value;
    chkОткрыватьПапкуКлиента.Checked := Value;
  end;
end;

procedure TfSetting.SetТелоГотов(const Value: string);
begin
  if FТелоГотов <> Value then
  begin
    FТелоГотов := Value;
    memoГотов.Text := Value;
  end;
end;

procedure TfSetting.SetТелоМакет(const Value: string);
begin
  if FТелоМакет <> Value then
  begin
    FТелоМакет := Value;
    memoМакет.Text := Value;
  end;
end;

procedure TfSetting.SetТелоОформление(const Value: string);
begin
  if FТелоОформление <> Value then
  begin
    FТелоОформление := Value;
    memoОформление.Text := Value;
  end;
end;

procedure TfSetting.SetТемаГотов(const Value: string);
begin
  if FТемаГотов <> Value then
  begin
    FТемаГотов := Value;
    edtТемаГотов.Text := Value;
  end;
end;

procedure TfSetting.SetТемаМакет(const Value: string);
begin
  if FТемаМакет <> Value then
  begin
    FТемаМакет := Value;
    edtТемаМакет.text := Value;
  end;
end;

procedure TfSetting.SetТемаОформление(const Value: string);
begin
  if FТемаОформление <> Value then
  begin
    FТемаОформление := Value;
    edtТемаОформление.Text := Value;
  end;
end;

procedure TfSetting.ЗагрузитьНастройки;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'setting.ini');
  //-----------------------------------------------
  Database := Ini.ReadString('Connection', 'Database', 'q36643w1_lp2');
  Password := Ini.ReadString('Connection', 'Password', 'trv35e');
  Port := Ini.ReadString('Connection', 'Port', '3306');
  Server := Ini.ReadString('Connection', 'Server', 'q36643w1.beget.tech');
  UserName := Ini.ReadString('Connection', 'UserName', 'q36643w1_lp2');
  PingTime := Ini.ReadInteger('Connection', 'PingTime', 2500);
  АвтоПодключение := Ini.ReadBool('Connection', 'АвтоПодключение', false);

  SelectAID := Ini.ReadInteger('Interface', 'SelectAID', 1);
  //------------------------------------------------
  КаталогКлиентов := Ini.ReadString('Path', 'КаталогКлиентов', '');
  //------------------------------------------------
  ТемаОформление := Ini.ReadString('Mail', 'ТемаОформление', 'Заказ оформлен.');
  ТемаМакет := Ini.ReadString('Mail', 'ТемаМакет', 'Макет на утверждение.');
  ТемаГотов := Ini.ReadString('Mail', 'ТемаГотов', 'Ваш заказ готов.');

  ТелоМакет := ЗагрузитьФайл('MailMaket.ini');
  ТелоГотов := ЗагрузитьФайл('MailReady.ini');
  ТелоОформление := ЗагрузитьФайл('MailOformlenie.ini');

  ОткрыватьПапкуКлиента := Ini.ReadBool('Mail', 'ОткрыватьПапкуКлиента', true);
  //------------------------------------------------
  АдресБланкаЗаказа := ЗагрузитьФайл('ContactInfo.ini');
  //------------------------------------------------
  Ini.Free;

end;

function TfSetting.ЗагрузитьФайл(ИмяФайла: string): string;
var
  ReadFileStrList: TStringList;
begin
  try
    ReadFileStrList := TStringList.Create;
    if FileExists(ExtractFilePath(ParamStr(0)) + ИмяФайла) then
    begin
      ReadFileStrList.LoadFromFile(ExtractFilePath(ParamStr(0)) + ИмяФайла);
      Result := ReadFileStrList.Text;
    end
    else
      ShowMessage('Файл настройки программы ' + ИмяФайла + ' - не найден.');
  finally
    ReadFileStrList.Free;
  end;
end;

procedure TfSetting.Открыть;
begin
  if ShowModal = mrOk then
  begin
    // Вкладка СЕРВЕР
    Database := edtDB.Text;
    Password := edtPassword.Text;
    Port := edtProt.Text;
    Server := edtСервер.Text;
    UserName := edtUser.Text;
    PingTime := edtPingInterval.Value;
    АвтоПодключение := chkАвтоПодключениеБД.Checked;

    // Вкладка ПУТЬ К ПАПКАМ
    КаталогКлиентов := edtПапкаКлиентов.Text;

    // Вкладка СООБЩЕНИЯ
    ТемаОформление := edtТемаОформление.Text;
    ТемаМакет := edtТемаМакет.Text;
    ТемаГотов := edtТемаГотов.Text;
    ТелоОформление := memoОформление.Text;
    ТелоМакет := memoМакет.Text;
    ТелоГотов := memoГотов.Text;
    ОткрыватьПапкуКлиента := chkОткрыватьПапкуКлиента.Checked;

    // Вкладка Бланк заказ
    АдресБланкаЗаказа := memoБланкЗаказа.Text;

    СохранитьНастройки;
  end
  else
  begin
    // Вкладка СЕРВЕР
    edtDB.Text := Database;
    edtPassword.Text := Password;
    edtProt.Text := Port;
    edtСервер.Text := Server;
    edtUser.Text := UserName;
    edtPingInterval.Value := PingTime;
    chkАвтоПодключениеБД.Checked := АвтоПодключение;

    // Вкладка ПУТЬ К ПАПКАМ
    edtПапкаКлиентов.Text := КаталогКлиентов;

    // Вкладка СООБЩЕНИЯ
    edtТемаОформление.Text := ТемаОформление;
    edtТемаМакет.Text := ТемаМакет;
    edtТемаГотов.Text := ТемаГотов;
    memoОформление.Text := ТелоОформление;
    memoМакет.Text := ТелоМакет;
    memoГотов.Text := ТелоГотов;
    chkОткрыватьПапкуКлиента.Checked := ОткрыватьПапкуКлиента;

    // Вкладка Бланк заказ
    memoБланкЗаказа.Text := АдресБланкаЗаказа;
  end;
end;

procedure TfSetting.СохранитьНастройки;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'setting.ini');

  Ini.WriteString('Connection', 'Database', Database);
  Ini.WriteString('Connection', 'Password', Password);
  Ini.WriteString('Connection', 'Port', Port);
  Ini.WriteString('Connection', 'Server', Server);
  Ini.WriteString('Connection', 'UserName', UserName);
  Ini.WriteInteger('Connection', 'PingTime', PingTime);
  Ini.WriteBool('Connection', 'АвтоПодключение', АвтоПодключение);

  Ini.WriteInteger('Interface', 'SelectAID', SelectAID);

  Ini.WriteString('Path', 'КаталогКлиентов', КаталогКлиентов);

  Ini.WriteString('Mail', 'ТемаОформление', ТемаОформление);
  Ini.WriteString('Mail', 'ТемаМакет', ТемаМакет);
  Ini.WriteString('Mail', 'ТемаГотов', ТемаГотов);

  СохранитьФайл('MailMaket.ini', ТелоМакет);
  СохранитьФайл('MailReady.ini', ТелоГотов);
  СохранитьФайл('MailOformlenie.ini', ТелоОформление);

  Ini.WriteBool('Mail', 'ОткрыватьПапкуКлиента', ОткрыватьПапкуКлиента);


  СохранитьФайл('ContactInfo.ini', АдресБланкаЗаказа);

  Ini.Free;
end;

procedure TfSetting.СохранитьФайл(ИмяФайла, Value: string);
var
  ReadFileStrList: TStringList;
begin
  try
    ReadFileStrList := TStringList.Create;
    ReadFileStrList.Text := Value;
    ReadFileStrList.SaveToFile(ExtractFilePath(ParamStr(0)) + ИмяФайла);
  finally
    ReadFileStrList.Free;
  end;
end;

end.

