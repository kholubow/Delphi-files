﻿unit uListOfWorkers;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  dxDateRanges,
  Data.DB,
  cxDBData,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  Vcl.StdCtrls,
  System.ImageList,
  Vcl.ImgList,
  cxImageList,
  Datasnap.DBClient,
  MidasLib;

type
  TfListOfWorkers = class(TForm)
    gpListOfWorkers:                      TGridPanel;
    cxListOfWorkersGridDBTableView1:      TcxGridDBTableView;
    cxListOfWorkersGridLevel1:            TcxGridLevel;
    cxListOfWorkersGrid:                  TcxGrid;
    CloseButton:                          TButton;
    EditDataOfChoosenWorkerButton:        TButton;
    ChooseWorkerButton:                   TButton;
    fListOfWorkersCxImageList:            TcxImageList;
    cdsDataOfChoosedWorker:               TClientDataSet;
    dsDataOfChoosedWorker:                TDataSource;
    cdsDataOfChoosedWorkerIMIE:           TStringField;
    cdsDataOfChoosedWorkerNAZWISKO:       TStringField;
    cdsDataOfChoosedWorkerADRES:          TStringField;
    cdsDataOfChoosedWorkerKOD_POCZTOWY:   TStringField;
    cdsDataOfChoosedWorkerULICA:          TStringField;
    cdsDataOfChoosedWorkerZAKŁAD:         TStringField;
    cdsDataOfChoosedWorkerNR_EWIDENCYJNY: TIntegerField;
    cdsDataOfChoosedWorkerHASŁO:          TStringField;


    procedure FormShow                                (Sender: TObject);
    procedure CloseButtonClick                        (Sender: TObject);
    procedure ChooseWorkerButtonClick                 (Sender: TObject);
    procedure EditDataOfChoosenWorkerButtonClick      (Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    IfEditDataOfChoosenWorkerButtonClickInFListOfWorkers: boolean;
    referenceNumber:                                      integer;
  end;

var
  fListOfWorkers: TfListOfWorkers;

implementation

{$R *.dfm}

uses uMainPanel,
     uEditWorkerData;

// Funkcja do generowania własnych okien dialogowych.
function MyMessageDialog(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; Captions: array of string): Integer;
var
  aMsgDlg:      TForm;
  i:            Integer;
  dlgButton:    TButton;
  CaptionIndex: Integer;
begin

  aMsgDlg      := CreateMessageDialog(Msg, DlgType, Buttons);
  captionIndex := 0;

  for i := 0 to aMsgDlg.ComponentCount - 1 do
  begin

    if (aMsgDlg.Components[i] is TButton) then
    begin
      dlgButton := TButton(aMsgDlg.Components[i]);
      if CaptionIndex > High(Captions) then Break;

      dlgButton.Caption := Captions[CaptionIndex];
      Inc(CaptionIndex);
    end;
  end;
  Result := aMsgDlg.ShowModal;
end;

procedure TfListOfWorkers.ChooseWorkerButtonClick(Sender: TObject);
begin
    if MyMessageDialog('Czy na pewno wybrać tego pracownika?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
    begin
          if not (cxListOfWorkersGridDBTableView1.DataController.FocusedDataRowIndex >= 0) then Exit;


          fMainPanel.WorkerIDEditInSellTabPanel.Text := IntToStr(cdsDataOfChoosedWorkerNR_EWIDENCYJNY.AsInteger);
          fMainPanel.WorkerIDEditInSellTabPanel.SetFocus;
          Keybd_Event(VK_RETURN, 0, 0, 0);


          fListOfWorkers.Close;
    end;
end;

procedure TfListOfWorkers.CloseButtonClick(Sender: TObject);
begin
      fListOfWorkers.Close;
end;

procedure TfListOfWorkers.EditDataOfChoosenWorkerButtonClick(Sender: TObject);
begin
    if MyMessageDialog('Czy na pewno przejść do edycji danych tego pracownika?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
    begin
          IfEditDataOfChoosenWorkerButtonClickInFListOfWorkers := true;
          fEditWorkerData.Show;
    end;
end;

procedure TfListOfWorkers.FormShow(Sender: TObject);
begin
    try
           with cxListOfWorkersGridDBTableView1 do
           begin
                  BeginUpdate;
                  try
                      while ColumnCount > 0 do
                            Columns[0].Destroy;
                  finally
                  EndUpdate;
                  end;
           end;

          cdsDataOfChoosedWorker.Open;
          cdsDataOfChoosedWorker.DisableControls;
          if not (cdsDataOfChoosedWorker.IsEmpty) then
                  cdsDataOfChoosedWorker.EmptyDataSet;


          // Wczytanie danych z tabeli fMainPanel.cdsAllWorkersData zawierającej pobrane dane pracowników
          // w formatce "uMainPanel" dla pracownika o nazwisku przechowywanym przez fMainPanel.surnameOfWorkerToShow.
          // Zapisanie tych danych do tabeli cdsDataOfChoosedWorker w celu wyświetlenia ich w gridzie w tej formatce.
          fMainPanel.cdsAllWorkersData.First;
          while not fMainPanel.cdsAllWorkersData.Eof do
          begin
                if (fMainPanel.cdsAllWorkersDataNAZWISKO.AsString = fMainPanel.surnameOfWorkerToShow) then
                   begin
                                cdsDataOfChoosedWorker.Append;
                                cdsDataOfChoosedWorkerIMIE.AsString            := fMainPanel.cdsAllWorkersDataIMIE.AsString;
                                cdsDataOfChoosedWorkerNAZWISKO.AsString        := fMainPanel.cdsAllWorkersDataNAZWISKO.AsString;
                                cdsDataOfChoosedWorkerADRES.AsString           := fMainPanel.cdsAllWorkersDataADRES.AsString;
                                cdsDataOfChoosedWorkerKOD_POCZTOWY.AsString    := fMainPanel.cdsAllWorkersDataKOD_POCZTOWY.AsString;
                                cdsDataOfChoosedWorkerULICA.AsString           := fMainPanel.cdsAllWorkersDataULICA.AsString;
                                cdsDataOfChoosedWorkerZAKŁAD.AsString          := fMainPanel.cdsAllWorkersDataZAKŁAD.AsString;
                                cdsDataOfChoosedWorkerNR_EWIDENCYJNY.AsInteger := fMainPanel.cdsAllWorkersDataNR_EWIDENCYJNY.AsInteger;
                                cdsDataOfChoosedWorkerHASŁO.AsString           := fMainPanel.cdsAllWorkersDataHASŁO.AsString;
                                cdsDataOfChoosedWorker.Post;
                   end;
                   fMainPanel.cdsAllWorkersData.Next;
          end;

          cdsDataOfChoosedWorker.EnableControls;
          cxListOfWorkersGridDBTableView1.DataController.CreateAllItems;
          // Zmienna wykorzystywana przez formatkę "uEditWorkerData".
          IfEditDataOfChoosenWorkerButtonClickInFListOfWorkers := false;
    except
         ShowMessage('Nie udało załadować się danych wybranego pracownika');
    end;
end;

end.
