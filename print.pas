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
    FDPrint�����: TIntegerField;
    FDPrint��������: TWideStringField;
    FDPrintZID: TFDAutoIncField;
    FDPrintCID: TIntegerField;
    FDPrintMID: TIntegerField;
    FDPrintAID: TIntegerField;
    FDPrint������: TDateField;
    FDPrint�����: TDateField;
    FDPrint����������: TDateField;
    FDPrint����������: TBooleanField;
    FDPrint���������: TIntegerField;
    FDPrint�����: TIntegerField;
    FDPrint�������: TIntegerField;
    FDPrintUpdate: TDateTimeField;
    FDPrint�������: TWideMemoField;
    FDPrint��������: TStringField;
    FDPrint������: TStringField;
    FDPrint_������: TFDQuery;
    FDPrint_������������������: TStringField;
    FDPrint_������SID: TFDAutoIncField;
    FDPrint_������ZID: TIntegerField;
    FDPrint_������WID: TIntegerField;
    FDPrint_������VID: TIntegerField;
    FDPrint_��������������: TWideStringField;
    FDPrint_����������������: TIntegerField;
    FDPrint_���������������: TIntegerField;
    FDPrint_���������������: TWideStringField;
    DSPrint: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ������(Tag: integer);
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
    Value := fSetting.�����������������;

  if CompareText(VarName, 'SummToStr') = 0 then
    Value := MoneyToString(FDPrint���������.Value);
end;

procedure TdmPrint.������(Tag: integer);
begin
  with FDPrint do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `������` WHERE `Z-ID` LIKE :ZID';
    ParamByName('ZID').AsInteger := dmServer.FDQ������.FieldByName('Z-ID').AsInteger;
    Open;

    if RecordCount = 0 then
    begin
      ShowMessage('������ ���������� - ����� �� ������');
      exit;
    end;
  end;

  FDPrint_������.Close;
  FDPrint_������.Open();

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

