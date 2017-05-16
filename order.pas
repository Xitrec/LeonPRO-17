unit order;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBGridEh, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, DBCtrlsEh, DBLookupEh,
  Vcl.StdCtrls, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.Mask;

type
  TfOrder = class(TForm)
    pnl������_������: TPanel;
    btn������: TButton;
    btn���������: TButton;
    chk����������: TDBCheckBoxEh;
    edtAID: TDBEditEh;
    edtMID: TDBEditEh;
    edtCID: TDBEditEh;
    pnl��������_������: TPanel;
    DBGridEh3: TDBGridEh;
    pnl�������_������: TPanel;
    pnl���_������: TPanel;
    pnl����_������: TPanel;
    edt������������: TDBDateTimeEditEh;
    edt����������: TDBDateTimeEditEh;
    edt����������������: TDBDateTimeEditEh;
    pnl��������_������: TPanel;
    edt��������: TDBEditEh;
    edt������: TDBEditEh;
    edt��������: TDBEditEh;
    pnl1: TPanel;
    bvl1: TBevel;
    pnl2: TPanel;
    lblL_����������: TLabel;
    edtUpdate: TDBEditEh;
    pnl3: TPanel;
    edt�����: TDBEditEh;
    edtZID: TDBEditEh;
    pnl�������_������: TPanel;
    lbl1: TLabel;
    cbbAID: TDBLookupComboboxEh;
    edt���������: TDBNumberEditEh;
    edt�������: TDBNumberEditEh;
    edt�����: TDBNumberEditEh;
    dbmh1: TDBMemoEh;
    pm������Popup: TPopupMenu;
    N1: TMenuItem;
    Popup�������: TMenuItem;
    Popup����������: TMenuItem;
    Popup��������: TMenuItem;
    Popup��������: TMenuItem;
    Pupup�������: TMenuItem;
    FDQ�����: TFDQuery;
    intgrfldFD����������: TIntegerField;
    wdstrngfldFD�������������: TWideStringField;
    fdtncfldFD�����ZID: TFDAutoIncField;
    intgrfldFD�����CID: TIntegerField;
    intgrfldFD�����MID: TIntegerField;
    intgrfldFD�����AID: TIntegerField;
    dtfldFD�����������: TDateField;
    dtfldFD����������: TDateField;
    dtfldFD���������������: TDateField;
    blnfldFD���������������: TBooleanField;
    intgrfldFD��������������: TIntegerField;
    intgrfldFD����������: TIntegerField;
    intgrfldFD������������: TIntegerField;
    dtmfldFD�����Update: TDateTimeField;
    strngfldFD�����������: TStringField;
    strngfldFD�������������: TStringField;
    strngfldFD�����������: TStringField;
    wdmfldFD������������: TWideMemoField;
    ds_�����: TDataSource;
    FDQ������: TFDQuery;
    strngfldFD������������������: TStringField;
    wdstrngfldFD���������������: TWideStringField;
    fdtncfldFD������SID: TFDAutoIncField;
    intgrfldFD������ZID: TIntegerField;
    intgrfldFD������WID: TIntegerField;
    intgrfldFD������VID: TIntegerField;
    wdstrngfldFD��������������: TWideStringField;
    intgrfldFD����������������: TIntegerField;
    intgrfldFD���������������: TIntegerField;
    ds_������: TDataSource;
    FDQ�������: TFDQuery;
  private
    { Private declarations }
    function GetZID: Integer;
  public
    { Public declarations }
    procedure �������();
  end;

var
  fOrder: TfOrder;

implementation

uses
  server, clients;

{$R *.dfm}

{ TForm1 }

function TfOrder.GetZID: Integer;
begin
  // ������ �� ��������� Z-ID �� �������� �����.
  Result := dmServer.FDQ������.FieldByName('Z-ID').AsInteger;
end;

procedure TfOrder.�������;
begin
  with FDQ����� do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `������` WHERE `Z-ID` LIKE :ZID';
    ParamByName('ZID').AsInteger := GetZID;
    Open;

    if RecordCount = 0 then
    begin
      ShowMessage('����� �� ������.');
      exit;
    end;
  end;

  FDQ������.Close;
  FDQ������.Open();

  if ShowModal = mrOk then
  begin

  end
  else
  begin

  end;
end;

end.

