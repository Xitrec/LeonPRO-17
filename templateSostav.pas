unit templateSostav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  Vcl.ExtCtrls;

type
  TfTemplate = class(TForm)
    pnl������_������: TPanel;
    btn������: TButton;
    btn���������: TButton;
    pnl��������_������: TPanel;
    pnl�������_������: TPanel;
    lbl1: TLabel;
    edt���������: TDBNumberEditEh;
    edt����: TDBNumberEditEh;
    edt���������: TDBNumberEditEh;
    pnlTop: TPanel;
    lbl_��������: TLabel;
    bvl1: TBevel;
    pnlRight: TPanel;
    pnlCenter: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTemplate: TfTemplate;

implementation

{$R *.dfm}

end.
