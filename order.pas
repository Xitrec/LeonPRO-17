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
    pnlНижняя_Панель: TPanel;
    btnОтмена: TButton;
    btnСохранить: TButton;
    chkБлокировка: TDBCheckBoxEh;
    edtAID: TDBEditEh;
    edtMID: TDBEditEh;
    edtCID: TDBEditEh;
    pnlОсновная_Панель: TPanel;
    DBGridEh3: TDBGridEh;
    pnlВерхняя_Панель: TPanel;
    pnlДоп_Панель: TPanel;
    pnlДаты_Панель: TPanel;
    edtДатаСоздания: TDBDateTimeEditEh;
    edtДатаМакета: TDBDateTimeEditEh;
    edtДатаИзготовления: TDBDateTimeEditEh;
    pnlНазвание_Панель: TPanel;
    edtНазвание: TDBEditEh;
    edtКлиент: TDBEditEh;
    edtМенеджер: TDBEditEh;
    pnl1: TPanel;
    bvl1: TBevel;
    pnl2: TPanel;
    lblL_НарядЗаказ: TLabel;
    edtUpdate: TDBEditEh;
    pnl3: TPanel;
    edtНомер: TDBEditEh;
    edtZID: TDBEditEh;
    pnlБоковая_Панель: TPanel;
    lbl1: TLabel;
    cbbAID: TDBLookupComboboxEh;
    edtСтоимость: TDBNumberEditEh;
    edtДоплата: TDBNumberEditEh;
    edtАванс: TDBNumberEditEh;
    dbmh1: TDBMemoEh;
    pmСоставPopup: TPopupMenu;
    N1: TMenuItem;
    PopupПолимер: TMenuItem;
    PopupПолиграфия: TMenuItem;
    PopupТаблички: TMenuItem;
    PopupИзменить: TMenuItem;
    PupupУдалить: TMenuItem;
    FDQЗаказ: TFDQuery;
    intgrfldFDЗаказНомер: TIntegerField;
    wdstrngfldFDЗаказНазвание: TWideStringField;
    fdtncfldFDЗаказZID: TFDAutoIncField;
    intgrfldFDЗаказCID: TIntegerField;
    intgrfldFDЗаказMID: TIntegerField;
    intgrfldFDЗаказAID: TIntegerField;
    dtfldFDЗаказСоздан: TDateField;
    dtfldFDЗаказМакет: TDateField;
    dtfldFDЗаказГотовность: TDateField;
    blnfldFDЗаказБлокировка: TBooleanField;
    intgrfldFDЗаказСтоимость: TIntegerField;
    intgrfldFDЗаказАванс: TIntegerField;
    intgrfldFDЗаказДоплата: TIntegerField;
    dtmfldFDЗаказUpdate: TDateTimeField;
    strngfldFDЗаказКлиент: TStringField;
    strngfldFDЗаказМенеджер: TStringField;
    strngfldFDЗаказСтатус: TStringField;
    wdmfldFDЗаказЗаметка: TWideMemoField;
    ds_Заказ: TDataSource;
    FDQСостав: TFDQuery;
    strngfldFDСоставНаименование: TStringField;
    wdstrngfldFDСоставПараметры: TWideStringField;
    fdtncfldFDСоставSID: TFDAutoIncField;
    intgrfldFDСоставZID: TIntegerField;
    intgrfldFDСоставWID: TIntegerField;
    intgrfldFDСоставVID: TIntegerField;
    wdstrngfldFDСоставОписание: TWideStringField;
    intgrfldFDСоставКоличество: TIntegerField;
    intgrfldFDСоставСтоимость: TIntegerField;
    ds_Состав: TDataSource;
    FDQЗапросы: TFDQuery;
    edtWID: TDBEditEh;
    edtVID: TDBEditEh;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ВнестиАванс(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure Добавить(Sender: TObject);
    procedure Изменить(Sender: TObject);
    procedure Удалить(Sender: TObject);
    procedure УдалениеПунктаСостава(aVID, aWID: Integer);
    procedure edtКлиентClick(Sender: TObject);
  private
    { Private declarations }
    function GetZID: Integer;
    function GetCID: Integer;
    procedure Расчет();
    procedure ПрисвоитьНомерЗаказа();
  public
    { Public declarations }
    procedure Открыть();
    procedure НовыйЗаказ();
    procedure УдалитьЗаказ();
    procedure Состав(aWID, aVID, аКоличество, аСтоимость: Integer; aText, aParametrs: string);
    procedure ОткрытьПапку();
    procedure НаписатьПисьмо(ТипСообщения: integer);
  end;

var
  fOrder: TfOrder;

implementation

uses
  server, clients, addAvans, polimer, user, setting;

{$R *.dfm}

{ TForm1 }

procedure TfOrder.ВнестиАванс(Sender: TObject);
begin
 // Несение аванс
  fAvans.ВнестиАванс;
end;

procedure TfOrder.edtКлиентClick(Sender: TObject);
begin
  // Выбор нового клиента
  FClients.ВыбратьКлиента;
end;

procedure TfOrder.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  //Запрос на сохранение данных при закрытии формы
  if FDQЗаказ.Modified then
    case ModalResult of
      mrCancel:
        begin
          if Application.MessageBox('Внесенные изменения будут утеряны.' + #13#10 + 'Продолжить?', 'Подтверждение', MB_YESNO + MB_ICONQUESTION) = IDYES then
            FDQЗаказ.Cancel
          else
            CanClose := false;
        end;
      mrOk:
        begin
          ПрисвоитьНомерЗаказа;
          FDQЗаказ.post;
        end;
    end;
end;

procedure TfOrder.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
 //Обработка хотКЕЙ
  if Msg.CharCode = VK_ESCAPE then
  begin
    btnОтмена.SetFocus;
    ModalResult := mrCancel;
    Handled := true;
  end;
end;

function TfOrder.GetCID: Integer;
begin
  // Запрос на пулечение C-ID из главного грида.
  Result := dmServer.FDQЗаказы.FieldByName('C-ID').AsInteger;
end;

function TfOrder.GetZID: Integer;
begin
  // Запрос на пулечение Z-ID из главного грида.
  Result := dmServer.FDQЗаказы.FieldByName('Z-ID').AsInteger;
end;

procedure TfOrder.УдалениеПунктаСостава(aVID, aWID: Integer);
begin
  case aVID of
    1:
      FPolimer.Удалить(aWID);
    2:
      beep;
    3:
      beep;
  else
    ShowMessage('Ошибка удаления пунктов состава. VID=' + aVID.ToString + ' WID=' + aWID.ToString);
  end;
end;

procedure TfOrder.Удалить(Sender: TObject);
begin
// Ручрное удаление пункта из состава заказа.
  if edtVID.Value = 0 then
  begin
    beep;
    exit;
  end;

  if MessageDlg('Хотите удалить данный пункт?', mtConfirmation, mbOKCancel, 0) = mrOk then
  begin
    УдалениеПунктаСостава(edtVID.Value, edtWID.Value);

    with FDQЗапросы do
    begin
      Close;
      SQL.Text := 'DELETE FROM `Состав` WHERE `S-ID` LIKE :SID';
      ParamByName('SID').AsInteger := FDQСостав.FieldByName('S-ID').AsInteger;
      ExecSQL;
    end;

     // Обновляем отображение  гриде.
    FDQСостав.Refresh;
    Расчет;
  end;
end;

procedure TfOrder.УдалитьЗаказ;
begin
  // Удаляем заказ из таблицы Заказы.
  if MessageDlg('Удалить заказ наряд?' + #13#10 + 'Идентификатор Z-ID: ' + GetZID.ToString, mtConfirmation, mbOKCancel, 0) = mrOk then
    with FDQЗапросы do
    begin
      // Перебераем состав и удаляем все пункты.
      Close;
      SQL.Text := 'SELECT * FROM `Состав` WHERE `Z-ID` LIKE :ZID';
      ParamByName('ZID').AsInteger := GetZID;
      Open;
      First;
      while not Eof do
      begin
        УдалениеПунктаСостава(edtVID.Value, edtWID.Value);
        Delete;
      end;

      // Удаляем сам заказ из основной таблицы.
      Close;
      SQL.Text := 'DELETE FROM `Заказы` WHERE `Z-ID` LIKE :ZID';
      ParamByName('ZID').AsInteger := GetZID;
      ExecSQL;
    end;

  // Обновляем отображение в главном гриде.
  dmServer.FDQЗаказы.Refresh;
end;

procedure TfOrder.Добавить(Sender: TObject);
begin
  case TComponent(Sender).tag of
    1:
      fPolimer.Добавить;
    2:
      beep;
    3:
      beep;
  end;

  Расчет;
end;

procedure TfOrder.Изменить(Sender: TObject);
begin
  case edtVID.Value of
    0:
      beep;
    1:
      FPolimer.Изменить(edtWID.Value);
    2:
      beep;
    3:
      beep;
  end;

  Расчет;
end;

procedure TfOrder.НаписатьПисьмо(ТипСообщения: integer);
var
  myMessage: string;
  RetVal: integer;
  ClientMail, Тема, Тело: string;
begin

  with FDQЗапросы do
  begin
    Close;
    SQL.Text := 'SELECT `Почта` FROM `Клиенты` WHERE `C-ID` LIKE :CID';
    ParamByName('CID').AsInteger := GetCID;
    Open;

    if RecordCount = 0 then
    begin
      ShowMessage('Клиент C-ID: ' + GetCID.ToString + ' не найден.');
      exit;
    end;

    ClientMail := FieldByName('Почта').AsString;
  end;

  case ТипСообщения of
    0:
      begin
        Тема := fSetting.ТемаОформление;
        Тело := fSetting.ТелоОформление;
      end;
    1:
      begin
        Тема := fSetting.ТемаМакет;
        Тело := fSetting.ТелоМакет;
      end;
    2:
      begin
        Тема := fSetting.ТемаГотов;
        Тело := fSetting.ТелоГотов;
      end;
  end;

  // Пробел: %20
  // Абзац: %0D%0A
  // &Attach=

  myMessage := 'mailto:' + ClientMail + '?subject=' + Тема + '&body=' + Тело;

  RetVal := ShellExecute(Self.Handle, nil, PChar(myMessage), nil, nil, SW_RESTORE);

  if RetVal <= 32 then
    MessageDlg('Программа для отправки сообщения не установленна.', mtWarning, [mbOK], 0)
  else if (ТипСообщения = 1) and (fSetting.ОткрыватьПапкуКлиента) then
    ОткрытьПапку;

end;

procedure TfOrder.НовыйЗаказ;
begin
 // Отправляем запрос на создания новой записи в таблице ЗАКАЗЫ и присваиваем им начальные значения.
  with FDQЗапросы do
  begin
    SQL.Text := 'SELECT * FROM `Заказы`';
    Open;
    Append;

    // FieldByName('Номер').AsInteger := null;
    FieldByName('Название').AsString := 'Новый заказ';
    // FieldByName('Z-ID').AsInteger := null;
    FieldByName('C-ID').AsInteger := 0;
    FieldByName('M-ID').AsInteger := fUser.MID;
    FieldByName('A-ID').AsInteger := 1;
    FieldByName('Создан').AsDateTime := now;
    FieldByName('Макет').AsDateTime := now + 1;
    FieldByName('Готовность').AsDateTime := now + 2;
    FieldByName('Блокировка').AsBoolean := false;
    FieldByName('Стоимость').AsInteger := 0;
    FieldByName('Аванс').AsInteger := 0;
    FieldByName('Доплата').AsInteger := 0;
    FieldByName('Update').AsDateTime := now;
    post;
  end;

  // Открываем владку оформление.
  if fSetting.SelectAID > 1 then
    fSetting.SelectAID := 1;

  // Обновляем отображение в главном гриде.
  dmServer.FDQЗаказы.Refresh;

  // Перемещаемся к новому заказу.
  dmServer.FDQЗаказы.Locate('Z-ID', FDQЗапросы.FieldByName('Z-ID').AsInteger, []);

  // Открываем заказ для редактирования.
  Открыть();
end;

procedure TfOrder.Открыть;
begin
{$REGION 'Подготовка к открытию заказа.'}
  //Ищем заказа и выходим если заказа нет.
  with FDQЗаказ do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `Заказы` WHERE `Z-ID` LIKE :ZID';
    ParamByName('ZID').AsInteger := GetZID;
    Open;

    if RecordCount = 0 then
    begin
      ShowMessage('Заказ не найден.');
      exit;
    end;
  end;

  // Проверяем не открыт ли он другим пользователем
  if chkБлокировка.Checked then
  begin
    ShowMessage('Заказ открыт другим пользователем.');
    dmServer.FDQЗаказы.Refresh;
    exit;
  end;

 // Открываем состав и блокируем от совместной корретировки
  chkБлокировка.Checked := true;
  FDQЗаказ.post;
  FDQСостав.Close;
  FDQСостав.Open();

{$ENDREGION}
  with dmServer.Connection do
  begin
    StartTransaction;

    if ShowModal = mrOk then
      Commit
    else
      Rollback;
  end;
{$REGION 'Закрыте формы заказа'}
  // Снимаем блок, пишем дату изменения, обновляем главную таблицу.
  chkБлокировка.Checked := false;
  edtUpdate.Text := dateTimeToStr(now);
  FDQЗаказ.post;
  FDQСостав.Close;
  dmServer.FDQЗаказы.Refresh;
  dmServer.FDQСостав.Refresh;

  { СПРОНАЯ ФУНКЦИЯ ПЕРЕМЕЩЕНИЕ ЗАКЛАДКИ ПРИ ИЗМЕНЕНИИ СТАТУСА ЗАКАЗА.
   Возможно лучше сделать галочку в настройках с возможностью отключения.

   // Открываем владку оформление.
  if fSetting.SelectAID <> 0 then
    fSetting.SelectAID := edtAID.Value;

  // Перемещаемся к новому заказу.
  dmServer.FDQЗаказы.Locate('Z-ID', edtZID.Value, []);
  }
{$ENDREGION}
end;

procedure TfOrder.ОткрытьПапку;
var
  PathCID: string;
begin
  with FDQЗапросы do
  begin
    Close;
    SQL.Text := 'SELECT `Папка` FROM `Клиенты` WHERE `C-ID` LIKE :CID';
    ParamByName('CID').AsInteger := GetCID;
    Open;

    if RecordCount = 0 then
    begin
      ShowMessage('Клиент C-ID: ' + GetCID.ToString + ' не найден.');
      exit;
    end;

    PathCID := FieldByName('Папка').AsString;
  end;

  // Открытие папки с файлами заказа.
  if DirectoryExists(fSetting.КаталогКлиентов + '\' + PathCID) then
    ShellExecute(Handle, 'explore', PChar(fSetting.КаталогКлиентов + '\' + PathCID), nil, nil, SW_SHOWNORMAL)
  else
    ShowMessage('Каталог клиента не найден.');
end;

procedure TfOrder.ПрисвоитьНомерЗаказа;
begin
 // Если заказу не присвоен номер, ищем максимальный номер заказа в базе и присваеваем +1
  if edtНомер.Text = '' then
    with FDQЗапросы do
    begin
      SQL.Text := 'SELECT MAX(`Номер`) as `Result` FROM `Заказы`';
      Open;
      edtНомер.Value := FieldByName('Result').AsInteger + 1;
    end;
end;

procedure TfOrder.Расчет;
begin
  beep;
  with FDQЗапросы do
  begin
    SQL.Text := 'SELECT SUM(`Стоимость`) AS `Result` FROM Состав WHERE `Z-ID` LIKE :ZID';
    ParamByName('ZID').AsInteger := edtZID.Value;
    Open;
    edtСтоимость.Value := FieldByName('Result').AsInteger;
  end;

  edtДоплата.Value := edtСтоимость.Value - edtАванс.Value;
end;

procedure TfOrder.Состав(aWID, aVID, аКоличество, аСтоимость: Integer; aText, aParametrs: string);
begin
  with FDQЗапросы do
  begin
    Close;
    SQL.Text := 'SELECT * FROM `Состав` WHERE (`W-ID` LIKE :WID) AND (`V-ID` LIKE :VID)';
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
    FieldByName('Описание').AsString := aText;
    FieldByName('Количество').AsInteger := аКоличество;
    FieldByName('Стоимость').AsInteger := аСтоимость;
    FieldByName('Параметры').AsString := aParametrs;
    post;
  end;

  FDQСостав.Refresh;
end;

end.

