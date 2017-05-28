unit print;

interface

uses
  System.SysUtils, System.Classes, frxClass, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxDBSet;

type
  TdmPrint = class(TDataModule)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    FDPrint: TFDQuery;
    FDPrintНомер: TIntegerField;
    FDPrintНазвание: TWideStringField;
    FDPrintZID: TFDAutoIncField;
    FDPrintCID: TIntegerField;
    FDPrintMID: TIntegerField;
    FDPrintAID: TIntegerField;
    FDPrintСоздан: TDateField;
    FDPrintМакет: TDateField;
    FDPrintГотовность: TDateField;
    FDPrintБлокировка: TBooleanField;
    FDPrintСтоимость: TIntegerField;
    FDPrintАванс: TIntegerField;
    FDPrintДоплата: TIntegerField;
    FDPrintUpdate: TDateTimeField;
    FDPrintЗаметка: TWideMemoField;
    FDPrintМенеджер: TStringField;
    FDPrintКлиент: TStringField;
    FDPrint_Состав: TFDQuery;
    FDPrint_СоставНаименование: TStringField;
    FDPrint_СоставSID: TFDAutoIncField;
    FDPrint_СоставZID: TIntegerField;
    FDPrint_СоставWID: TIntegerField;
    FDPrint_СоставVID: TIntegerField;
    FDPrint_СоставОписание: TWideStringField;
    FDPrint_СоставКоличество: TIntegerField;
    FDPrint_СоставСтоимость: TIntegerField;
    FDPrint_СоставПараметры: TWideStringField;
    DSPrint: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Печать(Tag: integer);
  end;

var
  dmPrint: TdmPrint;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  server, Vcl.Dialogs, global, setting;

{$R *.dfm}

{ TdmPrint }

procedure TdmPrint.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if CompareText(VarName, 'ContactInfo') = 0 then
    Value := fSetting.АдресБланкаЗаказа;

  if CompareText(VarName, 'SummToStr') = 0 then
    Value := MoneyToString(FDPrintСтоимость.Value);
end;

procedure TdmPrint.Печать(Tag: integer);
begin
  with FDPrint do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `Заказы` WHERE `Z-ID` LIKE :ZID';
    ParamByName('ZID').AsInteger := dmServer.FDQЗаказы.FieldByName('Z-ID').AsInteger;
    Open;

    if RecordCount = 0 then
    begin
      ShowMessage('Печать невозможна - Заказ не найден');
      exit;
    end;
  end;

  FDPrint_Состав.Close;
  FDPrint_Состав.Open();

  frxReport1.Pages[1].Visible := true;
  frxReport1.Pages[2].Visible := true;

  case Tag of
    0:
      frxReport1.Pages[1].Visible := false;
    1:
      frxReport1.Pages[2].Visible := false;
  end;

///  frxReport1.Scaled := true;
  frxReport1.ShowReport;
end;

end.

