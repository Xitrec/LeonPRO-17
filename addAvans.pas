unit addAvans;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DBCtrlsEh, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  Vcl.StdCtrls, DBLookupEh, Vcl.Mask;

type
  TfAvans = class(TForm)
    pnl�������_������: TPanel;
    lbl1: TLabel;
    edt���������: TDBNumberEditEh;
    edt�����: TDBNumberEditEh;
    edt�������: TDBNumberEditEh;
    btn�����: TButton;
    pnl1: TPanel;
    DBGridEh1: TDBGridEh;
    pnl�������_������: TPanel;
    lblL_����������: TLabel;
    bvl1: TBevel;
    edt������: TDBEditEh;
    edt��������: TDBEditEh;
    FDQ�������: TFDQuery;
    fdtncfldFD�������FID: TFDAutoIncField;
    dtfldFD�����������: TDateField;
    intgrfldFD�������ZID: TIntegerField;
    intgrfldFD�������MID: TIntegerField;
    intgrfldFD�������CID: TIntegerField;
    strngfldFD�����������������: TStringField;
    intgrfldFD������������_�����: TIntegerField;
    intgrfldFD������������: TIntegerField;
    blnfldFD��������������: TBooleanField;
    intgrfldFD�������������_������: TIntegerField;
    strngfldFD���������������: TStringField;
    strngfldFD�������������: TStringField;
    ds�������: TDataSource;
    FDQ�������: TFDQuery;
    pnl������_������: TPanel;
    btn������: TButton;
    btn���������: TButton;
    edtZID: TDBNumberEditEh;
    pnl�������: TPanel;
    pnl2: TPanel;
    btn��������: TButton;
    btnBtn������: TButton;
    edt����������������: TDBNumberEditEh;
    edt�����: TDBNumberEditEh;
    edt����������: TDBNumberEditEh;
    cbb������������: TDBLookupComboboxEh;
    edtCID: TDBNumberEditEh;
    lbl2: TLabel;
    procedure ���������������(Sender: TObject);
    procedure btnBtn������Click(Sender: TObject);
    procedure btn��������Click(Sender: TObject);
    procedure �������������������(DataSet: TDataSet);
    procedure ��������������(DataSet: TDataSet);
    procedure edt�����DblClick(Sender: TObject);
    procedure edt�����Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ������������������();
  private
    F����������: integer;
    procedure Set����������(const Value: integer);
    { Private declarations }
    property ����������: integer read F���������� write Set����������;
  public
    { Public declarations }
    procedure �����������();
  end;

var
  fAvans: TfAvans;

implementation

uses
  order, server, user;

{$R *.dfm}

{ TfAvans }

procedure TfAvans.btn��������Click(Sender: TObject);
begin
  if edt�����.value <= 0 then
  begin
    ShowMessage('�� �� ������� ����� ������.');
    edt�����.SetFocus;
    exit;
  end;

  if edt�����.value > edt�������.value then
  begin
    ShowMessage('�������� ����� ��������� �������.');
    edt�����.SetFocus;
    exit;
  end;

  if (cbb������������.KeyValue > 1) and (edt����������.value = 0) then
  begin
    ShowMessage('�� ������ ����� ����� ��� �����.');
    exit;
  end;

  if FDQ�������.Modified then
  begin
    FDQ�������.Post;
    edt�����.value := edt�����.value + edt�����.value;
    edt�������.value := edt���������.value - edt�����.value;
    ���������� := ���������� + 1;
  end;
end;

procedure TfAvans.btnBtn������Click(Sender: TObject);
begin
  FDQ�������.Cancel;
end;

procedure TfAvans.edt�����Change(Sender: TObject);
begin
  edt����������������.value := edt�������.value - edt�����.value;
end;

procedure TfAvans.edt�����DblClick(Sender: TObject);
begin
  edt�����.value := edt�������.value;
end;

procedure TfAvans.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (FDQ�������.Modified) then
  begin
    if Application.MessageBox('���� ������ �� ��������.' + #13#10 + '��������� ��������� ����� �������.' + #13#10 + '����������?', '�������������', MB_YESNO + MB_ICONQUESTION) = IDYES then
      FDQ�������.Cancel
    else
      CanClose := false;
  end;

  if (ModalResult = mrCancel) and (���������� > 0) then
  begin
    if Application.MessageBox(PChar('�������� ������ ����������!' + #13#10 + '����� ��������: ' + (����������.ToString) + ' ��������.' + #13#10 + '��������� ��������� ����� �������.' + #13#10 + '����������?'), '�������������', MB_YESNO + MB_ICONQUESTION) = IDYES then
      FDQ�������.Cancel
    else
      CanClose := false;
  end;

end;

procedure TfAvans.Set����������(const Value: integer);
begin
  if F���������� <> Value then
  begin
    F���������� := Value;
    lbl2.Caption := '����������: ' + ����������.ToString;
  end;
end;

procedure TfAvans.������������������;
begin
  with FDQ������� do
  begin
    Close;
    SQL.Text := 'SELECT SUM(`�����`) AS `Result` FROM `�������` WHERE `Z-ID` LIKE :ZID';
    ParamByName('ZID').AsInteger := edtZID.Value;
    Open;
    edt�����.value := FieldByName('Result').AsInteger;
  end;

  edt�������.value := edt���������.value - edt�����.value;
end;

procedure TfAvans.��������������(DataSet: TDataSet);
begin
  pnl�������.Visible := false;
  btn�����.Enabled := true;
  DBGridEh1.Enabled := true;
end;

procedure TfAvans.�������������������(DataSet: TDataSet);
begin
  pnl�������.Visible := true;
  btn�����.Enabled := false;
  DBGridEh1.Enabled := false;
end;

procedure TfAvans.�����������;
begin
  ���������� :=-1;
  ���������� := 0;  //������������ ����� ���������� ��� ������ ��������� ������� ������.

  if edtCID.value = 0 then
  begin
    ShowMessage('��� ���������� ������� ���������� ������� �������.');
    exit;
  end;

  with FDQ������� do
  begin
    close;
    sql.Text := 'SELECT * FROM `�������` WHERE `Z-ID` LIKE :ZID';
    ParamByName('ZID').AsInteger := edtZID.Value;
    open;
  end;

  dmServer.Connection.StartTransaction;

  if ShowModal = mrOk then
  begin
    if FDQ�������.Modified then
      FDQ�������.post;
    dmServer.Connection.Commit;
  end
  else
  begin
    FDQ�������.Cancel;
    dmServer.Connection.Rollback;
  end;
  ������������������();
end;

procedure TfAvans.���������������(Sender: TObject);
begin
  with FDQ������� do
  begin
    Append;
 // FieldByName('F-ID').AsInteger := 0;
    FieldByName('Z-ID').AsInteger := edtZID.Value;
    FieldByName('M-ID').AsInteger := fUser.MID;
    FieldByName('C-ID').AsInteger := edtCID.Value;
    FieldByName('����').AsDateTime := Now;
    FieldByName('�����').AsInteger := 0;
    FieldByName('������_������').AsInteger := 1;
    FieldByName('�����_�����').AsInteger := 0;
    FieldByName('�������').AsBoolean := false;
  end;
end;

end.

