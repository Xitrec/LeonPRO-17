program LeonPRO;

uses
  Vcl.Forms,
  main in 'main.pas' {fMain},
  setting in 'setting.pas' {fSetting},
  server in 'server.pas' {dmServer: TDataModule},
  user in 'user.pas' {fUser},
  newUser in 'newUser.pas' {fNewUser},
  order in 'order.pas' {fOrder},
  clients in 'clients.pas' {FClients},
  clientEdit in 'clientEdit.pas' {FClientEdit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TdmServer, dmServer);
  Application.CreateForm(TfUser, fUser);
  Application.CreateForm(TfSetting, fSetting);
  Application.CreateForm(TfNewUser, fNewUser);
  Application.CreateForm(TfOrder, fOrder);
  Application.CreateForm(TFClients, FClients);
  Application.CreateForm(TFClientEdit, FClientEdit);
  Application.Run;
end.
