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
    procedure btnПодключитьБДClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FUserName: string;
    FPort: string;
    FDatabase: string;
    FPassword: string;
    FServer: string;
    FИдикацияПодключения: Boolean;
    FАвтоПодключение: Boolean;
    FSelectAID: Integer;
    FPingTime: Integer;
    procedure SetDatabase(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetPort(const Value: string);
    procedure SetServer(const Value: string);
    procedure SetUser_Name(const Value: string);
    procedure SetИдикацияПодключения(const Value: Boolean);
    procedure SetАвтоПодключение(const Value: Boolean);
    procedure SetSelectAID(const Value: Integer);
    procedure SetPingTime(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property Database: string read FDatabase write SetDatabase;
    property UserName: string read FUserName write SetUser_Name;
    property Password: string read FPassword write SetPassword;
    property Server: string read FServer write SetServer;
    property Port: string read FPort write SetPort;
    property ИндикацияПодключения: Boolean read FИдикацияПодключения write SetИдикацияПодключения;
    property АвтоПодключение: Boolean read FАвтоПодключение write SetАвтоПодключение;
    property SelectAID: Integer read FSelectAID write SetSelectAID;
    property PingTime: Integer read FPingTime write SetPingTime;
    procedure Открыть();
    procedure ЗагрузитьНастройки();
    procedure СохранитьНастройки();
  end;

var
  fSetting: TfSetting;

implementation

uses
  server, IniFiles, main;

{$R *.dfm}

{ TfNastroyki }

procedure TfSetting.btnПодключитьБДClick(Sender: TObject);
begin
  dmServer.Подключить;
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

procedure TfSetting.SetИдикацияПодключения(const Value: Boolean);
begin
  if FИдикацияПодключения <> Value then
  begin
    FИдикацияПодключения := Value;

    if Value then
      lblСостояниеСервера.Caption := 'Состояние сервера: Подключенно.'
    else
      lblСостояниеСервера.Caption := 'Состояние сервера: Отключен.';
  end;
end;

procedure TfSetting.ЗагрузитьНастройки;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'setting.ini');

  Database := Ini.ReadString('Connection', 'Database', 'q36643w1_lp2');
  Password := Ini.ReadString('Connection', 'Password', 'trv35e');
  Port := Ini.ReadString('Connection', 'Port', '3306');
  Server := Ini.ReadString('Connection', 'Server', 'q36643w1.beget.tech');
  UserName := Ini.ReadString('Connection', 'UserName', 'q36643w1_lp2');
  PingTime := Ini.ReadInteger('Connection', 'PingTime', 2500);
  АвтоПодключение := Ini.ReadBool('Connection', 'АвтоПодключение', false);

  SelectAID := Ini.ReadInteger('Interface', 'SelectAID', 1);

  Ini.Free;

end;

procedure TfSetting.Открыть;
begin
  if ShowModal = mrOk then
  begin
    Database := edtDB.Text;
    Password := edtPassword.Text;
    Port := edtProt.Text;
    Server := edtСервер.Text;
    UserName := edtUser.Text;
    PingTime := edtPingInterval.Value;
    АвтоПодключение := chkАвтоПодключениеБД.Checked;

    СохранитьНастройки;
  end
  else
  begin

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

  Ini.Free;
end;

end.

