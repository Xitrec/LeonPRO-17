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
    ������: TTabSheet;
    �������������: TTabSheet;
    edt������: TDBEditEh;
    edtDB: TDBEditEh;
    edtUser: TDBEditEh;
    edtPassword: TDBEditEh;
    edtProt: TDBEditEh;
    lbl1: TLabel;
    ������������: TPanel;
    btn������������: TButton;
    lbl����������������: TLabel;
    chk�����������������: TCheckBox;
    edtPingInterval: TDBNumberEditEh;
    edt�������������: TDBEditEh;
    lbl2: TLabel;
    ���������: TTabSheet;
    grp1: TGroupBox;
    grp2: TGroupBox;
    grp3: TGroupBox;
    edt��������������: TDBEditEh;
    edt���������: TDBEditEh;
    edt���������: TDBEditEh;
    memo����������: TDBMemoEh;
    memo�����: TDBMemoEh;
    memo�����: TDBMemoEh;
    lbl3: TLabel;
    chk���������������������: TCheckBox;
    �����: TTabSheet;
    lbl4: TLabel;
    memo�����������: TDBMemoEh;
    procedure btn������������Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edt�������������EditButtons0Click(Sender: TObject; var Handled: Boolean);
  private
    FUserName: string;
    FPort: string;
    FDatabase: string;
    FPassword: string;
    FServer: string;
    F��������������������: Boolean;
    F���������������: Boolean;
    FSelectAID: Integer;
    FPingTime: Integer;
    F���������������: string;
    F��������������: string;
    F���������: string;
    F���������: string;
    F���������: string;
    F��������������: string;
    F���������: string;
    F���������������������: Boolean;
    F�����������������: string;
    procedure SetDatabase(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetPort(const Value: string);
    procedure SetServer(const Value: string);
    procedure SetUser_Name(const Value: string);
    procedure Set��������������������(const Value: Boolean);
    procedure Set���������������(const Value: Boolean);
    procedure SetSelectAID(const Value: Integer);
    procedure SetPingTime(const Value: Integer);
    procedure Set���������������(const Value: string);
    procedure Set��������������(const Value: string);
    procedure Set���������(const Value: string);
    procedure Set���������(const Value: string);
    procedure Set���������(const Value: string);
    procedure Set���������(const Value: string);
    procedure Set��������������(const Value: string);
    procedure Set���������������������(const Value: Boolean);
    { Private declarations }
    function �������������(��������: string): string;
    procedure �������������(��������: string; Value: string);
    procedure Set�����������������(const Value: string);
  public
    { Public declarations }
    property ���������������������: Boolean read F��������������������� write Set���������������������;
    property ��������������: string read F�������������� write Set��������������;
    property ���������: string read F��������� write Set���������;
    property ���������: string read F��������� write Set���������;
    property ���������: string read F��������� write Set���������;
    property ���������: string read F��������� write Set���������;
    property ��������������: string read F�������������� write Set��������������;
    property ���������������: string read F��������������� write Set���������������;
    property Database: string read FDatabase write SetDatabase;
    property UserName: string read FUserName write SetUser_Name;
    property Password: string read FPassword write SetPassword;
    property Server: string read FServer write SetServer;
    property Port: string read FPort write SetPort;
    property ��������������������: Boolean read F�������������������� write Set��������������������;
    property ���������������: Boolean read F��������������� write Set���������������;
    property SelectAID: Integer read FSelectAID write SetSelectAID;
    property PingTime: Integer read FPingTime write SetPingTime;
    property �����������������: string read F����������������� write Set�����������������;
    procedure �������();
    procedure ������������������();
    procedure ������������������();
  end;

var
  fSetting: TfSetting;

implementation

uses
  server, IniFiles, main, FileCtrl;

{$R *.dfm}

{ TfNastroyki }

procedure TfSetting.btn������������Click(Sender: TObject);
begin
  dmServer.����������;
end;

procedure TfSetting.edt�������������EditButtons0Click(Sender: TObject; var Handled: Boolean);
var
  chosenDirectory: string;
begin
  if SelectDirectory('�������� �������', '', chosenDirectory) then
    ��������������� := chosenDirectory;
end;

procedure TfSetting.FormCreate(Sender: TObject);
begin
  ������������������;
end;

procedure TfSetting.FormDestroy(Sender: TObject);
begin
  ������������������;
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
  if (FSelectAID <> Value) or (not dmServer.FDQ������.Active) then
  begin
    FSelectAID := Value;
    fMain.TabSet.TabIndex := Value;
    dmServer.�������������;
  end;
end;

procedure TfSetting.SetServer(const Value: string);
begin
  if FServer <> Value then
  begin
    FServer := Value;
    edt������.Text := FServer;
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

procedure TfSetting.Set���������������(const Value: Boolean);
begin
  if F��������������� <> Value then
  begin
    F��������������� := Value;
    chk�����������������.Checked := Value;
    if Value then
      dmServer.����������;
  end;
end;

procedure TfSetting.Set�����������������(const Value: string);
begin
  if F����������������� <> Value then
  begin
    F����������������� := Value;
    memo�����������.Text := Value;
  end;
end;

procedure TfSetting.Set��������������������(const Value: Boolean);
begin
  if F�������������������� <> Value then
  begin
    F�������������������� := Value;

    if Value then
      lbl����������������.Caption := '��������� �������: �����������.'
    else
      lbl����������������.Caption := '��������� �������: ��������.';
  end;
end;

procedure TfSetting.Set���������������(const Value: string);
begin
  if F��������������� <> Value then
  begin
    F��������������� := Value;
    edt�������������.Text := Value;
  end;
end;

procedure TfSetting.Set���������������������(const Value: Boolean);
begin
  if F��������������������� <> Value then
  begin
    F��������������������� := Value;
    chk���������������������.Checked := Value;
  end;
end;

procedure TfSetting.Set���������(const Value: string);
begin
  if F��������� <> Value then
  begin
    F��������� := Value;
    memo�����.Text := Value;
  end;
end;

procedure TfSetting.Set���������(const Value: string);
begin
  if F��������� <> Value then
  begin
    F��������� := Value;
    memo�����.Text := Value;
  end;
end;

procedure TfSetting.Set��������������(const Value: string);
begin
  if F�������������� <> Value then
  begin
    F�������������� := Value;
    memo����������.Text := Value;
  end;
end;

procedure TfSetting.Set���������(const Value: string);
begin
  if F��������� <> Value then
  begin
    F��������� := Value;
    edt���������.Text := Value;
  end;
end;

procedure TfSetting.Set���������(const Value: string);
begin
  if F��������� <> Value then
  begin
    F��������� := Value;
    edt���������.text := Value;
  end;
end;

procedure TfSetting.Set��������������(const Value: string);
begin
  if F�������������� <> Value then
  begin
    F�������������� := Value;
    edt��������������.Text := Value;
  end;
end;

procedure TfSetting.������������������;
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
  ��������������� := Ini.ReadBool('Connection', '���������������', false);

  SelectAID := Ini.ReadInteger('Interface', 'SelectAID', 1);
  //------------------------------------------------
  ��������������� := Ini.ReadString('Path', '���������������', '');
  //------------------------------------------------
  �������������� := Ini.ReadString('Mail', '��������������', '����� ��������.');
  ��������� := Ini.ReadString('Mail', '���������', '����� �� �����������.');
  ��������� := Ini.ReadString('Mail', '���������', '��� ����� �����.');

  ��������� := �������������('MailMaket.ini');
  ��������� := �������������('MailReady.ini');
  �������������� := �������������('MailOformlenie.ini');

  ��������������������� := Ini.ReadBool('Mail', '���������������������', true);
  //------------------------------------------------
  ����������������� := �������������('ContactInfo.ini');
  //------------------------------------------------
  Ini.Free;

end;

function TfSetting.�������������(��������: string): string;
var
  ReadFileStrList: TStringList;
begin
  try
    ReadFileStrList := TStringList.Create;
    if FileExists(ExtractFilePath(ParamStr(0)) + ��������) then
    begin
      ReadFileStrList.LoadFromFile(ExtractFilePath(ParamStr(0)) + ��������);
      Result := ReadFileStrList.Text;
    end
    else
      ShowMessage('���� ��������� ��������� ' + �������� + ' - �� ������.');
  finally
    ReadFileStrList.Free;
  end;
end;

procedure TfSetting.�������;
begin
  if ShowModal = mrOk then
  begin
    // ������� ������
    Database := edtDB.Text;
    Password := edtPassword.Text;
    Port := edtProt.Text;
    Server := edt������.Text;
    UserName := edtUser.Text;
    PingTime := edtPingInterval.Value;
    ��������������� := chk�����������������.Checked;

    // ������� ���� � ������
    ��������������� := edt�������������.Text;

    // ������� ���������
    �������������� := edt��������������.Text;
    ��������� := edt���������.Text;
    ��������� := edt���������.Text;
    �������������� := memo����������.Text;
    ��������� := memo�����.Text;
    ��������� := memo�����.Text;
    ��������������������� := chk���������������������.Checked;

    // ������� ����� �����
    ����������������� := memo�����������.Text;

    ������������������;
  end
  else
  begin
    // ������� ������
    edtDB.Text := Database;
    edtPassword.Text := Password;
    edtProt.Text := Port;
    edt������.Text := Server;
    edtUser.Text := UserName;
    edtPingInterval.Value := PingTime;
    chk�����������������.Checked := ���������������;

    // ������� ���� � ������
    edt�������������.Text := ���������������;

    // ������� ���������
    edt��������������.Text := ��������������;
    edt���������.Text := ���������;
    edt���������.Text := ���������;
    memo����������.Text := ��������������;
    memo�����.Text := ���������;
    memo�����.Text := ���������;
    chk���������������������.Checked := ���������������������;

    // ������� ����� �����
    memo�����������.Text := �����������������;
  end;
end;

procedure TfSetting.������������������;
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
  Ini.WriteBool('Connection', '���������������', ���������������);

  Ini.WriteInteger('Interface', 'SelectAID', SelectAID);

  Ini.WriteString('Path', '���������������', ���������������);

  Ini.WriteString('Mail', '��������������', ��������������);
  Ini.WriteString('Mail', '���������', ���������);
  Ini.WriteString('Mail', '���������', ���������);

  �������������('MailMaket.ini', ���������);
  �������������('MailReady.ini', ���������);
  �������������('MailOformlenie.ini', ��������������);

  Ini.WriteBool('Mail', '���������������������', ���������������������);


  �������������('ContactInfo.ini', �����������������);

  Ini.Free;
end;

procedure TfSetting.�������������(��������, Value: string);
var
  ReadFileStrList: TStringList;
begin
  try
    ReadFileStrList := TStringList.Create;
    ReadFileStrList.Text := Value;
    ReadFileStrList.SaveToFile(ExtractFilePath(ParamStr(0)) + ��������);
  finally
    ReadFileStrList.Free;
  end;
end;

end.

