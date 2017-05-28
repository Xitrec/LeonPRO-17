unit polimer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, templateSostav, Vcl.StdCtrls,
  Vcl.Mask, DBCtrlsEh, Vcl.ExtCtrls, DBGridEh, DBLookupEh, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfPolimer = class(TfTemplate)
    �����: TDBLookupComboboxEh;
    ��������: TDBLookupComboboxEh;
    edt�����: TDBEditEh;
    edt����������: TDBNumberEditEh;
    lbl2: TLabel;
    lbl3: TLabel;
    FDQ��������: TFDQuery;
    ds_��������: TDataSource;
    ds_�����: TDataSource;
    FDQ�����: TFDQuery;
    FDQ�������: TFDQuery;
    ds_�������: TDataSource;
    edtWID: TDBEditEh;
    FDQ�������WID: TFDAutoIncField;
    FDQ���������������: TIntegerField;
    FDQ������������: TIntegerField;
    FDQ������������: TWideStringField;
    FDQ�����������������: TIntegerField;
    FDQ����������������: TIntegerField;
    FDQ����������������: TIntegerField;
    FDQ�����������: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure ������(Sender: TObject);
    procedure edt����Click(Sender: TObject);
  private
    function Get����_�����: integer;
    function Get����_��������: integer;
    { Private declarations }
    property ����_��������: integer read Get����_��������;
    property ����_�����: integer read Get����_�����;
    procedure �������();
  public
    { Public declarations }
    procedure ��������();
    procedure ��������(aWID: integer);
    procedure �������(aWID: integer);
  end;

var
  fPolimer: TfPolimer;

implementation

uses
  server, order;

{$R *.dfm}

{ TfPolimer }

procedure TfPolimer.edt����Click(Sender: TObject);
var
  Value: integer;
begin
  inherited;
  if TryStrToInt(InputBox('�������� ��������', '������� ����� ��������� [���]:', edt����.value), Value) then
    edt���������.Value := Value - edt���������.Value
  else
    showMessage('������������ ���� ������.');
end;

procedure TfPolimer.FormShow(Sender: TObject);
begin
  inherited;
  with FDQ����� do
  begin
    DisableControls;
    Close;
    SQL.Text := 'SELECT * FROM `�����`';
    Open;
    EnableControls;
  end;

  with FDQ�������� do
  begin
    DisableControls;
    Close;
    SQL.Text := 'SELECT * FROM `��������`';
    Open;
    EnableControls;
  end;
end;

function TfPolimer.Get����_�����: integer;
begin
  if (FDQ�����.Active) then
    result := FDQ�����.FieldByName('���������').AsInteger
  else
    result := 0;
end;

function TfPolimer.Get����_��������: integer;
begin
  if (FDQ��������.Active) then
    result := FDQ��������.FieldByName('���������').AsInteger
  else
    result := 0;
end;

procedure TfPolimer.��������;
begin
  with FDQ������� do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `�������`';
    Open;
    Append;
 // FieldByName('W-ID').AsInteger := 0;
    FieldByName('��������').AsInteger := 1;
    FieldByName('�����').AsInteger := 1;
    FieldByName('�����').AsString := '����� ������';
    FieldByName('����������').AsInteger := 1;
    FieldByName('���������').AsInteger := 0;
    FieldByName('���������').AsInteger := 0;
    FieldByName('����').AsInteger := 0;
  end;
  �������;
end;

procedure TfPolimer.��������(aWID: integer);
begin
  with FDQ������� do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `�������` WHERE `W-ID` LIKE :WID';
    ParamByName('WID').AsInteger := aWID;
    Open;
    if RecordCount <> 1 then
    begin
      ShowMessage('������ � WID= ' + edtWID.Value + '�� ������� � ������� �������');
      exit;
    end;
    Edit;
  end;
  �������;
end;

procedure TfPolimer.�������;
var
  WorkText: string;
begin
  if ShowModal = mrOk then
  begin
    if FDQ�������.Modified then
      FDQ�������.Post;

    WorkText := '��� �����: ' + �����.Text + '; ��������: ' + ��������.Text;
    FOrder.������(edtWID.Value, 1, edt����������.Value, edt����.Value, edt�����.Value, WorkText);
  end
  else
  begin
    FDQ�������.Cancel;
  end;
end;

procedure TfPolimer.������(Sender: TObject);
begin
  inherited;
  if Showing then
  begin
    edt���������.Value := ((����_�������� + ����_�����) * edt����������.Value);
    edt����.Value := edt���������.Value + edt���������.Value;
  end;
end;

procedure TfPolimer.�������(aWID: integer);
begin
  with FDQ������� do
  begin
    Close;
    SQL.Text := 'DELETE FROM `�������` WHERE `W-ID` LIKE :WID';
    ParamByName('WID').AsInteger := aWID;
    ExecSQL;
  end
end;

end.

