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
    FDQЗаказы: TFDQuery;
    FDQСостав: TFDQuery;
    dsЗаказы: TDataSource;
    dsСостав: TDataSource;
    tmrPing: TTimer;
    FDQЗапросы: TFDQuery;
    dsЗапросы: TDataSource;
    FDQКлиентФИО: TFDQuery;
    wdstrngfldFDКлиентФИОФИО: TWideStringField;
    fdtncfldFDКлиентФИОCID: TFDAutoIncField;
    FDQМенеджерФИО: TFDQuery;
    wdstrngfld1: TWideStringField;
    fdtncfldFDМенеджерФИОMID: TFDAutoIncField;
    FDQСтатусы: TFDQuery;
    dsСтатусы: TDataSource;
    FDQРаботы: TFDQuery;
    procedure ИндикацияПодключения(Sender: TObject);
    procedure tmrPingTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Подключить();
    procedure ОткрытьЗаказы();
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

procedure TdmServer.ИндикацияПодключения(Sender: TObject);
begin
  fSetting.ИндикацияПодключения := Connection.Connected;
end;

procedure TdmServer.ОткрытьЗаказы();
begin
 FDQСостав.Close;
  try
    if fSetting.SelectAID > 0 then
      FDQЗаказы.Open('SELECT * FROM `Заказы` WHERE `A-ID` LIKE ' + fSetting.SelectAID.ToString)
    else
      FDQЗаказы.Open('SELECT * FROM `Заказы`');
  except
    Application.MessageBox('Не удалось открыть заказы.', 'Ошибка при открытии заказов.', MB_OK + MB_ICONWARNING);
  end;
  FDQСостав.Open();
end;

procedure TdmServer.Подключить;
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

  fUser.Идентификация;
end;

end.

