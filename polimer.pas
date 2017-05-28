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
    Клише: TDBLookupComboboxEh;
    Оснастка: TDBLookupComboboxEh;
    edtТекст: TDBEditEh;
    edtКоличество: TDBNumberEditEh;
    lbl2: TLabel;
    lbl3: TLabel;
    FDQОснастки: TFDQuery;
    ds_Оснастка: TDataSource;
    ds_Клише: TDataSource;
    FDQКлише: TFDQuery;
    FDQПолимер: TFDQuery;
    ds_Полимер: TDataSource;
    edtWID: TDBEditEh;
    FDQПолимерWID: TFDAutoIncField;
    FDQПолимерОснастка: TIntegerField;
    FDQПолимерКлише: TIntegerField;
    FDQПолимерТекст: TWideStringField;
    FDQПолимерКоличество: TIntegerField;
    FDQПолимерСтоимость: TIntegerField;
    FDQПолимерКоррекция: TIntegerField;
    FDQПолимерИтог: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure Расчёт(Sender: TObject);
    procedure edtИтогClick(Sender: TObject);
  private
    function GetЦена_Клише: integer;
    function GetЦена_Оснастка: integer;
    { Private declarations }
    property Цена_Оснастка: integer read GetЦена_Оснастка;
    property Цена_Клише: integer read GetЦена_Клише;
    procedure Открыть();
  public
    { Public declarations }
    procedure Добавить();
    procedure Изменить(aWID: integer);
    procedure Удалить(aWID: integer);
  end;

var
  fPolimer: TfPolimer;

implementation

uses
  server, order;

{$R *.dfm}

{ TfPolimer }

procedure TfPolimer.edtИтогClick(Sender: TObject);
var
  Value: integer;
begin
  inherited;
  if TryStrToInt(InputBox('Изменить значение', 'Введите новую стоимость [руб]:', edtИтог.value), Value) then
    edtКоррекция.Value := Value - edtСтоимость.Value
  else
    showMessage('Неправельный ввод данных.');
end;

procedure TfPolimer.FormShow(Sender: TObject);
begin
  inherited;
  with FDQКлише do
  begin
    DisableControls;
    Close;
    SQL.Text := 'SELECT * FROM `Клише`';
    Open;
    EnableControls;
  end;

  with FDQОснастки do
  begin
    DisableControls;
    Close;
    SQL.Text := 'SELECT * FROM `Оснастки`';
    Open;
    EnableControls;
  end;
end;

function TfPolimer.GetЦена_Клише: integer;
begin
  if (FDQКлише.Active) then
    result := FDQКлише.FieldByName('Стоимость').AsInteger
  else
    result := 0;
end;

function TfPolimer.GetЦена_Оснастка: integer;
begin
  if (FDQОснастки.Active) then
    result := FDQОснастки.FieldByName('Стоимость').AsInteger
  else
    result := 0;
end;

procedure TfPolimer.Добавить;
begin
  with FDQПолимер do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `Полимер`';
    Open;
    Append;
 // FieldByName('W-ID').AsInteger := 0;
    FieldByName('Оснастка').AsInteger := 1;
    FieldByName('Клише').AsInteger := 1;
    FieldByName('Текст').AsString := 'Новая Печать';
    FieldByName('Количество').AsInteger := 1;
    FieldByName('Стоимость').AsInteger := 0;
    FieldByName('Коррекция').AsInteger := 0;
    FieldByName('Итог').AsInteger := 0;
  end;
  Открыть;
end;

procedure TfPolimer.Изменить(aWID: integer);
begin
  with FDQПолимер do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `Полимер` WHERE `W-ID` LIKE :WID';
    ParamByName('WID').AsInteger := aWID;
    Open;
    if RecordCount <> 1 then
    begin
      ShowMessage('Запись с WID= ' + edtWID.Value + 'не найдена в таблице Полимер');
      exit;
    end;
    Edit;
  end;
  Открыть;
end;

procedure TfPolimer.Открыть;
var
  WorkText: string;
begin
  if ShowModal = mrOk then
  begin
    if FDQПолимер.Modified then
      FDQПолимер.Post;

    WorkText := 'Тип клише: ' + Клише.Text + '; Оснастка: ' + Оснастка.Text;
    FOrder.Состав(edtWID.Value, 1, edtКоличество.Value, edtИтог.Value, edtТекст.Value, WorkText);
  end
  else
  begin
    FDQПолимер.Cancel;
  end;
end;

procedure TfPolimer.Расчёт(Sender: TObject);
begin
  inherited;
  if Showing then
  begin
    edtСтоимость.Value := ((Цена_Оснастка + Цена_Клише) * edtКоличество.Value);
    edtИтог.Value := edtСтоимость.Value + edtКоррекция.Value;
  end;
end;

procedure TfPolimer.Удалить(aWID: integer);
begin
  with FDQПолимер do
  begin
    Close;
    SQL.Text := 'DELETE FROM `Полимер` WHERE `W-ID` LIKE :WID';
    ParamByName('WID').AsInteger := aWID;
    ExecSQL;
  end
end;

end.

