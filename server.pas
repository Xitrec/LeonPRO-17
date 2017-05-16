unit server;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL, FireDAC.Comp.UI,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Winapi.Windows, Vcl.ExtCtrls;

type
  TdmServer = class(TDataModule)
    Connection: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDQ������: TFDQuery;
    FDQ������: TFDQuery;
    ds������: TDataSource;
    ds������: TDataSource;
    tmrPing: TTimer;
    FDQ�������: TFDQuery;
    ds�������: TDataSource;
    FDQ���������: TFDQuery;
    wdstrngfldFD������������: TWideStringField;
    fdtncfldFD���������CID: TFDAutoIncField;
    FDQ�����������: TFDQuery;
    wdstrngfld1: TWideStringField;
    fdtncfldFD�����������MID: TFDAutoIncField;
    FDQ�������: TFDQuery;
    ds�������: TDataSource;
    FDQ������: TFDQuery;
    procedure ��������������������(Sender: TObject);
    procedure tmrPingTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ����������();
    procedure �������������();
  end;

var
  dmServer: TdmServer;

implementation

uses
  setting, Vcl.Forms, main, user;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmServer }


procedure TdmServer.tmrPingTimer(Sender: TObject);
begin
Connection.Ping;
end;

procedure TdmServer.��������������������(Sender: TObject);
begin
  fSetting.�������������������� := Connection.Connected;
end;

procedure TdmServer.�������������();
begin
 FDQ������.Close;
  try
    if fSetting.SelectAID > 0 then
      FDQ������.Open('SELECT * FROM `������` WHERE `A-ID` LIKE ' + fSetting.SelectAID.ToString)
    else
      FDQ������.Open('SELECT * FROM `������`');
  except
    Application.MessageBox('�� ������� ������� ������.', '������ ��� �������� �������.', MB_OK + MB_ICONWARNING);
  end;
  FDQ������.Open();
end;

procedure TdmServer.����������;
begin
  with Connection do
  begin
    Close;
    // create temporary connection definition
    with Params do
    begin
      Clear;
      Add('DriverID=MySQL');
      Add('CharacterSet=utf8');
      Add('Server=' + fSetting.Server);
      Add('Port=' + fSetting.Port);
      Add('Database=' + fSetting.Database);
      Add('User_Name=' + fSetting.UserName);
      Add('Password=' + fSetting.Password);
    end;
    Open;
  end;

  fUser.�������������;
end;

end.

