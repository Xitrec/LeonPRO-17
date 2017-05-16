unit newUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, DBCtrlsEh;

type
  TfNewUser = class(TForm)
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel������: TPanel;
    L_����������: TLabel;
    Bevel1: TBevel;
    �������: TDBEditEh;
    ���: TDBEditEh;
    ��������: TDBEditEh;
    �����: TDBEditEh;
    ���������: TDBEditEh;
    ������: TDBEditEh;
    Panel��������: TPanel;
    Image1: TImage;
    Label1: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    procedure ��������������(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure �������������������������();
  end;

var
  fNewUser: TfNewUser;

implementation

uses
  server, user;

{$R *.dfm}

{ TfNewUser }

procedure TfNewUser.��������������(Sender: TObject);
begin
  if Length(���.Text) < 4 then
  begin
    ShowMessage('��� �� ����� ���� ������ 4 ��������.');
    exit;
  end;

  if Length(������.Text) < 4 then
  begin
    ShowMessage('������ �� ����� ���� ������ 4 ��������.');
    exit;
  end;

  if DBComboBoxEh1.SelText = '' then
  begin
    ShowMessage('��������� �� ������.');
    exit;
  end;

  try
    if dmServer.FDQ�������.Modified then
      dmServer.FDQ�������.post;
    ModalResult := MrOk;
  except
    ShowMessage('�� ���������� ���� ������. �������� �������� ������ � ��������� �������.');
  end;
end;

procedure TfNewUser.�������������������������;
begin
  if fUser.�������� <> 777 then
  begin
    Application.MessageBox('������ ������� �� ��������.', '����� � �������',
      MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  with dmServer.FDQ������� do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `���������` ';
    Open;
    Append;
  end;

  if ShowModal = MrOk then
  begin
    //Leon.���������('������ ����� ������������.');
  end
  else
  begin
    beep; //FAutorization.FD��������.Cancel;
  end;
end;

end.

