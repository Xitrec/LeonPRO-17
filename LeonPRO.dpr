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
  clientEdit in 'clientEdit.pas' {FClientEdit},
  addAvans in 'addAvans.pas' {fAvans},
  templateSostav in 'templateSostav.pas' {fTemplate},
  polimer in 'polimer.pas' {fPolimer},
  print in 'print.pas' {dmPrint: TDataModule},
  global in 'global.pas';

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
  Application.CreateForm(TfAvans, fAvans);
  Application.CreateForm(TfTemplate, fTemplate);
  Application.CreateForm(TfPolimer, fPolimer);
  Application.CreateForm(TdmPrint, dmPrint);
  Application.Run;
end.
