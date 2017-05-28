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
    tsЗаказы: TTabSheet;
    tsСтатистика: TTabSheet;
    splitter: TSplitter;
    pnlClient: TPanel;
    pnlButtom: TPanel;
    TabSet: TTabSet;
    DBGridEh1: TDBGridEh;
    N4: TMenuItem;
    N5: TMenuItem;
    tsРасходы: TTabSheet;
    Panel2: TPanel;
    СтрокаПоиска: TDBEditEh;
    btnУдалитьЗаказ: TButton;
    btnИзменить: TButton;
    btnНовыйЗаказ: TButton;
    btnПечать: TButton;
    btnПапка: TButton;
    btnНаписать: TButton;
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
    procedure Изменить(Sender: TObject);
    procedure НовыйЗаказ(Sender: TObject);
    procedure Удалить(Sender: TObject);
    procedure ОткрытьПапку(Sender: TObject);
    procedure НаписатьПисьмо(Sender: TObject);
    procedure ПечатьЗаказа(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Печать(Sender: TObject);
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

procedure TfMain.НаписатьПисьмо(Sender: TObject);
var
  pnt: TPoint;
begin
  if GetCursorPos(pnt) then
    pmMail.Popup(pnt.X, pnt.Y);
end;

procedure TfMain.НовыйЗаказ(Sender: TObject);
begin
  fOrder.НовыйЗаказ;
end;

procedure TfMain.ОткрытьПапку(Sender: TObject);
begin
  // Открыть папку клиента.
  fOrder.ОткрытьПапку;
end;

procedure TfMain.Печать(Sender: TObject);
begin
dmPrint.Печать(TComponent(Sender).Tag)
end;

procedure TfMain.ПечатьЗаказа(Sender: TObject);
var
  pnt: TPoint;
begin
// Распечатать бланк заказа
  if GetCursorPos(pnt) then
    pmPrint.Popup(pnt.X, pnt.Y);
end;

procedure TfMain.Удалить(Sender: TObject);
begin
  fOrder.УдалитьЗаказ;
end;

procedure TfMain.Изменить(Sender: TObject);
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

procedure TfMain.N7Click(Sender: TObject);
begin
// По Tag определяем тип сообщения: Оформление - 0, макет - 1, готовность - 2
  fOrder.НаписатьПисьмо(TComponent(Sender).Tag);
end;

procedure TfMain.TabSetClick(Sender: TObject);
begin
  fSetting.SelectAID := TabSet.TabIndex;
end;

end.

