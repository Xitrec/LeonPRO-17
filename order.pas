unit order;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBGridEh, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, DBCtrlsEh, DBLookupEh,
  Vcl.StdCtrls, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.Mask, Winapi.ShellAPI;

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
    edtWID: TDBEditEh;
    edtVID: TDBEditEh;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure �����������(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure ��������(Sender: TObject);
    procedure ��������(Sender: TObject);
    procedure �������(Sender: TObject);
    procedure ���������������������(aVID, aWID: Integer);
    procedure edt������Click(Sender: TObject);
  private
    { Private declarations }
    function GetZID: Integer;
    function GetCID: Integer;
    procedure ������();
    procedure ��������������������();
  public
    { Public declarations }
    procedure �������();
    procedure ����������();
    procedure ������������();
    procedure ������(aWID, aVID, �����������, ����������: Integer; aText, aParametrs: string);
    procedure ������������();
    procedure ��������������(������������: integer);
  end;

var
  fOrder: TfOrder;

implementation

uses
  server, clients, addAvans, polimer, user, setting;

{$R *.dfm}

{ TForm1 }

procedure TfOrder.�����������(Sender: TObject);
begin
 // ������� �����
  fAvans.�����������;
end;

procedure TfOrder.edt������Click(Sender: TObject);
begin
  // ����� ������ �������
  FClients.��������������;
end;

procedure TfOrder.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  //������ �� ���������� ������ ��� �������� �����
  if FDQ�����.Modified then
    case ModalResult of
      mrCancel:
        begin
          if Application.MessageBox('��������� ��������� ����� �������.' + #13#10 + '����������?', '�������������', MB_YESNO + MB_ICONQUESTION) = IDYES then
            FDQ�����.Cancel
          else
            CanClose := false;
        end;
      mrOk:
        begin
          ��������������������;
          FDQ�����.post;
        end;
    end;
end;

procedure TfOrder.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
 //��������� ������
  if Msg.CharCode = VK_ESCAPE then
  begin
    btn������.SetFocus;
    ModalResult := mrCancel;
    Handled := true;
  end;
end;

function TfOrder.GetCID: Integer;
begin
  // ������ �� ��������� C-ID �� �������� �����.
  Result := dmServer.FDQ������.FieldByName('C-ID').AsInteger;
end;

function TfOrder.GetZID: Integer;
begin
  // ������ �� ��������� Z-ID �� �������� �����.
  Result := dmServer.FDQ������.FieldByName('Z-ID').AsInteger;
end;

procedure TfOrder.���������������������(aVID, aWID: Integer);
begin
  case aVID of
    1:
      FPolimer.�������(aWID);
    2:
      beep;
    3:
      beep;
  else
    ShowMessage('������ �������� ������� �������. VID=' + aVID.ToString + ' WID=' + aWID.ToString);
  end;
end;

procedure TfOrder.�������(Sender: TObject);
begin
// ������� �������� ������ �� ������� ������.
  if edtVID.Value = 0 then
  begin
    beep;
    exit;
  end;

  if MessageDlg('������ ������� ������ �����?', mtConfirmation, mbOKCancel, 0) = mrOk then
  begin
    ���������������������(edtVID.Value, edtWID.Value);

    with FDQ������� do
    begin
      Close;
      SQL.Text := 'DELETE FROM `������` WHERE `S-ID` LIKE :SID';
      ParamByName('SID').AsInteger := FDQ������.FieldByName('S-ID').AsInteger;
      ExecSQL;
    end;

     // ��������� �����������  �����.
    FDQ������.Refresh;
    ������;
  end;
end;

procedure TfOrder.������������;
begin
  // ������� ����� �� ������� ������.
  if MessageDlg('������� ����� �����?' + #13#10 + '������������� Z-ID: ' + GetZID.ToString, mtConfirmation, mbOKCancel, 0) = mrOk then
    with FDQ������� do
    begin
      // ���������� ������ � ������� ��� ������.
      Close;
      SQL.Text := 'SELECT * FROM `������` WHERE `Z-ID` LIKE :ZID';
      ParamByName('ZID').AsInteger := GetZID;
      Open;
      First;
      while not Eof do
      begin
        ���������������������(edtVID.Value, edtWID.Value);
        Delete;
      end;

      // ������� ��� ����� �� �������� �������.
      Close;
      SQL.Text := 'DELETE FROM `������` WHERE `Z-ID` LIKE :ZID';
      ParamByName('ZID').AsInteger := GetZID;
      ExecSQL;
    end;

  // ��������� ����������� � ������� �����.
  dmServer.FDQ������.Refresh;
end;

procedure TfOrder.��������(Sender: TObject);
begin
  case TComponent(Sender).tag of
    1:
      fPolimer.��������;
    2:
      beep;
    3:
      beep;
  end;

  ������;
end;

procedure TfOrder.��������(Sender: TObject);
begin
  case edtVID.Value of
    0:
      beep;
    1:
      FPolimer.��������(edtWID.Value);
    2:
      beep;
    3:
      beep;
  end;

  ������;
end;

procedure TfOrder.��������������(������������: integer);
var
  myMessage: string;
  RetVal: integer;
  ClientMail, ����, ����: string;
begin

  with FDQ������� do
  begin
    Close;
    SQL.Text := 'SELECT `�����` FROM `�������` WHERE `C-ID` LIKE :CID';
    ParamByName('CID').AsInteger := GetCID;
    Open;

    if RecordCount = 0 then
    begin
      ShowMessage('������ C-ID: ' + GetCID.ToString + ' �� ������.');
      exit;
    end;

    ClientMail := FieldByName('�����').AsString;
  end;

  case ������������ of
    0:
      begin
        ���� := fSetting.��������������;
        ���� := fSetting.��������������;
      end;
    1:
      begin
        ���� := fSetting.���������;
        ���� := fSetting.���������;
      end;
    2:
      begin
        ���� := fSetting.���������;
        ���� := fSetting.���������;
      end;
  end;

  // ������: %20
  // �����: %0D%0A
  // &Attach=

  myMessage := 'mailto:' + ClientMail + '?subject=' + ���� + '&body=' + ����;

  RetVal := ShellExecute(Self.Handle, nil, PChar(myMessage), nil, nil, SW_RESTORE);

  if RetVal <= 32 then
    MessageDlg('��������� ��� �������� ��������� �� ������������.', mtWarning, [mbOK], 0)
  else if (������������ = 1) and (fSetting.���������������������) then
    ������������;

end;

procedure TfOrder.����������;
begin
 // ���������� ������ �� �������� ����� ������ � ������� ������ � ����������� �� ��������� ��������.
  with FDQ������� do
  begin
    SQL.Text := 'SELECT * FROM `������`';
    Open;
    Append;

    // FieldByName('�����').AsInteger := null;
    FieldByName('��������').AsString := '����� �����';
    // FieldByName('Z-ID').AsInteger := null;
    FieldByName('C-ID').AsInteger := 0;
    FieldByName('M-ID').AsInteger := fUser.MID;
    FieldByName('A-ID').AsInteger := 1;
    FieldByName('������').AsDateTime := now;
    FieldByName('�����').AsDateTime := now + 1;
    FieldByName('����������').AsDateTime := now + 2;
    FieldByName('����������').AsBoolean := false;
    FieldByName('���������').AsInteger := 0;
    FieldByName('�����').AsInteger := 0;
    FieldByName('�������').AsInteger := 0;
    FieldByName('Update').AsDateTime := now;
    post;
  end;

  // ��������� ������ ����������.
  if fSetting.SelectAID > 1 then
    fSetting.SelectAID := 1;

  // ��������� ����������� � ������� �����.
  dmServer.FDQ������.Refresh;

  // ������������ � ������ ������.
  dmServer.FDQ������.Locate('Z-ID', FDQ�������.FieldByName('Z-ID').AsInteger, []);

  // ��������� ����� ��� ��������������.
  �������();
end;

procedure TfOrder.�������;
begin
{$REGION '���������� � �������� ������.'}
  //���� ������ � ������� ���� ������ ���.
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

  // ��������� �� ������ �� �� ������ �������������
  if chk����������.Checked then
  begin
    ShowMessage('����� ������ ������ �������������.');
    dmServer.FDQ������.Refresh;
    exit;
  end;

 // ��������� ������ � ��������� �� ���������� ������������
  chk����������.Checked := true;
  FDQ�����.post;
  FDQ������.Close;
  FDQ������.Open();

{$ENDREGION}
  with dmServer.Connection do
  begin
    StartTransaction;

    if ShowModal = mrOk then
      Commit
    else
      Rollback;
  end;
{$REGION '������� ����� ������'}
  // ������� ����, ����� ���� ���������, ��������� ������� �������.
  chk����������.Checked := false;
  edtUpdate.Text := dateTimeToStr(now);
  FDQ�����.post;
  FDQ������.Close;
  dmServer.FDQ������.Refresh;
  dmServer.FDQ������.Refresh;

  { ������� ������� ����������� �������� ��� ��������� ������� ������.
   �������� ����� ������� ������� � ���������� � ������������ ����������.

   // ��������� ������ ����������.
  if fSetting.SelectAID <> 0 then
    fSetting.SelectAID := edtAID.Value;

  // ������������ � ������ ������.
  dmServer.FDQ������.Locate('Z-ID', edtZID.Value, []);
  }
{$ENDREGION}
end;

procedure TfOrder.������������;
var
  PathCID: string;
begin
  with FDQ������� do
  begin
    Close;
    SQL.Text := 'SELECT `�����` FROM `�������` WHERE `C-ID` LIKE :CID';
    ParamByName('CID').AsInteger := GetCID;
    Open;

    if RecordCount = 0 then
    begin
      ShowMessage('������ C-ID: ' + GetCID.ToString + ' �� ������.');
      exit;
    end;

    PathCID := FieldByName('�����').AsString;
  end;

  // �������� ����� � ������� ������.
  if DirectoryExists(fSetting.��������������� + '\' + PathCID) then
    ShellExecute(Handle, 'explore', PChar(fSetting.��������������� + '\' + PathCID), nil, nil, SW_SHOWNORMAL)
  else
    ShowMessage('������� ������� �� ������.');
end;

procedure TfOrder.��������������������;
begin
 // ���� ������ �� �������� �����, ���� ������������ ����� ������ � ���� � ����������� +1
  if edt�����.Text = '' then
    with FDQ������� do
    begin
      SQL.Text := 'SELECT MAX(`�����`) as `Result` FROM `������`';
      Open;
      edt�����.Value := FieldByName('Result').AsInteger + 1;
    end;
end;

procedure TfOrder.������;
begin
  beep;
  with FDQ������� do
  begin
    SQL.Text := 'SELECT SUM(`���������`) AS `Result` FROM ������ WHERE `Z-ID` LIKE :ZID';
    ParamByName('ZID').AsInteger := edtZID.Value;
    Open;
    edt���������.Value := FieldByName('Result').AsInteger;
  end;

  edt�������.Value := edt���������.Value - edt�����.Value;
end;

procedure TfOrder.������(aWID, aVID, �����������, ����������: Integer; aText, aParametrs: string);
begin
  with FDQ������� do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `������` WHERE (`W-ID` LIKE :WID) AND (`V-ID` LIKE :VID)';
    ParamByName('WID').AsInteger := aWID;
    ParamByName('VID').AsInteger := aVID;
    Open;

    if RecordCount = 0 then
      Append
    else
      Edit;

    FieldByName('Z-ID').AsInteger := edtZID.Value;
    FieldByName('W-ID').AsInteger := aWID;
    FieldByName('V-ID').AsInteger := aVID;
    FieldByName('��������').AsString := aText;
    FieldByName('����������').AsInteger := �����������;
    FieldByName('���������').AsInteger := ����������;
    FieldByName('���������').AsString := aParametrs;
    post;
  end;

  FDQ������.Refresh;
end;

end.

