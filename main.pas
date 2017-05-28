unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Tabs, Vcl.StdCtrls, Vcl.Mask,
  DBCtrlsEh;

type
  TfMain = class(TForm)
    Menu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    MainPageControl: TPageControl;
    StatusBar: TStatusBar;
    ts������: TTabSheet;
    ts����������: TTabSheet;
    splitter: TSplitter;
    pnlClient: TPanel;
    pnlButtom: TPanel;
    TabSet: TTabSet;
    DBGridEh1: TDBGridEh;
    N4: TMenuItem;
    N5: TMenuItem;
    ts�������: TTabSheet;
    Panel2: TPanel;
    ������������: TDBEditEh;
    btn������������: TButton;
    btn��������: TButton;
    btn����������: TButton;
    btn������: TButton;
    btn�����: TButton;
    btn��������: TButton;
    pnlInfo: TPanel;
    DBGridEh2: TDBGridEh;
    splLeft: TSplitter;
    pmMail: TPopupMenu;
    N3: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    pmPrint: TPopupMenu;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure TabSetClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure ��������(Sender: TObject);
    procedure ����������(Sender: TObject);
    procedure �������(Sender: TObject);
    procedure ������������(Sender: TObject);
    procedure ��������������(Sender: TObject);
    procedure ������������(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure ������(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

uses
  setting, server, user, newUser, order, print, global;

{$R *.dfm}

procedure TfMain.��������������(Sender: TObject);
var
  pnt: TPoint;
begin
  if GetCursorPos(pnt) then
    pmMail.Popup(pnt.X, pnt.Y);
end;

procedure TfMain.����������(Sender: TObject);
begin
  fOrder.����������;
end;

procedure TfMain.������������(Sender: TObject);
begin
  // ������� ����� �������.
  fOrder.������������;
end;

procedure TfMain.������(Sender: TObject);
begin
dmPrint.������(TComponent(Sender).Tag)
end;

procedure TfMain.������������(Sender: TObject);
var
  pnt: TPoint;
begin
// ����������� ����� ������
  if GetCursorPos(pnt) then
    pmPrint.Popup(pnt.X, pnt.Y);
end;

procedure TfMain.�������(Sender: TObject);
begin
  fOrder.������������;
end;

procedure TfMain.��������(Sender: TObject);
begin
  fOrder.�������;
end;

procedure TfMain.N1Click(Sender: TObject);
begin
  fSetting.�������;
end;

procedure TfMain.N4Click(Sender: TObject);
begin
  fUser.�������;
end;

procedure TfMain.N5Click(Sender: TObject);
begin
  fNewUser.�������������������������;
end;

procedure TfMain.N7Click(Sender: TObject);
begin
// �� Tag ���������� ��� ���������: ���������� - 0, ����� - 1, ���������� - 2
  fOrder.��������������(TComponent(Sender).Tag);
end;

procedure TfMain.TabSetClick(Sender: TObject);
begin
  fSetting.SelectAID := TabSet.TabIndex;
end;

end.

