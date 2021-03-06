unit clientEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, DBCtrlsEh, System.IOUtils;

type
  TFClientEdit = class(TForm)
    �������: TDBEditEh;
    ���: TDBEditEh;
    ��������: TDBEditEh;
    �����: TDBEditEh;
    �����: TDBEditEh;
    ���������: TDBEditEh;
    ������: TDBEditEh;
    ��������: TDBEditEh;
    L_����������: TLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure �����EditButtons0Click(Sender: TObject; var Handled: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure �������();
    procedure �������������������;
  public
    { Public declarations }
    procedure ��������();
    procedure �����������();
    procedure �������();
  end;

var
  FClientEdit: TFClientEdit;

implementation

{$R *.dfm}

uses
  clients, server, setting;

{ TFClientEdit }

procedure TFClientEdit.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
const
  br = #10#13;
begin
  if not FClients.FD�������.Modified then
  begin
    FClients.FD�������.Cancel;
    CanClose := true;
    exit;
  end;

  if ModalResult = mrCancel then
  begin
    CanClose := true;
    exit;
  end;

  if �����.Text = '' then
    if MessageDlg('����� ������� �� ������. ��������� ������� ��������� ����� �� ��������.' + br + '����������?', mtConfirmation, mbOKCancel, 0) = mrOk then
      CanClose := true
    else
    begin
      CanClose := false;
      exit;
    end;

  if �����.Text = '' then
    if MessageDlg('����� ������� �� ������. ��������� ������� ��������� ����� �� ��������.' + br + '����������?', mtConfirmation, mbOKCancel, 0) = mrOk then
      CanClose := true
    else
    begin
      CanClose := false;
      exit;
    end;
end;

procedure TFClientEdit.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if Msg.CharCode = VK_ESCAPE then
  begin
    Close;
    Handled := true;
  end;
end;

procedure TFClientEdit.��������;
begin
  // �������� ������ � �������.
  �������();
end;

procedure TFClientEdit.�����������;
begin
  // ������� ������ �������
  FClients.FD�������.Append;
  �������();
end;

procedure TFClientEdit.�������;
begin
  // ��������� ����� � ���� �������� ����������� ��������� ��� �������� ��������� ������.
  if ShowModal = mrOk then
  begin
    if FClients.FD�������.Modified then
    begin
      FClients.FD�������.post;
      �������������������;
    end;
  end
  else
    FClients.FD�������.Cancel;

  // ��������� ������ ��� ����������� ����������� �� ���� ��������.
  dmServer.FDQ���������.Close;
  dmServer.FDQ���������.Open();
end;

procedure TFClientEdit.�����EditButtons0Click(Sender: TObject; var Handled: Boolean);
var
  PathName: string;
  I: Integer;
begin

  PathName := '';

  if (���.Text = '') and (�������.Text = '') and (��������.Text = '') and (��������.Text = '') then
    ShowMessage('��� ��������� ����� ����� ������ ��� ��� ��������.')
  else
  begin
    if ���.Text > '' then
      PathName := ���.Text;

    if PathName > '' then
      PathName := PathName + ' ';

    if �������.Text > '' then
      PathName := PathName + �������.Text;

    if PathName > '' then
      PathName := PathName + ' ';

    if ��������.Text > '' then
      PathName := PathName + ��������.Text;

    if PathName > '' then
      PathName := PathName + ' ';

    if ��������.Text > '' then
      PathName := PathName + '[' + ��������.Text + ']';

    for I := 1 to Length(PathName) do
      if not TPath.IsValidFileNameChar(PathName[I]) then
        PathName[I] := '_';

    �����.Value := PathName;
    //Leon.���������('�������������� �������� �����: '+ PathName);
  end;
end;

procedure TFClientEdit.�������;
begin
  with FClients do
    with FD������� do
    begin
      Close;
      SQL.Text := 'SELECT `Z-ID` FROM `������` WHERE `C-ID` LIKE :CID';
      ParamByName('CID').AsInteger := FD�������.FieldByName('C-ID').AsInteger;
      Open;
      if RecordCount = 0 then
      begin
        if Application.MessageBox('������� ������� �� ���� ������?', '�������������', MB_YESNO + MB_ICONQUESTION) = IDYES then
        begin
          FD�������.Delete;
        end;
      end
      else
        ShowMessage('�������� ����������. � ������� ������������: ' + RecordCount.ToString + ' �����(��)');
    end;
end;

procedure TFClientEdit.�������������������;
begin
  // ��������� ������������� �������� ���� ��� ��� �� �������� �������.
  if (not DirectoryExists(fSetting.��������������� + '\' + �����.Text)) then
    if CreateDir(fSetting.��������������� + '\' + �����.Text) then
    begin
      ShowMessage('����� ������� ������.');
     // Leon.���������('������ ����� �������:' + Leon.PathOrderFiles + '\' + �����.Text);
    end
    else
    begin
      ShowMessage('�������� ������ �������� ������ �������� � ������� ������ : ' + IntToStr(GetLastError));
      //Leon.���������('�������� ������ �������� ������ ��������: ' + Leon.PathOrderFiles + '\' + �����.Text);
    end;
end;

end.

