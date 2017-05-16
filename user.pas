unit user;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  DBCtrlsEh, Vcl.Mask;

type
  TfUser = class(TForm)
    pnlButtom: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    pnlMain: TPanel;
    edtPassword: TDBEditEh;
    edtEmail: TDBEditEh;
    lbl1: TLabel;
    cbbRoot: TDBComboBoxEh;
    chk���������������: TCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    F�������: string;
    F���������: string;
    F��������: string;
    F��������: Integer;
    FMID: Integer;
    F������: string;
    F���: string;
    F������: TDateTime;
    F�����: string;
    F���������������: boolean;
    procedure SetMID(const Value: Integer);
    procedure Set�������(const Value: string);
    procedure Set��������(const Value: Integer);
    procedure Set���(const Value: string);
    procedure Set���������(const Value: string);
    procedure Set������(const Value: TDateTime);
    procedure Set��������(const Value: string);
    procedure Set������(const Value: string);
    procedure Set�����(const Value: string);
    procedure Set���������������(const Value: boolean);
    { Private declarations }
  public
    { Public declarations }
    procedure �������������();
    procedure �������();
    procedure �������������();
    procedure �������������();
    property MID: Integer read FMID write SetMID;
    property ���: string read F��� write Set���;
    property �������: string read F������� write Set�������;
    property ��������: string read F�������� write Set��������;
    property ���������: string read F��������� write Set���������;
    property �����: string read F����� write Set�����;
    property ������: string read F������ write Set������;
    property ��������: Integer read F�������� write Set��������;
    property ������: TDateTime read F������ write Set������;
    property ���������������: boolean read F��������������� write Set���������������;
  end;

var
  fUser: TfUser;

implementation

uses
  System.IniFiles, server;

{$R *.dfm}

{ TfUser }

procedure TfUser.FormCreate(Sender: TObject);
begin
  �������������;
end;

procedure TfUser.SetMID(const Value: Integer);
begin
  FMID := Value;
end;

procedure TfUser.Set���(const Value: string);
begin
  F��� := Value;
end;

procedure TfUser.Set��������(const Value: Integer);
begin
  if F�������� <> Value then
  begin
    F�������� := Value;
    cbbRoot.Value := Value;
  end;
end;

procedure TfUser.Set���������(const Value: string);
begin
  F��������� := Value;
end;

procedure TfUser.Set������(const Value: TDateTime);
begin
  F������ := Value;
end;

procedure TfUser.Set��������(const Value: string);
begin
  F�������� := Value;
end;

procedure TfUser.Set������(const Value: string);
begin
  if F������ <> Value then
  begin
    F������ := Value;
    edtPassword.Text := Value;
  end;
end;

procedure TfUser.Set�����(const Value: string);
begin
  if F����� <> Value then
  begin
    F����� := Value;
    edtEmail.Text := Value;
  end;
end;

procedure TfUser.Set���������������(const Value: boolean);
begin
  if F��������������� <> Value then
  begin
    F��������������� := Value;
    chk���������������.Checked := Value;
  end;
end;

procedure TfUser.Set�������(const Value: string);
begin
  F������� := Value;
end;

procedure TfUser.�������������;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'setting.ini');

  ����� := Ini.ReadString('User', '�����', '');
  ������ := Ini.ReadString('User', '������', '');
  ��������������� := Ini.ReadBool('User', '���������������', false);
  �������� := Ini.ReadInteger('User', '��������', 222);

  Ini.Free;
end;

procedure TfUser.�������������;
begin
  if (����� = '') or (������ = '') then
    if Application.MessageBox('�� ������ ��������� ��� ����� � �������.' + #13#10 + '������ ������ ������ ������?', '������ �������������', MB_YESNO + MB_ICONINFORMATION) = IDYES then
    begin
      �������;
    end;

  with dmServer.FDQ������� do
  begin
    Close;
    while RecordCount <> 1 do
    begin
      SQL.Text := 'SELECT * FROM `���������` WHERE (`�����` LIKE :EMail) AND (`������` LIKE :Pass)';
      ParamByName('EMail').AsString := �����;
      ParamByName('Pass').AsString := ������;
      Open;
      if RecordCount = 1 then
      begin
        MID := FieldByName('M-ID').AsInteger;
        ��� := FieldByName('���').AsString;
        ������� := FieldByName('�������').AsString;
        �������� := FieldByName('��������').AsString;
        ��������� := FieldByName('���������').AsString;
        ����� := FieldByName('�����').AsString;
//    ������ := FieldByName('������').AsString;
        �������� := FieldByName('�����').AsInteger;
        ������ := Now;
      end
      else
      begin
        if Application.MessageBox('������������ �� ������ � �������.' + #13#10 + '������ ������ ������ ��������?', '������ �������������', MB_YESNO + MB_ICONINFORMATION) = IDYES then
        begin
          �������;
        end
        else
          ExitProcess(0);
      end;
    end;
  end;
end;

procedure TfUser.�������;
begin
  if ShowModal = mrOk then
  begin
    ����� := edtEmail.Text;
    ������ := edtPassword.Text;
    ��������������� := chk���������������.Checked;
    �������� := cbbRoot.Value;

    �������������;
    �������������;
  end
  else
  begin

  end;
end;

procedure TfUser.�������������;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'setting.ini');

  Ini.WriteString('User', '�����', �����);

  if ��������������� then
    Ini.WriteString('User', '������', ������)
  else
    Ini.WriteString('User', '������', '');

  Ini.WriteBool('User', '���������������', ���������������);
  Ini.WriteInteger('User', '��������', ��������);

  Ini.Free;
end;

end.

