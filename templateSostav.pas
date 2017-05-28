unit templateSostav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh,
  Vcl.ExtCtrls;

type
  TfTemplate = class(TForm)
    pnlНижняя_Панель: TPanel;
    btnОтмена: TButton;
    btnСохранить: TButton;
    pnlОсновная_Панель: TPanel;
    pnlБоковая_Панель: TPanel;
    lbl1: TLabel;
    edtСтоимость: TDBNumberEditEh;
    edtИтог: TDBNumberEditEh;
    edtКоррекция: TDBNumberEditEh;
    pnlTop: TPanel;
    lbl_Название: TLabel;
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
