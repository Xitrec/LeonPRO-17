unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Tabs;

type
  TfMain = class(TForm)
    Menu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    MainPageControl: TPageControl;
    StatusBar: TStatusBar;
    tsЗаказы: TTabSheet;
    tsСтатистика: TTabSheet;
    splitter: TSplitter;
    pnlClient: TPanel;
    pnlButtom: TPanel;
    TabSet: TTabSet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    N4: TMenuItem;
    N5: TMenuItem;
    tsРасходы: TTabSheet;
    procedure N1Click(Sender: TObject);
    procedure TabSetClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

uses
  setting, server, user, newUser, order;

{$R *.dfm}

procedure TfMain.DBGridEh1DblClick(Sender: TObject);
begin
  fOrder.Открыть;
end;

procedure TfMain.N1Click(Sender: TObject);
begin
  fSetting.Открыть;
end;

procedure TfMain.N4Click(Sender: TObject);
begin
  fUser.Открыть;
end;

procedure TfMain.N5Click(Sender: TObject);
begin
  fNewUser.СоздатьНовогоПользователя;
end;

procedure TfMain.TabSetClick(Sender: TObject);
begin
  fSetting.SelectAID := TabSet.TabIndex;
end;

end.

