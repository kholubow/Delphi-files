unit uMainPanel;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.StrUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  dxBarBuiltInMenu,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxPC,
  Vcl.ExtCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  DBAccess,
  IBC,
  MemDS,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  dxDateRanges,
  cxDBData,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  Datasnap.DBClient,
  System.ImageList,
  Vcl.ImgList,
  cxImageList,
  cxContainer,
  cxLabel,
  dxPSGlbl,
  dxPSUtl,
  dxPSEngn,
  dxPrnPg,
  dxBkgnd,
  dxWrap,
  dxPrnDev,
  dxPSCompsProvider,
  dxPSFillPatterns,
  dxPSEdgePatterns,
  dxPSPDFExportCore,
  dxPSPDFExport,
  cxDrawTextUtils,
  dxPSPrVwStd,
  dxPSPrVwAdv,
  dxPSPrVwRibbon,
  dxPScxPageControlProducer,
  dxPScxGridLnk,
  dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers,
  dxPScxExtEditorProducers,
  dxPSCore,
  dxPSContainerLnk,
  dxmdaset,
  dxPScxCommon,
  cxGridExportLink,
  JvCsvData,
  Math,
  RpRender,
  RpRenderCanvas,
  RpRenderJPEG,
  RpDefine,
  RpBase,
  RpSystem,
  MidasLib,
  GetWorkersDataThread,
  ImportDataFromCSVToDBThread;
type
  TfMainPanel = class(TForm)
    gpMainPanel:                                 TGridPanel;
    cxMainPageControl:                           TcxPageControl;
    cxSellTabSheet:                              TcxTabSheet;
    gpSellPanel:                                 TGridPanel;
    cxReportForSellsTabSheet:                    TcxTabSheet;
    gpReportForSellsPanel:                       TGridPanel;
    cxImportCSVFileToDBTabSheet:                 TcxTabSheet;
    gpImportCSVPanel:                            TGridPanel;
    cxModifyPricesTabSheet:                      TcxTabSheet;
    gpModifyPricesPanel:                         TGridPanel;
    cxCloseAppTabSheet:                          TcxTabSheet;
    gpCloseAppPanel:                             TGridPanel;
    WorkerRadioButton:                           TRadioButton;
    DateRangeRadioButton:                        TRadioButton;
    DateFromTimePicker:                          TDateTimePicker;
    DateToTimePicker:                            TDateTimePicker;
    GenerateReportButton:                        TButton;
    ibcdbDFM:                                    TIBCConnection;
    ibctOnlySave:                                TIBCTransaction;
    ibctOnlyLoad:                                TIBCTransaction;
    dsReportForAllSells:                         TDataSource;
    ibcspGetWorkersOrders:                       TIBCStoredProc;
    cxAllSellsGridDBTableView1:                  TcxGridDBTableView;
    cxAllSellsGridLevel1:                        TcxGridLevel;
    cxAllSellsGrid:                              TcxGrid;
    cdsReportForAllSells:                        TClientDataSet;
    cdsReportForAllSellsODWO_ID:                 TStringField;
    cdsReportForAllSellsIMIE:                    TStringField;
    cdsReportForAllSellsNAZWISKO:                TStringField;
    cdsReportForAllSellsADRES:                   TStringField;
    cdsReportForAllSellsKOD_POCZTOWY:            TStringField;
    cdsReportForAllSellsULICA:                   TStringField;
    cdsReportForAllSellsZAK�AD:                  TStringField;
    RefreshDataButtonInReportForSellsMode:       TButton;
    WorkerIDEditInReportForSells:                TEdit;
    fMainPanelCxImageList:                       TcxImageList;
    cdsReportForAllSellsUSER_ID:                 TStringField;
    ibcspGetAllProductsInfo:                     TIBCStoredProc;
    cdsAllProductsInfo:                          TClientDataSet;
    cdsAllProductsInfoODWO_ID:                   TIntegerField;
    cdsAllProductsInfoNAME:                      TStringField;
    cdsAllProductsInfoNAME_OF_FABRIC:            TStringField;
    cdsReportForAllSellsDATA_ZAKUPU:             TDateTimeField;
    cdsReportForAllSellsILO��:                   TIntegerField;
    CheckProductRadioButton:                     TRadioButton;
    SellRadioButton:                             TRadioButton;
    cxWorkerDataLabel:                           TcxLabel;
    cxProductLabel:                              TcxLabel;
    SearchWorkerButton:                          TButton;
    WorkerIDEditInSellTabPanel:                  TEdit;
    ProductIDEdit:                               TEdit;
    cxSummaryGridDBTableView1:                   TcxGridDBTableView;
    cxSummaryGridLevel1:                         TcxGridLevel;
    cxSummaryGrid:                               TcxGrid;
    CancelCurrentSellingButton:                  TButton;
    DeleteCurrentSummaryPositionButton:          TButton;
    GenerateReportForSellButton:                 TButton;
    FinalizeSellButton:                          TButton;
    ChangeAmountOfChoosenProductToSellButton:    TButton;
    cdsAllWorkersData:                           TClientDataSet;
    cdsAllWorkersDataIMIE:                       TStringField;
    cdsAllWorkersDataNAZWISKO:                   TStringField;
    cdsAllWorkersDataADRES:                      TStringField;
    cdsAllWorkersDataKOD_POCZTOWY:               TStringField;
    cdsAllWorkersDataULICA:                      TStringField;
    cdsAllWorkersDataZAK�AD:                     TStringField;
    cdsAllWorkersDataNR_EWIDENCYJNY:             TIntegerField;
    cdsAllWorkersDataHAS�O:                      TStringField;
    cxImportCSVReportGridDBTableView1:           TcxGridDBTableView;
    cxImportCSVReportGridLevel1:                 TcxGridLevel;
    cxImportCSVReportGrid:                       TcxGrid;
    GenerateReportImportCSVButton:               TButton;
    LoadCSVFileButton:                           TButton;
    cxModifyPricesGridDBTableView1:              TcxGridDBTableView;
    cxModifyPricesGridLevel1:                    TcxGridLevel;
    cxModifyPricesGrid:                          TcxGrid;
    GenerateReportInModifyPriceModeButton:       TButton;
    RefreshDataButtonInModifyPricesMode:         TButton;
    ModifyPriceButton:                           TButton;
    cdsReportForAllSellsNAZWA:                   TStringField;
    cdsReportForAllSellsTKANINA_NAZWA:           TStringField;
    dxcpAllSellsGridDataForPrint:                TdxComponentPrinter;
    dxcpAllSellsGridDataForAllSells:             TdxGridReportLink;
    dxcpAllSellsGridDataForChoosedWorker:        TdxGridReportLink;
    dxcpAllSellsGridDataForDateRange:            TdxGridReportLink;
    jvcsvDataFromFile:                           TJvCsvDataSet;
    OpenDialog1:                                 TOpenDialog;
    cdsImportCSVReportGrid:                      TClientDataSet;
    cdsImportCSVReportGridODWO_ID:               TStringField;
    cdsImportCSVReportGridAB:                    TStringField;
    cdsImportCSVReportGridNAZWA:                 TStringField;
    cdsImportCSVReportGridNAZWA_TKA1:            TStringField;
    cdsImportCSVReportGridNAZWA_TKA2:            TStringField;
    cdsImportCSVReportGridNAZWA_KORPUSU:         TStringField;
    cdsImportCSVReportGridILOSC:                 TStringField;
    cdsImportCSVReportGridARTYKUL_RODZIC_ID:     TStringField;
    cdsImportCSVReportGridKLASYFIKACJA:          TStringField;
    cdsImportCSVReportGridQBM:                   TFloatField;
    cdsImportCSVReportGridCENA:                  TFloatField;
    dsImportCSVReportGrid:                       TDataSource;
    cdsImportCSVReportGridPOW�D_B��DU:           TStringField;
    dxcpPrintGridReportImportCSV:                TdxGridReportLink;
    dsModifyPricesGrid:                          TDataSource;
    cdsModifyPricesGrid:                         TClientDataSet;
    cdsModifyPricesGridODWO_ID:                  TIntegerField;
    cdsModifyPricesGridAB:                       TStringField;
    cdsModifyPricesGridNAZWA:                    TStringField;
    cdsModifyPricesGridTKANINA_NAZWA:            TStringField;
    cdsModifyPricesGridTKANINA_NAZWA2:           TStringField;
    cdsModifyPricesGridNAZWA_KORPUSU:            TStringField;
    cdsModifyPricesGridILO��:                    TIntegerField;
    cdsModifyPricesGridARTYKU�_RODZIC_ID:        TIntegerField;
    cdsModifyPricesGridQBM:                      TFloatField;
    cdsModifyPricesGridCENA:                     TFloatField;
    cdsModifyPricesGridCENA_Z_VAT:               TFloatField;
    ibcspModifyArticlePrice:                     TIBCStoredProc;
    dxcpPrintModifyPricesGrid:                   TdxGridReportLink;
    OdwoIDSearchingModeInModifyPricesGrid:       TEdit;
    NameSearchingModeInModifyPricesGrid:         TEdit;
    ibcspGetProductInfo:                         TIBCStoredProc;
    dsCheckProductInfoSummaryGrid:               TDataSource;
    cdsCheckProductInfoSummaryGrid:              TClientDataSet;
    cdsCheckProductInfoSummaryGridODWO_ID:       TIntegerField;
    cdsCheckProductInfoSummaryGridAB:            TStringField;
    cdsCheckProductInfoSummaryGridNAZWA:         TStringField;
    cdsCheckProductInfoSummaryGridNAZWA_TKANINY: TStringField;
    cdsCheckProductInfoSummaryGridNAZWA_KORPUSU: TStringField;
    cdsCheckProductInfoSummaryGridILO��:         TIntegerField;
    cdsCheckProductInfoSummaryGridQBM:           TFloatField;
    cdsCheckProductInfoSummaryGridCENA:          TFloatField;
    cdsCheckProductInfoSummaryGridCENA_Z_VAT:    TFloatField;
    dsForSellingProcess:                         TDataSource;
    cdsForSellingProcess:                        TClientDataSet;
    cdsForSellingProcessNAZWA:                   TStringField;
    cdsForSellingProcessETYKIETA:                TStringField;
    cdsForSellingProcessILO��_Z_BAZY:            TIntegerField;
    cdsForSellingProcessILO��_DO_SPRZEDANIA:     TIntegerField;
    rvsSummaryGridReport:                        TRvSystem;
    rvrSummaryGridReportToJpeg:                  TRvRenderJpeg;
    ibcspCurrentServerDate:                      TIBCStoredProc;
    ibcspWorkersPurchase:                        TIBCStoredProc;
    ibcspGetWorkersOrdersID:                     TIBCStoredProc;
    ibcspRollbackWorkerPurchase:                 TIBCStoredProc;
    cdsGetWorkersOrdersID:                       TClientDataSet;
    cdsGetWorkersOrdersIDORDER_ID:               TIntegerField;
    cdsGetWorkersOrdersIDUSER_ID:                TStringField;
    cdsGetWorkersOrdersIDLABEL:                  TStringField;
    cdsGetWorkersOrdersIDDATE:                   TDateTimeField;


    procedure FormShow                                        (Sender: TObject);
    procedure RefreshDataButtonInReportForSellsModeClick      (Sender: TObject);
    procedure WorkerRadioButtonClick                          (Sender: TObject);
    procedure WorkerIDEditInReportForSellsChange              (Sender: TObject);
    procedure DateRangeRadioButtonClick                       (Sender: TObject);
    procedure DateFromTimePickerChange                        (Sender: TObject);
    procedure DateToTimePickerChange                          (Sender: TObject);
    procedure GenerateReportButtonClick                       (Sender: TObject);
    procedure LoadCSVFileButtonClick                          (Sender: TObject);
    procedure GenerateReportImportCSVButtonClick              (Sender: TObject);
    procedure RefreshDataButtonInModifyPricesModeClick        (Sender: TObject);
    procedure ModifyPriceButtonClick                          (Sender: TObject);
    procedure GenerateReportInModifyPriceModeButtonClick      (Sender: TObject);
    procedure OdwoIDSearchingModeInModifyPricesGridChange     (Sender: TObject);
    procedure NameSearchingModeInModifyPricesGridChange       (Sender: TObject);
    procedure cxCloseAppTabSheetShow                          (Sender: TObject);
    procedure CheckProductRadioButtonClick                    (Sender: TObject);
    procedure SellRadioButtonClick                            (Sender: TObject);
    procedure ProductIDEditKeyPress                           (Sender: TObject;
      var Key: Char);
    procedure WorkerIDEditInSellTabPanelKeyPress              (Sender: TObject;
      var Key: Char);
    procedure SearchWorkerButtonClick                         (Sender: TObject);
    procedure CancelCurrentSellingButtonClick                 (Sender: TObject);
    procedure DeleteCurrentSummaryPositionButtonClick         (Sender: TObject);
    procedure GenerateReportForSellButtonClick                (Sender: TObject);
    procedure rvsSummaryGridReportPrint                       (Sender: TObject);
    procedure ChangeAmountOfChoosenProductToSellButtonClick   (Sender: TObject);
    procedure FinalizeSellButtonClick                         (Sender: TObject);
    procedure GetWorkersDataThreadFinished                    (Sender: TObject;
      const Success: Boolean);
    procedure ImportDataFromCSVToDBThreadFinished             (Sender: TObject;
      const Success: Boolean);


  private
    { Private declarations }
    dateFrom, dateTo:                                   TDateTime;
    delayForClosingApp:                                 integer;
    pauseInProcedureTfMainPanelFormShow:                Boolean;
    pauseInProcedureTfMainPanelLoadCSVFileButtonClick:  Boolean;


    procedure WMSysCommand (var message:twmsyscommand); message WM_SYSCOMMAND;
    procedure MyShowHint   (var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);


  public
    { Public declarations }
    surnameOfWorkerToShow, workerId:            string;
    delayInFinalizeSellButtonClickInFMainPanel: boolean;
    IfFinalizeSellButtonClickInFMainPanel:      boolean;
  end;

var
  fMainPanel: TfMainPanel;

implementation

{$R *.dfm}

uses uListOfWorkers,
     uEditWorkerData,
     uInfoBox;

// Funkcja do generowania w�asnych okien dialogowych.
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

// Funkcja do sprawdzania, czy dana zmienna jest liczb�.
function isNumber(s:string):boolean;
var i:integer;
begin
i:=1;
while (i<=length(s)) and (s[i] in ['0'..'9','.','A'..'F','a'..'f']) do
inc(i);
result:=i>length(s);
end;

procedure TfMainPanel.WMSysCommand(var message: TWMSysCommand);
begin
       if message.CmdType and $fff0=SC_CLOSE then
          if MyMessageDialog('Czy na pewno zamkn�� aplikacj�?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
          begin
                ibcdbDFM.Close;
                ibcspGetWorkersOrders.Close;
                ibcspGetAllProductsInfo.Close;
                ibcspModifyArticlePrice.Close;
                ibcspCurrentServerDate.Close;
                ibcspGetProductInfo.Close;
                ibcspWorkersPurchase.Close;
                ibcspGetWorkersOrdersID.Close;
                ibcspRollbackWorkerPurchase.Close;
                application.terminate;
          end;
       if message.CmdType and $fff0<>SC_CLOSE then
          inherited;
end;

// Procedura definiuj�ca w�asn� stylistyk� podpowiedzi pojawiaj�cych si� po najechaniu
// kursorem na jeden z input�w w programie.
procedure TfMainPanel.MyShowHint(var HintStr: string; var CanShow: Boolean;
  var HintInfo: THintInfo);
var
  i: integer;
begin
  for I := 0 to Application.ComponentCount-1 do
  begin
    if Application.Components[0] is THintWindow then
    begin
      with THintWindow(Application.Components[0]) do
      begin
        Canvas.Font.Name   := 'Tahoma';
        Canvas.Font.Size   := 16;
        Canvas.Font.Style  := [fsBold];
        Canvas.Brush.Color := clTeal;
      end;
    end;
  end;
end;

procedure TfMainPanel.RefreshDataButtonInModifyPricesModeClick(Sender: TObject);
begin
    try
           with cxModifyPricesGridDBTableView1 do
           begin
                  BeginUpdate;
                  try
                      while ColumnCount > 0 do
                            Columns[0].Destroy;
                  finally
                  EndUpdate;
                  end;
           end;

          ibcspGetAllProductsInfo.Close;
          ibcspGetAllProductsInfo.Open;

          cdsModifyPricesGrid.Open;
          cdsModifyPricesGrid.DisableControls;
          if not (cdsModifyPricesGrid.IsEmpty) then
                  cdsModifyPricesGrid.EmptyDataSet;

          // Pobranie danych wszystkich artyku��w do tabeli cdsModifyPricesGrid wraz z przeliczeniem CENA na CENA_Z_VAT
          while not ibcspGetAllProductsInfo.Eof do
          begin

                cdsModifyPricesGrid.Append;
                cdsModifyPricesGridODWO_ID.AsInteger           := ibcspGetAllProductsInfo.FieldByName('ODWO_ID_TO_RETURN').AsInteger;
                cdsModifyPricesGridAB.AsAnsiString             := ibcspGetAllProductsInfo.FieldByName('AB_TO_RETURN').Text;
                cdsModifyPricesGridNAZWA.AsAnsiString          := ibcspGetAllProductsInfo.FieldByName('NAME_TO_RETURN').Text;
                cdsModifyPricesGridTKANINA_NAZWA.AsAnsiString  := ibcspGetAllProductsInfo.FieldByName('NAME_OF_FABRIC_TO_RETURN').Text;
                cdsModifyPricesGridTKANINA_NAZWA2.AsAnsiString := ibcspGetAllProductsInfo.FieldByName('NAME_OF_FABRIC2_TO_RETURN').Text;
                cdsModifyPricesGridNAZWA_KORPUSU.AsAnsiString  := ibcspGetAllProductsInfo.FieldByName('NAME_OF_CORPUS_TO_RETURN').Text;
                cdsModifyPricesGridILO��.AsInteger             := ibcspGetAllProductsInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger;
                cdsModifyPricesGridARTYKU�_RODZIC_ID.AsInteger := ibcspGetAllProductsInfo.FieldByName('PARENT_OF_ARTICLE_TO_RETURN').AsInteger;
                cdsModifyPricesGridQBM.AsFloat                 := ibcspGetAllProductsInfo.FieldByName('QBM_TO_RETURN').AsFloat;
                cdsModifyPricesGridCENA.AsFloat                := ibcspGetAllProductsInfo.FieldByName('PRICE_TO_RETURN').AsFloat;
                cdsModifyPricesGridCENA_Z_VAT.AsFloat          := RoundTo(ibcspGetAllProductsInfo.FieldByName('PRICE_TO_RETURN').AsFloat * 1.23,-2);
                cdsModifyPricesGrid.Post;
                ibcspGetAllProductsInfo.Next;

          end;
          cdsModifyPricesGrid.EnableControls;
          cxModifyPricesGridDBTableView1.DataController.CreateAllItems;
    except
        ShowMessage('Nie uda�o za�adowa� si� danych wszystkich produkt�w');
    end;
end;

procedure TfMainPanel.RefreshDataButtonInReportForSellsModeClick(Sender: TObject);
var
     productLabel:       string;
     C, M, N, C2, delay: integer;
begin
     try
           with cxAllSellsGridDBTableView1 do
           begin
                  BeginUpdate;
                  try
                      while ColumnCount > 0 do
                            Columns[0].Destroy;
                  finally
                  EndUpdate;
                  end;
           end;
           // Ustawienie picker�w od dat na niedost�pne.
           // Od�wie�enie danych - wyczyszczenie przy okazji wszystkich opcji wyboru
           // oraz filtrowania danych.
           WorkerIDEditInReportForSells.Clear;
           DateFromTimePicker.Enabled           := false;
           DateToTimePicker.Enabled             := false;
           GenerateReportButton.Enabled         := false;
           WorkerIDEditInReportForSells.Enabled := false;
           WorkerRadioButton.Checked            := false;
           DateRangeRadioButton.Checked         := false;
           cdsReportForAllSells.Filtered        := false;
           cdsReportForAllSells.CancelRange;



          ibcspGetWorkersOrders.Close;
          ibcspGetWorkersOrders.Open;
          ibcspGetAllProductsInfo.Close;
          ibcspGetAllProductsInfo.Open;



          cdsAllProductsInfo.Open;
          cdsAllProductsInfo.DisableControls;
          if not (cdsAllProductsInfo.IsEmpty) then
                  cdsAllProductsInfo.EmptyDataSet;

          // Pobranie danych o wszystkich artyku�ach do lokalnej tabeli cdsAllProductsInfo
          try
              while not ibcspGetAllProductsInfo.Eof do
              begin

                    cdsAllProductsInfo.Append;
                    cdsAllProductsInfoODWO_ID.AsInteger       := ibcspGetAllProductsInfo.FieldByName('ODWO_ID_TO_RETURN').AsInteger;
                    cdsAllProductsInfoNAME.AsString           := ibcspGetAllProductsInfo.FieldByName('NAME_TO_RETURN').Text;
                    cdsAllProductsInfoNAME_OF_FABRIC.AsString := ibcspGetAllProductsInfo.FieldByName('NAME_OF_FABRIC_TO_RETURN').Text;

                    cdsAllProductsInfo.Post;
                    ibcspGetAllProductsInfo.Next;

              end;
              cdsAllProductsInfo.EnableControls;
          except
              ShowMessage('Nie uda�o za�adowa� si� danych wszystkich produkt�w');
          end;

          // Sprawdzenie, czy dane o pracownikach zosta�y pobrane przy rozpocz�ciu pracy programu.
          // Pobieranie tych danych w procedurze: TfMainPanel.FormShow(Sender: TObject);
          if (cdsAllWorkersData.IsEmpty) then
              ShowMessage('Program nie posiada pobranych danych pracownik�w');


          if (cdsAllProductsInfo.IsEmpty) then
              ShowMessage('Program nie posiada pobranych danych produkt�w');


          cdsReportForAllSells.Open;
          cdsReportForAllSells.DisableControls;
          if not (cdsReportForAllSells.IsEmpty) then
                  cdsReportForAllSells.EmptyDataSet;


          // Pobranie danych o wszystkich sprzeda�ach
          // ca�a p�tla while not ibcspGetWorkersOrders.Eof
          // Tabela: cdsReportForAllSells
          // Zebranie danych adresowych pracownik�w, danych o artyku�ach
          // Zebranie tego w ca�o�� jako dane sprzeda�owe w tabeli: cdsReportForAllSells
          while not ibcspGetWorkersOrders.Eof do
          begin

                C                                            := 0;
                C2                                           := 0;
                productLabel                                 := ibcspGetWorkersOrders.FieldByName('LABEL_TO_RETURN').Text;
                cdsReportForAllSells.Append;
                cdsReportForAllSellsILO��.AsInteger          := ibcspGetWorkersOrders.FieldByName('AMOUNT_TO_RETURN').AsInteger;
                cdsReportForAllSellsDATA_ZAKUPU.AsDateTime   := ibcspGetWorkersOrders.FieldByName('DATE_TO_RETURN').AsDateTime;
                cdsReportForAllSellsADRES.AsString           := ibcspGetWorkersOrders.FieldByName('ADDRESS_TO_RETURN').Text;
                cdsReportForAllSellsKOD_POCZTOWY.AsString    := ibcspGetWorkersOrders.FieldByName('POST_CODE_TO_RETURN').Text;
                cdsReportForAllSellsULICA.AsString           := ibcspGetWorkersOrders.FieldByName('STREET_TO_RETURN').Text;
                cdsReportForAllSellsZAK�AD.AsString          := ibcspGetWorkersOrders.FieldByName('INSTITUTION_TO_RETURN').Text;
                cdsReportForAllSellsUSER_ID.AsString         := ibcspGetWorkersOrders.FieldByName('USER_ID_TO_RETURN').Text;
                // Uzupe�nienie kolumny ODWO_ID.
                // Uzyskanie samego ODWO_ID z etykiety, je�eli trzeba w danym przypadku.
                if ContainsText(productLabel, '/') then
                begin

                      for M := 0 to Length(productLabel) do
                      begin
                            if (productLabel[M] = '/') then
                                C := C + 1;


                            if (C = 2) then
                            begin

                                  Delete(productLabel,M,Length(productLabel));
                                  C := 0;

                            end;

                      end;


                      for N := 0 to Length(productLabel) do
                      begin

                            if (productLabel[N] = '/') then
                                C2 := C2 + 1;


                            if (C2 = 1) then
                            begin

                                Delete(productLabel,1,N);
                                C2 := 0;

                            end;

                      end;
                      cdsReportForAllSellsODWO_ID.AsString := productLabel;
                end else
                begin
                      cdsReportForAllSellsODWO_ID.AsString := productLabel;
                end;

                // Praca z pobranymi danymi o artyku�ach z tabeli: cdsAllProductsInfo
                // Uzyskanie nazwy artyku�u i nazwy tkaniny.
                delay := 0;
                cdsAllProductsInfo.First;
                while not cdsAllProductsInfo.Eof do
                begin

                      if (IntToStr(cdsAllProductsInfoODWO_ID.AsInteger) = cdsReportForAllSellsODWO_ID.AsString) then
                      begin

                           if (delay = 0) then
                           begin

                                inc(delay);
                                cdsReportForAllSellsNAZWA.AsString         := cdsAllProductsInfoNAME.AsString;
                                cdsReportForAllSellsTKANINA_NAZWA.AsString := cdsAllProductsInfoNAME_OF_FABRIC.AsString;

                           end;

                      end;
                      cdsAllProductsInfo.Next;

                end;

                // Praca z pobranymi danymi pracownik�w z tabeli cdsAllWorkersData
                // Uzyskanie imienia i nazwiska danego pracownika.
                delay := 0;
                cdsAllWorkersData.First;
                while not cdsAllWorkersData.Eof do
                begin

                      if (cdsReportForAllSellsUSER_ID.AsString = cdsAllWorkersDataHAS�O.AsString) OR
                         (cdsReportForAllSellsUSER_ID.AsString = cdsAllWorkersDataNR_EWIDENCYJNY.AsString) then
                      begin

                           if (delay = 0) then
                           begin

                                inc(delay);
                                cdsReportForAllSellsIMIE.AsString     := cdsAllWorkersDataIMIE.AsString;
                                cdsReportForAllSellsNAZWISKO.AsString := cdsAllWorkersDataNAZWISKO.AsString;

                           end;

                      end;
                      cdsAllWorkersData.Next;

                end;

                cdsReportForAllSells.Post;
                ibcspGetWorkersOrders.Next;

          end;
          cdsReportForAllSells.EnableControls;
          cxAllSellsGridDBTableView1.DataController.CreateAllItems;
          GenerateReportButton.Enabled := true;
     except
          ShowMessage('Nie uda�o za�adowa� si� koszyk�w wszystkich pracownik�w');
     end;
end;

procedure TfMainPanel.rvsSummaryGridReportPrint(Sender: TObject);
var
    delay: integer;
begin
    ibcspCurrentServerDate.Close;
    ibcspCurrentServerDate.Open;
      with Sender as TBaseReport do
      begin
            NewLine;
            ClearTabs;
            SetTab(3, pjRight, 4.5, 0, 0, 0);
            SetFont('Arial', 12);
            NewLine;
            NewLine;
            // Wygenerowanie daty w raporcie sprzeda�owym na podstawie aktualnej daty pobranej z serwera.
            PrintTab('Dobre Miasto, dnia ' +
                      FormatDateTime('dd mmmm yyyy',ibcspCurrentServerDate.FieldByName('CURRENT_DATE_TO_RETURN').AsDateTime) + ' r.');
            NewLine;
            NewLine;
            NewLine;
            ClearTabs;
            // Odbiorca o�wiadczenia - prawy g�rny r�g dokumentu (pod dat�)
            SetTab(5, pjLeft, 4.5, 0, 0, 0);
            PrintTab('Do Pracodawcy:');
            NewLine;
            Bold := True;
            PrintTab('DFM Sp. z o.o.');
            Bold := False;
            NewLine;
            PrintTab('ul. Olszty�ska 21');
            NewLine;
            PrintTab('11-040 Dobre Miasto');
            NewLine;
            NewLine;
            NewLine;
            NewLine;
            ClearTabs;


            // Tre�� o�wiadczenia
            Bold := True;
            PrintCenter('O�WIADCZENIE', 4);
            Bold := False;
            NewLine;
            NewLine;
            NewLine;



            SetTab(0.5, pjLeft, 7, 0, 0, 0);
            PrintTab('W zwi�zku z zakupem od Pracodawcy nast�puj�cych mebli:');
            ClearTabs;
            NewLine;
            NewLine;


            // Wczytanie z tabeli przechowuj�cej artyku�y aktualnie trwaj�cej sprzeda�y (cdsForSellingProcess) odpowiednich kolumn,
            // wypisanie ich za pomoc� p�tli while.
            SetTab(0.5, pjLeft, 3.5, 0, 0, 0);
            SetTab(4, pjLeft, 3.5, 0, 0, 0);
            SetTab(5.5, pjRight, 2, 0, 0, 0);
            Bold := True;
            PrintTab('NAZWA');
            PrintTab('ETYKIETA');
            PrintTab('ILOSC');
            Bold := False;
            NewLine;
            cdsForSellingProcess.First;
            while not cdsForSellingProcess.Eof do
            begin
                  PrintTab(cdsForSellingProcessNAZWA.AsString);
                  PrintTab(cdsForSellingProcessETYKIETA.AsString);
                  PrintTab(cdsForSellingProcessILO��_DO_SPRZEDANIA.AsString);
                  NewLine;
                  cdsForSellingProcess.Next;
            end;
            ClearTabs;


            NewLine;
            NewLine;
            NewLine;
            NewLine;
            NewLine;
            NewLine;
            SetTab(0.5, pjLeft, 7, 0, 0, 0);
            PrintTab('o�wiadczam, i�:');
            NewLine;
            PrintTab('- wiem, �e zakupione meble nie s� fabrycznie nowe i posiadaj� wady lub uszkodzenia,');
            NewLine;
            PrintTab('- wiem, �e zakupione meble s� meblami poreklamacyjnymi i nie s� obj�te gwarancj�,');
            NewLine;
            PrintTab('- meble kupuj� na potrzeby w�asne,');
            NewLine;
            PrintTab('- zobowi�zuj� si� do nieodsprzedania mebli osobie trzeciej, w szczeg�lno�ci na internetowych');
            NewLine;
            PrintTab('   serwisach lub portalach aukcyjnych.');
            NewLine;
            NewLine;
            NewLine;


            // Stopka o�wiadczenia - imi� i nazwisko pracownika znalezione w tabeli cdsAllWorkersData po numerze ewidencyjnym / kodzie z przepustki.
            delay := 0;
            cdsAllWorkersData.First;
            while not cdsAllWorkersData.Eof do
            begin
                if (workerId = cdsAllWorkersDataHAS�O.AsString) OR
                   (workerId = cdsAllWorkersDataNR_EWIDENCYJNY.AsString) then
                   begin
                   if (delay = 0) then
                   begin

                        inc(delay);
                        PrintTab(cdsAllWorkersDataIMIE.AsString + ' ' + cdsAllWorkersDataNAZWISKO.AsString);

                   end;

                end;
            cdsAllWorkersData.Next;
            end;
            NewLine;
            NewLine;
            ClearTabs;



            SetTab(4.3, pjLeft, 3.25, 0, 0, 0);
            PrintTab('..........................................................................................................');
            ClearTabs;



            SetTab(5.3, pjLeft, 3, 0, 0, 0);
            NewLine;
            PrintTab('(czytelny podpis)');
            ClearTabs;
   end;
end;

procedure TfMainPanel.SearchWorkerButtonClick(Sender: TObject);
begin
      if not (cdsAllWorkersData.IsEmpty) then
      begin
              surnameOfWorkerToShow := AnsiUpperCase(InputBox('Prosz� poda� nazwisko pracownika', 'Nazwisko pracownika: ', ''));
              fListOfWorkers.Show;
      end else
      begin
              ShowMessage('Program nie posiada pobranych danych pracownik�w');
      end;
end;

procedure TfMainPanel.SellRadioButtonClick(Sender: TObject);
begin
    with cxSummaryGridDBTableView1 do
    begin
          BeginUpdate;
          try
                while ColumnCount > 0 do
                      Columns[0].Destroy;
          finally
          EndUpdate;
          end;
    end;


    WorkerIDEditInSellTabPanel.Enabled                  := true;
    CancelCurrentSellingButton.Enabled                  := true;
    DeleteCurrentSummaryPositionButton.Enabled          := true;
    FinalizeSellButton.Enabled                          := true;
    GenerateReportForSellButton.Enabled                 := true;
    SearchWorkerButton.Enabled                          := true;
    ChangeAmountOfChoosenProductToSellButton.Enabled    := true;
    cxSummaryGridDBTableView1.DataController.DataSource := dsForSellingProcess;
    cxSummaryGridDBTableView1.DataController.CreateAllItems;
end;

procedure TfMainPanel.WorkerIDEditInReportForSellsChange(Sender: TObject);
begin
    // Zastosowanie filtra na tabeli cdsReportForAllSells
    // Mo�liwo�� wyszukiwania po numerze ewidencyjnym lub kodzie z przepustki.
    cdsReportForAllSells.Filtered := false;
    cdsReportForAllSells.CancelRange;
    cdsReportForAllSells.Filter   := 'USER_ID = ' + QuotedStr(WorkerIDEditInReportForSells.Text);

    if not (WorkerIDEditInReportForSells.Text = '') then
            cdsReportForAllSells.Filtered     := true;
end;

procedure TfMainPanel.WorkerIDEditInSellTabPanelKeyPress(Sender: TObject;
  var Key: Char);
begin
if ord(Key) = VK_RETURN then
begin
        workerId := WorkerIDEditInSellTabPanel.Text;
end;
end;

procedure TfMainPanel.WorkerRadioButtonClick(Sender: TObject);
begin
    // Wy��czenie picker�w dat.
    // Wyczyszczenie filtra danych w tabeli ze wszystkimi danymi sprzeda�owymi.
    // W��czenie inputa do danych u�ywanych do wyszukania sprzeda�y konkretnego pracownika.
    DateFromTimePicker.Enabled           := false;
    DateToTimePicker.Enabled             := false;
    GenerateReportButton.Enabled         := true;
    WorkerIDEditInReportForSells.Enabled := true;
    cdsReportForAllSells.Filtered        := false;
    cdsReportForAllSells.CancelRange;
end;

procedure TfMainPanel.CancelCurrentSellingButtonClick(Sender: TObject);
begin
if MyMessageDialog('Czy na pewno anulowa� obecn� sprzeda�?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
begin
      CheckProductRadioButton.Checked := false;
      SellRadioButton.Checked         := false;
      WorkerIDEditInSellTabPanel.Clear;
      ProductIDEdit.Clear;

      cdsCheckProductInfoSummaryGrid.Open;
      cdsCheckProductInfoSummaryGrid.DisableControls;
      if not (cdsCheckProductInfoSummaryGrid.IsEmpty) then
              cdsCheckProductInfoSummaryGrid.EmptyDataSet;

      cdsCheckProductInfoSummaryGrid.EnableControls;


      cdsForSellingProcess.Open;
      cdsForSellingProcess.DisableControls;
      if not (cdsForSellingProcess.IsEmpty) then
              cdsForSellingProcess.EmptyDataSet;

      cdsForSellingProcess.EnableControls;
end;
end;

procedure TfMainPanel.ChangeAmountOfChoosenProductToSellButtonClick(
  Sender: TObject);
var
    newAmountOfProductToBuy: string;
begin
      if MyMessageDialog('Czy na pewno zmieni� ilo�� do sprzedania zaznaczonego artyku�u?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
      begin
           if (cdsForSellingProcess.IsEmpty) then
           begin
               ShowMessage('Dodaj co najmniej jeden produkt do koszyka w celu modyfikacji ilo�ci do sprzedania');
               Exit;
           end;


           newAmountOfProductToBuy := InputBox('Prosz� poda� now� ilo��', 'Nowa ilo��: ', '');

           // Po wprowadzeniu nowej ilo�ci do zmiennej newAmountOfProductToBuy, sprawdzenie 4 rzeczy:
           // - Czy jest liczb�, przy pomocy funkcji znajduj�cej si� w kodzie IsNumber,
           // - Czy nie jest pusta.
           // - Czy jest r�wna 0.
           // - Czy nie jest wi�ksza od obecnej ilo�ci zapisanej w bazie.
           // Je�eli wszystko jest okej, przej�cie do zaktualizowania ilo�ci.
           if (IsNumber(newAmountOfProductToBuy)) then
           begin
                  if (newAmountOfProductToBuy = null) or
                     (newAmountOfProductToBuy = '') then
                  begin
                      ShowMessage('Wprowad� ilo�� w celu jej zmodyfikowania');
                  end else
                  begin
                        if (StrToInt(newAmountOfProductToBuy) = 0) then
                        begin
                              ShowMessage('Nowa ilo�� nie mo�e by� zerem. Spr�buj ponownie');
                              Exit;
                        end;

                        if (StrToInt(newAmountOfProductToBuy) > cdsForSellingProcessILO��_Z_BAZY.AsInteger) then
                        begin
                              ShowMessage('Nowa ilo�� nie mo�e by� wi�ksza od ilo�ci z bazy. Spr�buj ponownie');
                              Exit;
                        end;

                        // Wszystko okaza�o si� okej, aktualizacja ilo�ci do sprzedania wybranego artyku�u.
                        cdsForSellingProcess.Open;
                        cdsForSellingProcess.DisableControls;
                        cdsForSellingProcess.Edit;
                        cdsForSellingProcessILO��_DO_SPRZEDANIA.AsInteger := StrToInt(newAmountOfProductToBuy);
                        cdsForSellingProcess.Post;
                        cdsForSellingProcess.EnableControls;
                  end;
           end else
           begin
                  ShowMessage('Podana ilo�� nie jest liczb� lub jest mniejsza od zera, spr�buj ponownie');
           end;
      end;
end;

procedure TfMainPanel.CheckProductRadioButtonClick(Sender: TObject);
begin
    with cxSummaryGridDBTableView1 do
    begin
          BeginUpdate;
          try
                while ColumnCount > 0 do
                      Columns[0].Destroy;
          finally
          EndUpdate;
          end;
    end;


    WorkerIDEditInSellTabPanel.Enabled                  := False;
    CancelCurrentSellingButton.Enabled                  := False;
    DeleteCurrentSummaryPositionButton.Enabled          := False;
    FinalizeSellButton.Enabled                          := False;
    GenerateReportForSellButton.Enabled                 := False;
    SearchWorkerButton.Enabled                          := false;
    ChangeAmountOfChoosenProductToSellButton.Enabled    := False;
    cxSummaryGridDBTableView1.DataController.DataSource := dsCheckProductInfoSummaryGrid;
    cxSummaryGridDBTableView1.DataController.CreateAllItems;
end;

procedure TfMainPanel.cxCloseAppTabSheetShow(Sender: TObject);
begin
    inc(delayForClosingApp);
    if (delayForClosingApp > 1) then
    begin
          if (cxMainPageControl.Properties.ActivePage = cxCloseAppTabSheet) then
          begin
                    if MyMessageDialog('Czy na pewno zamkn�� aplikacj�?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
                    begin
                          ibcdbDFM.Close;
                          ibcspGetWorkersOrders.Close;
                          ibcspGetAllProductsInfo.Close;
                          ibcspModifyArticlePrice.Close;
                          ibcspCurrentServerDate.Close;
                          ibcspGetProductInfo.Close;
                          ibcspWorkersPurchase.Close;
                          ibcspGetWorkersOrdersID.Close;
                          ibcspRollbackWorkerPurchase.Close;
                          application.terminate;
                    end;
                    delayForClosingApp := 1;
          end;
    end;
end;

procedure TfMainPanel.DateFromTimePickerChange(Sender: TObject);
begin
    cdsReportForAllSells.CancelRange;
    cdsReportForAllSells.First;
    dateFrom                                                 := DateFromTimePicker.DateTime;
    cdsReportForAllSells.IndexFieldNames                     := 'DATA_ZAKUPU';
    cdsReportForAllSells.SetRange([DateToStr(dateFrom)],[DateToStr(dateTo)]);
end;

procedure TfMainPanel.DateRangeRadioButtonClick(Sender: TObject);
begin
    WorkerIDEditInReportForSells.Clear;
    DateFromTimePicker.Enabled           := true;
    DateToTimePicker.Enabled             := true;
    GenerateReportButton.Enabled         := true;
    WorkerIDEditInReportForSells.Enabled := false;
    cdsReportForAllSells.First;
    cdsReportForAllSells.Filtered        := false;
    cdsReportForAllSells.CancelRange;
end;

procedure TfMainPanel.DateToTimePickerChange(Sender: TObject);
begin
    cdsReportForAllSells.CancelRange;
    cdsReportForAllSells.First;
    dateTo                                                   := DateToTimePicker.DateTime;
    cdsReportForAllSells.IndexFieldNames                     := 'DATA_ZAKUPU';
    cdsReportForAllSells.SetRange([DateToStr(dateFrom)],[DateToStr(dateTo)]);
end;

procedure TfMainPanel.DeleteCurrentSummaryPositionButtonClick(Sender: TObject);
begin
if MyMessageDialog('Czy na pewno usun�� zaznaczon� pozycj�?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
begin
      cdsForSellingProcess.Open;
      cdsForSellingProcess.DisableControls;
      if not (cdsForSellingProcess.IsEmpty) then
              cdsForSellingProcess.Delete;

      cdsForSellingProcess.EnableControls;
end;
end;

procedure TfMainPanel.FinalizeSellButtonClick(Sender: TObject);
var
      amountOfArticlesCounter, delay, I, J, C, C2, K: integer;
      Name, Surname, productID:                       string;
begin
        if (WorkerIDEditInSellTabPanel.Text <> '') then
        begin
              if(workerId <> '') OR
                (workerId <> null) then
              begin
                      if not (cdsAllWorkersData.IsEmpty) then
                      begin
                              delay := 0;
                              cdsAllWorkersData.First;
                              // Szukanie pracownika po wprowadzonym numerze ewidencyjnym lub kodzie z przepustki i pobranie do zmiennych jego
                              // imienia i nazwiska w celu p�niejszego wygenerowania o�wiadczenia (opcjonalne).
                              while not cdsAllWorkersData.Eof do
                              begin

                                    if (workerId = cdsAllWorkersDataHAS�O.AsString) OR
                                       (workerId = cdsAllWorkersDataNR_EWIDENCYJNY.AsString) then
                                    begin

                                         if (delay = 0) then
                                         begin

                                              inc(delay);
                                              Name     := cdsAllWorkersDataIMIE.AsString;
                                              Surname  := cdsAllWorkersDataNAZWISKO.AsString;

                                         end;

                                    end;
                                    cdsAllWorkersData.Next;

                              end;

                              // delay = 1, wi�c pracownika znaleziono, mo�na kontynuowa� sprzeda�.
                              if (delay >= 1) then
                              begin
                                    // delayInFinalizeSellButtonClickInFMainPanel = False, czyli pierwszy raz jest sprawdzane, czy dany pracownik
                                    // ma uzupe�nione wszystkie dane adresowe. Je�eli nie, to wy�wietlenie formatki fEditWorkerData.
                                    // Niezale�nie, czy uzupe�nimy dane adresowe, sprzeda� b�dzie mog�a by� kontynuowana:
                                    // delayInFinalizeSellButtonClickInFMainPanel = true
                                    if not (delayInFinalizeSellButtonClickInFMainPanel) then
                                    begin
                                            delay := 0;
                                            cdsAllWorkersData.First;
                                            while not cdsAllWorkersData.Eof do
                                            begin

                                                  if (cdsAllWorkersDataHAS�O.AsString          = workerId) OR
                                                     (cdsAllWorkersDataNR_EWIDENCYJNY.AsString = workerId) then
                                                  begin
                                                       inc(delay);
                                                       if (delay = 1) then
                                                       begin

                                                             if (cdsAllWorkersDataADRES.AsString        = '') OR
                                                                (cdsAllWorkersDataKOD_POCZTOWY.AsString = '') OR
                                                                (cdsAllWorkersDataULICA.AsString        = '') OR
                                                                (cdsAllWorkersDataZAK�AD.AsString       = '') OR
                                                                (cdsAllWorkersDataADRES.AsString        = null) OR
                                                                (cdsAllWorkersDataKOD_POCZTOWY.AsString = null) OR
                                                                (cdsAllWorkersDataULICA.AsString        = null) OR
                                                                (cdsAllWorkersDataZAK�AD.AsString       = null) OR
                                                                (cdsAllWorkersDataADRES.AsString        = '-') OR
                                                                (cdsAllWorkersDataKOD_POCZTOWY.AsString = '-') OR
                                                                (cdsAllWorkersDataULICA.AsString        = '-') OR
                                                                (cdsAllWorkersDataZAK�AD.AsString       = '-') OR
                                                                (cdsAllWorkersDataADRES.AsString        = '----------') OR
                                                                (cdsAllWorkersDataKOD_POCZTOWY.AsString = '----------') OR
                                                                (cdsAllWorkersDataULICA.AsString        = '----------') OR
                                                                (cdsAllWorkersDataZAK�AD.AsString       = '----------') then
                                                                begin
                                                                     ShowMessage('Pracownik nie ma uzupe�nionych wszystkich danych, uzupe�nij je (lub nie) i dalej zakupy zostan� kontynuowane');

                                                                     IfFinalizeSellButtonClickInFMainPanel := true;
                                                                     fEditWorkerData.Show;
                                                                end else
                                                                begin
                                                                      delayInFinalizeSellButtonClickInFMainPanel := true;
                                                                end;

                                                       end;

                                                  end;
                                                  cdsAllWorkersData.Next;

                                            end;
                                    end;
                                    // delayInFinalizeSellButtonClickInFMainPanel = true, czyli sprzeda� jest dalej finalizowana.
                                    if (delayInFinalizeSellButtonClickInFMainPanel) then
                                    begin
                                          IfFinalizeSellButtonClickInFMainPanel      := false;
                                          delayInFinalizeSellButtonClickInFMainPanel := false;
                                          fEditWorkerData.Close;

                                          if not (cdsForSellingProcess.IsEmpty) then
                                          begin
                                                // Tabela b�d�ca koszykiem cdsForSellingProcess co� zawiera, mo�na kontynuowa� sprzeda�.
                                                // Podj�cie decyzji o generowaniu o�wiadczenia przez u�ytkownika na TAK.
                                                if MyMessageDialog('Czy wygenerowa� o�wiadczenie dla finalizacji obecnej sprzeda�y?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
                                                begin
                                                      // U�ycie zapisanego wcze�niej imienia i nazwiska pracownika do okre�lenia nazwy pliku z o�wiadczeniem.
                                                      rvsSummaryGridReport.DefaultDest    := rdFile;
                                                      rvsSummaryGridReport.DoNativeOutput := false;
                                                      rvsSummaryGridReport.RenderObject   := rvrSummaryGridReportToJpeg;
                                                      rvsSummaryGridReport.OutputFileName := 'DFM_kiermasz_o�wiadczenie_' + Name +
                                                                                             '_' + Surname +
                                                                                             '.jpeg';
                                                      rvsSummaryGridReport.SystemSetups   := rvsSummaryGridReport.SystemSetups - [ssAllowSetup];
                                                      rvsSummaryGridReport.Execute;
                                                      ShowMessage('Plik z rozszerzeniem JPEG zosta� zapisany w lokalizacji, w kt�rej znajduje si� program (plik .exe), czyli: '
                                                                  + sLineBreak +
                                                                  GetCurrentDir);

                                                      // podj�cie decyzji o zako�czeniu zakup�w przez u�ytkownika.
                                                      if MyMessageDialog('Czy zako�czy� obecne zakupy?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
                                                      begin
                                                           cdsForSellingProcess.First;
                                                           while not cdsForSellingProcess.Eof do
                                                           begin
                                                                  C := 0;
                                                                  C2:= 0;
                                                                  K := 0;
                                                                  productID := cdsForSellingProcessETYKIETA.AsString;
                                                                  // W zale�no�ci, czy zapisany artyku� w tabeli jest etykiet� / odwo_id, dalej jest finalizowana
                                                                  // sprzeda�.
                                                                  if ContainsText(productID, '/') then
                                                                  begin
                                                                        // To jest finalizowanie sprzeda�y dla etykiety
                                                                        for I := 0 to Length(productID) do
                                                                        begin
                                                                              if (productID[I] = '/') then
                                                                                    C := C + 1;


                                                                              if (C = 2) then
                                                                              begin

                                                                                    Delete(productID,I,Length(productID));
                                                                                    C := 0;

                                                                              end;

                                                                        end;


                                                                        for J := 0 to Length(productID) do
                                                                        begin

                                                                              if (productID[J] = '/') then
                                                                                    C2 := C2 + 1;


                                                                              if (C2 = 1) then
                                                                              begin

                                                                                    Delete(productID,1,J);
                                                                                    C2 := 0;

                                                                              end;

                                                                        end;
                                                                        ibcspGetProductInfo.Close;
                                                                        ibcspGetProductInfo.ParamByName('I_LABEL').AsAnsiString := productID;
                                                                        ibcspGetProductInfo.FetchAll                            := true;
                                                                        ibcspGetProductInfo.Open;
                                                                        amountOfArticlesCounter                                 := ibcspGetProductInfo.FieldByName('COUNT_AMOUNT_OF_ARTICLES').AsInteger;
                                                                        while K < amountOfArticlesCounter do
                                                                        begin
                                                                                // Sprawdzenie, czy ilo�� danego artyku�u w bazie > 0, je�eli tak, sprzeda� jest dalej finalizowana.
                                                                                if (ibcspGetProductInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger > 0) then
                                                                                begin
                                                                                      ibcspWorkersPurchase.ParamByName('I_USER_ID').AsAnsiString := workerId;
                                                                                      ibcspWorkersPurchase.ParamByName('I_NAME').AsAnsiString    := cdsForSellingProcessNAZWA.AsAnsiString;
                                                                                      ibcspWorkersPurchase.ParamByName('I_LABEL').AsAnsiString   := cdsForSellingProcessETYKIETA.AsAnsiString;
                                                                                      ibcspWorkersPurchase.ParamByName('I_AMOUNT').AsInteger     := cdsForSellingProcessILO��_DO_SPRZEDANIA.AsInteger;
                                                                                      ibcspWorkersPurchase.ParamByName('I_ODWO_ID').AsInteger    := StrToInt(productID);

                                                                                      delay := 0;
                                                                                      // W ramach finalizacji dochodzi jeszcze do zapisania danych adresowych, wi�c odczyt w p�tli
                                                                                      // while z tabeli cdsAllWorkersData
                                                                                      // Wyszukiwanie danych adresowych konkretnego pracownika przy pomocy wpisanego numeru
                                                                                      // ewidencyjnego lub kodu z przepustki.
                                                                                      cdsAllWorkersData.First;
                                                                                      while not cdsAllWorkersData.Eof do
                                                                                      begin

                                                                                            if (workerId = cdsAllWorkersDataHAS�O.AsString) OR
                                                                                               (workerId = cdsAllWorkersDataNR_EWIDENCYJNY.AsString) then
                                                                                            begin
                                                                                                 inc(delay);
                                                                                                 if (delay = 1) then
                                                                                                 begin
                                                                                                       ibcspWorkersPurchase.ParamByName('I_ADDRESS').AsAnsiString     := cdsAllWorkersDataADRES.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_POST_CODE').AsAnsiString   := cdsAllWorkersDataKOD_POCZTOWY.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_STREET').AsAnsiString      := cdsAllWorkersDataULICA.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_INSTITUTION').AsAnsiString := cdsAllWorkersDataZAK�AD.AsAnsiString;
                                                                                                 end;

                                                                                            end;
                                                                                            cdsAllWorkersData.Next;

                                                                                      end;
                                                                                      ibcspWorkersPurchase.Prepare;
                                                                                      ibcspWorkersPurchase.ExecProc;
                                                                                      ibcspWorkersPurchase.UnPrepare;
                                                                                      ibcspWorkersPurchase.Transaction.Commit;
                                                                                end;
                                                                                inc(K);
                                                                                ibcspGetProductInfo.Next;
                                                                        end;
                                                                        cdsForSellingProcess.Next;
                                                                  end else
                                                                  begin
                                                                  // To jest finalizowanie sprzeda�y dla odwo_id
                                                                        ibcspGetProductInfo.Close;
                                                                        ibcspGetProductInfo.ParamByName('I_LABEL').AsAnsiString := productID;
                                                                        ibcspGetProductInfo.FetchAll                            := true;
                                                                        ibcspGetProductInfo.Open;
                                                                        amountOfArticlesCounter                                 := ibcspGetProductInfo.FieldByName('COUNT_AMOUNT_OF_ARTICLES').AsInteger;
                                                                        while K < amountOfArticlesCounter do
                                                                        begin
                                                                                // Sprawdzenie, czy ilo�� danego artyku�u w bazie > 0, je�eli tak, sprzeda� jest dalej finalizowana.
                                                                                if (ibcspGetProductInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger > 0) then
                                                                                begin
                                                                                      ibcspWorkersPurchase.ParamByName('I_USER_ID').AsAnsiString := workerId;
                                                                                      ibcspWorkersPurchase.ParamByName('I_NAME').AsAnsiString    := cdsForSellingProcessNAZWA.AsAnsiString;
                                                                                      ibcspWorkersPurchase.ParamByName('I_LABEL').AsAnsiString   := cdsForSellingProcessETYKIETA.AsAnsiString;
                                                                                      ibcspWorkersPurchase.ParamByName('I_AMOUNT').AsInteger     := cdsForSellingProcessILO��_DO_SPRZEDANIA.AsInteger;
                                                                                      ibcspWorkersPurchase.ParamByName('I_ODWO_ID').AsInteger    := StrToInt(productID);

                                                                                      delay := 0;
                                                                                      // W ramach finalizacji dochodzi jeszcze do zapisania danych adresowych, wi�c odczyt w p�tli
                                                                                      // while z tabeli cdsAllWorkersData
                                                                                      // Wyszukiwanie danych adresowych konkretnego pracownika przy pomocy wpisanego numeru
                                                                                      // ewidencyjnego lub kodu z przepustki.
                                                                                      cdsAllWorkersData.First;
                                                                                      while not cdsAllWorkersData.Eof do
                                                                                      begin

                                                                                            if (workerId = cdsAllWorkersDataHAS�O.AsString) OR
                                                                                               (workerId = cdsAllWorkersDataNR_EWIDENCYJNY.AsString) then
                                                                                            begin
                                                                                                 inc(delay);
                                                                                                 if (delay = 1) then
                                                                                                 begin
                                                                                                       ibcspWorkersPurchase.ParamByName('I_ADDRESS').AsAnsiString     := cdsAllWorkersDataADRES.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_POST_CODE').AsAnsiString   := cdsAllWorkersDataKOD_POCZTOWY.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_STREET').AsAnsiString      := cdsAllWorkersDataULICA.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_INSTITUTION').AsAnsiString := cdsAllWorkersDataZAK�AD.AsAnsiString;
                                                                                                 end;

                                                                                            end;
                                                                                            cdsAllWorkersData.Next;

                                                                                      end;
                                                                                      ibcspWorkersPurchase.Prepare;
                                                                                      ibcspWorkersPurchase.ExecProc;
                                                                                      ibcspWorkersPurchase.UnPrepare;
                                                                                      ibcspWorkersPurchase.Transaction.Commit;
                                                                                end;
                                                                                inc(K);
                                                                                ibcspGetProductInfo.Next;
                                                                        end;
                                                                        cdsForSellingProcess.Next;
                                                                  end;
                                                           end;
                                                            // Po udanej finalizacji sprzeda�y procedura post�puje tutaj tak samo jak w przypadku
                                                            // anulowania zakup�w.
                                                           CheckProductRadioButton.Checked := false;
                                                           SellRadioButton.Checked         := false;
                                                           WorkerIDEditInSellTabPanel.Clear;
                                                           ProductIDEdit.Clear;

                                                           cdsCheckProductInfoSummaryGrid.Open;
                                                           cdsCheckProductInfoSummaryGrid.DisableControls;
                                                           if not (cdsCheckProductInfoSummaryGrid.IsEmpty) then
                                                                   cdsCheckProductInfoSummaryGrid.EmptyDataSet;

                                                           cdsCheckProductInfoSummaryGrid.EnableControls;


                                                           cdsForSellingProcess.Open;
                                                           cdsForSellingProcess.DisableControls;
                                                           if not (cdsForSellingProcess.IsEmpty) then
                                                                   cdsForSellingProcess.EmptyDataSet;

                                                           cdsForSellingProcess.EnableControls;
                                                      end;
                                                end else
                                                begin
                                                // podj�cie decyzji o generowaniu o�wiadczenia przez u�ytkownika na NIE
                                                      // podj�cie decyzji o zako�czeniu zakup�w przez u�ytkownika.
                                                      if MyMessageDialog('Czy zako�czy� obecne zakupy?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
                                                      begin
                                                           cdsForSellingProcess.First;
                                                           while not cdsForSellingProcess.Eof do
                                                           begin
                                                                  C := 0;
                                                                  C2:= 0;
                                                                  K := 0;
                                                                  productID := cdsForSellingProcessETYKIETA.AsString;
                                                                  // W zale�no�ci, czy zapisany artyku� w tabeli jest etykiet� / odwo_id, dalej jest finalizowana
                                                                  // sprzeda�.
                                                                  if ContainsText(productID, '/') then
                                                                  begin
                                                                        // To jest finalizowanie sprzeda�y dla etykiety
                                                                        for I := 0 to Length(productID) do
                                                                        begin
                                                                              if (productID[I] = '/') then
                                                                                    C := C + 1;


                                                                              if (C = 2) then
                                                                              begin

                                                                                    Delete(productID,I,Length(productID));
                                                                                    C := 0;

                                                                              end;

                                                                        end;


                                                                        for J := 0 to Length(productID) do
                                                                        begin

                                                                              if (productID[J] = '/') then
                                                                                    C2 := C2 + 1;


                                                                              if (C2 = 1) then
                                                                              begin

                                                                                    Delete(productID,1,J);
                                                                                    C2 := 0;

                                                                              end;

                                                                        end;
                                                                        ibcspGetProductInfo.Close;
                                                                        ibcspGetProductInfo.ParamByName('I_LABEL').AsAnsiString := productID;
                                                                        ibcspGetProductInfo.FetchAll                            := true;
                                                                        ibcspGetProductInfo.Open;
                                                                        amountOfArticlesCounter                                 := ibcspGetProductInfo.FieldByName('COUNT_AMOUNT_OF_ARTICLES').AsInteger;
                                                                        while K < amountOfArticlesCounter do
                                                                        begin
                                                                                // Sprawdzenie, czy ilo�� danego artyku�u w bazie > 0, je�eli tak, sprzeda� jest dalej finalizowana.
                                                                                if (ibcspGetProductInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger > 0) then
                                                                                begin
                                                                                      ibcspWorkersPurchase.ParamByName('I_USER_ID').AsAnsiString := workerId;
                                                                                      ibcspWorkersPurchase.ParamByName('I_NAME').AsAnsiString    := cdsForSellingProcessNAZWA.AsAnsiString;
                                                                                      ibcspWorkersPurchase.ParamByName('I_LABEL').AsAnsiString   := cdsForSellingProcessETYKIETA.AsAnsiString;
                                                                                      ibcspWorkersPurchase.ParamByName('I_AMOUNT').AsInteger     := cdsForSellingProcessILO��_DO_SPRZEDANIA.AsInteger;
                                                                                      ibcspWorkersPurchase.ParamByName('I_ODWO_ID').AsInteger    := StrToInt(productID);

                                                                                      delay := 0;
                                                                                      // W ramach finalizacji dochodzi jeszcze do zapisania danych adresowych, wi�c odczyt w p�tli
                                                                                      // while z tabeli cdsAllWorkersData
                                                                                      // Wyszukiwanie danych adresowych konkretnego pracownika przy pomocy wpisanego numeru
                                                                                      // ewidencyjnego lub kodu z przepustki.
                                                                                      cdsAllWorkersData.First;
                                                                                      while not cdsAllWorkersData.Eof do
                                                                                      begin

                                                                                            if (workerId = cdsAllWorkersDataHAS�O.AsString) OR
                                                                                               (workerId = cdsAllWorkersDataNR_EWIDENCYJNY.AsString) then
                                                                                            begin
                                                                                                 inc(delay);
                                                                                                 if (delay = 1) then
                                                                                                 begin
                                                                                                       ibcspWorkersPurchase.ParamByName('I_ADDRESS').AsAnsiString     := cdsAllWorkersDataADRES.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_POST_CODE').AsAnsiString   := cdsAllWorkersDataKOD_POCZTOWY.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_STREET').AsAnsiString      := cdsAllWorkersDataULICA.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_INSTITUTION').AsAnsiString := cdsAllWorkersDataZAK�AD.AsAnsiString;
                                                                                                 end;

                                                                                            end;
                                                                                            cdsAllWorkersData.Next;

                                                                                      end;
                                                                                      ibcspWorkersPurchase.Prepare;
                                                                                      ibcspWorkersPurchase.ExecProc;
                                                                                      ibcspWorkersPurchase.UnPrepare;
                                                                                      ibcspWorkersPurchase.Transaction.Commit;
                                                                                end;
                                                                                inc(K);
                                                                                ibcspGetProductInfo.Next;
                                                                        end;
                                                                        cdsForSellingProcess.Next
                                                                  end else
                                                                  begin
                                                                  // To jest finalizowanie sprzeda�y dla odwo_id
                                                                        ibcspGetProductInfo.Close;
                                                                        ibcspGetProductInfo.ParamByName('I_LABEL').AsAnsiString := productID;
                                                                        ibcspGetProductInfo.FetchAll                            := true;
                                                                        ibcspGetProductInfo.Open;
                                                                        amountOfArticlesCounter                                 := ibcspGetProductInfo.FieldByName('COUNT_AMOUNT_OF_ARTICLES').AsInteger;
                                                                        while K < amountOfArticlesCounter do
                                                                        begin
                                                                                // Sprawdzenie, czy ilo�� danego artyku�u w bazie > 0, je�eli tak, sprzeda� jest dalej finalizowana.
                                                                                if (ibcspGetProductInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger > 0) then
                                                                                begin
                                                                                      ibcspWorkersPurchase.ParamByName('I_USER_ID').AsAnsiString := workerId;
                                                                                      ibcspWorkersPurchase.ParamByName('I_NAME').AsAnsiString    := cdsForSellingProcessNAZWA.AsAnsiString;
                                                                                      ibcspWorkersPurchase.ParamByName('I_LABEL').AsAnsiString   := cdsForSellingProcessETYKIETA.AsAnsiString;
                                                                                      ibcspWorkersPurchase.ParamByName('I_AMOUNT').AsInteger     := cdsForSellingProcessILO��_DO_SPRZEDANIA.AsInteger;
                                                                                      ibcspWorkersPurchase.ParamByName('I_ODWO_ID').AsInteger    := StrToInt(productID);

                                                                                      delay := 0;
                                                                                      // W ramach finalizacji dochodzi jeszcze do zapisania danych adresowych, wi�c odczyt w p�tli
                                                                                      // while z tabeli cdsAllWorkersData
                                                                                      // Wyszukiwanie danych adresowych konkretnego pracownika przy pomocy wpisanego numeru
                                                                                      // ewidencyjnego lub kodu z przepustki.
                                                                                      cdsAllWorkersData.First;
                                                                                      while not cdsAllWorkersData.Eof do
                                                                                      begin

                                                                                            if (workerId = cdsAllWorkersDataHAS�O.AsString) OR
                                                                                               (workerId = cdsAllWorkersDataNR_EWIDENCYJNY.AsString) then
                                                                                            begin
                                                                                                 inc(delay);
                                                                                                 if (delay = 1) then
                                                                                                 begin
                                                                                                       ibcspWorkersPurchase.ParamByName('I_ADDRESS').AsAnsiString     := cdsAllWorkersDataADRES.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_POST_CODE').AsAnsiString   := cdsAllWorkersDataKOD_POCZTOWY.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_STREET').AsAnsiString      := cdsAllWorkersDataULICA.AsAnsiString;
                                                                                                       ibcspWorkersPurchase.ParamByName('I_INSTITUTION').AsAnsiString := cdsAllWorkersDataZAK�AD.AsAnsiString;
                                                                                                 end;

                                                                                            end;
                                                                                            cdsAllWorkersData.Next;

                                                                                      end;
                                                                                      ibcspWorkersPurchase.Prepare;
                                                                                      ibcspWorkersPurchase.ExecProc;
                                                                                      ibcspWorkersPurchase.UnPrepare;
                                                                                      ibcspWorkersPurchase.Transaction.Commit;
                                                                                end;
                                                                                inc(K);
                                                                                ibcspGetProductInfo.Next;
                                                                        end;
                                                                        cdsForSellingProcess.Next;
                                                                  end;
                                                           end;
                                                            // Po udanej finalizacji sprzeda�y procedura post�puje tutaj tak samo jak w przypadku
                                                            // anulowania zakup�w.
                                                           CheckProductRadioButton.Checked := false;
                                                           SellRadioButton.Checked         := false;
                                                           WorkerIDEditInSellTabPanel.Clear;
                                                           ProductIDEdit.Clear;

                                                           cdsCheckProductInfoSummaryGrid.Open;
                                                           cdsCheckProductInfoSummaryGrid.DisableControls;
                                                           if not (cdsCheckProductInfoSummaryGrid.IsEmpty) then
                                                                   cdsCheckProductInfoSummaryGrid.EmptyDataSet;

                                                           cdsCheckProductInfoSummaryGrid.EnableControls;


                                                           cdsForSellingProcess.Open;
                                                           cdsForSellingProcess.DisableControls;
                                                           if not (cdsForSellingProcess.IsEmpty) then
                                                                   cdsForSellingProcess.EmptyDataSet;

                                                           cdsForSellingProcess.EnableControls;
                                                      end;
                                                end;
                                          end else
                                          begin
                                                ShowMessage('Prosz� doda� co najmniej jeden produkt do koszyka przed dokonaniem sprzeda�y');
                                          end;
                                    end;
                              end else
                              begin
                                    ShowMessage('Brak pracownika o podanym ID w pobranej bazie');
                              end;
                      end else
                      begin
                            ShowMessage('Program nie posiada pobranych danych pracownik�w');
                      end;
              end;
        end else
        begin
              workerId                        := InputBox('Prosz� poda� ID pracownika', 'ID Pracownika: ', '');
              WorkerIDEditInSellTabPanel.Text := workerId;
        end;
end;

procedure TfMainPanel.FormShow(Sender: TObject);
var
      T                                          : tGetWorkersDataThread;
begin
      cxMainPageControl.Properties.ActivePage    := cxSellTabSheet;
      dateFrom                                   := Now;
      dateTo                                     := Now;
      delayForClosingApp                         := 1;
      delayInFinalizeSellButtonClickInFMainPanel := false;
      IfFinalizeSellButtonClickInFMainPanel      := false;


      if MyMessageDialog('Brak danych pracownik�w w programie. Czy pobra� dane pracownik�w?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
      begin
          // Procedura pobieraj�ca dane wszystkich pracownik�w.
          // Inicjalizacja w�tku pobieraj�cego dane pracownik�w w tle:
          // GetWorkersDataThread
          // Po zako�czeniu wykonywania si� w�tku uruchomienie procedury:
          // GetWorkersDataThreadFinished
          // Dop�ki pauseInProcedureTfMainPanelFormShow = true, praca programu w p�tli while

          fInfoBox.Show;
          ShowMessage('Ten rodzaj operacji na danych mo�e zaj�� d�u�sz� chwil�.');
          pauseInProcedureTfMainPanelFormShow := true;
          T                                   := tGetWorkersDataThread.Create;
          T.OnFinished                        := GetWorkersDataThreadFinished;
          T.FreeOnTerminate                   := True;
          T.Priority                          := tpNormal;
          T.Start;


          while pauseInProcedureTfMainPanelFormShow do Application.ProcessMessages;

          if not (pauseInProcedureTfMainPanelFormShow) then
          begin
                fInfoBox.Close;
          end;
      end;
      // Je�eli import CSV, ustawienie zak�adki "Import CSV" jako aktywnej.
      // Wywo�anie metody importuj�cej z pliku CSV do bazy TfMainPanel.LoadCSVFileButtonClick(Sender: TObject).
      if MyMessageDialog('Czy zaimportowa� plik CSV z artyku�ami?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
      begin
            cxMainPageControl.Properties.ActivePage := cxImportCSVFileToDBTabSheet;
            LoadCSVFileButton.Click;
      end;
      // Zmienne odpowiadaj�ce za zainicjowanie ustawie� podpowiedzi wy�wietlaj�cych si� po
      // najechaniu na inputy �Wprowad� dane� zawieraj�ce podpowiedzi,
      // czego mo�na u�y� w danym inpucie (do filtrowania danych).
      Application.OnShowHint       := MyShowHint;
      Application.HintPause        := 50;
      Application.HintHidePause    := 4500;
end;

procedure TfMainPanel.GetWorkersDataThreadFinished(Sender: TObject; const Success: Boolean);
begin
  if Success then
  begin
        // W�tek GetWorkersDataThread wykona� si�, wi�c umo�liwienie dalszej pracy
        // programu poprzez pauseInProcedureTfMainPanelFormShow := False;
        pauseInProcedureTfMainPanelFormShow := False;
  end;
end;

procedure TfMainPanel.GenerateReportButtonClick(Sender: TObject);
var
    dir: string;
begin
dir := GetCurrentDir;
// Generowanie wybranego raportu (CSV, PDF) wraz z odpowiedni� nazw� pliku.
// W zale�no�ci od wybranej opcji ("Od�wie� dane","Pracownik","Zakres dat").
if MyMessageDialog('Czy na pewno wygenerowa� raport?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
begin

      if (WorkerRadioButton.Checked = false) AND
         (DateRangeRadioButton.Checked = false) then
      begin
            if MyMessageDialog('Jaka forma raportu jest dla Ciebie odpowiednia?', mtConfirmation, mbYesNo, ['PDF','CSV']) = mrYes then
            begin
                  dxcpAllSellsGridDataForAllSells.Preview;
            end else
            begin
                  ExportGridToCSV('DFM_Raport_sprzedazy_dla_wszystkich_pracownikow',
                                  cxAllSellsGrid,
                                  True,
                                  True,
                                  ';',
                                  'csv',
                                  nil,
                                  TEncoding.UTF8);
                  ShowMessage('Plik z rozszerzeniem CSV zosta� zapisany w lokalizacji, w kt�rej znajduje si� program (plik .exe), czyli: '
                              + sLineBreak +
                              GetCurrentDir);
            end;
      end;


      if (WorkerRadioButton.Checked = true) then
      begin
            if MyMessageDialog('Jaka forma raportu jest dla Ciebie odpowiednia?', mtConfirmation, mbYesNo, ['PDF','CSV']) = mrYes then
            begin
                  dxcpAllSellsGridDataForChoosedWorker.Preview;
            end else
            begin
                  ExportGridToCSV('DFM_Raport_sprzedazy_dla_wybranego_pracownika',
                                  cxAllSellsGrid,
                                  True,
                                  True,
                                  ';',
                                  'csv',
                                  nil,
                                  TEncoding.UTF8);
                  ShowMessage('Plik z rozszerzeniem CSV zosta� zapisany w lokalizacji, w kt�rej znajduje si� program (plik .exe), czyli: '
                              + sLineBreak +
                              GetCurrentDir);
            end;
      end;


      if (DateRangeRadioButton.Checked = true) then
      begin
            if MyMessageDialog('Jaka forma raportu jest dla Ciebie odpowiednia?', mtConfirmation, mbYesNo, ['PDF','CSV']) = mrYes then
            begin
                  dxcpAllSellsGridDataForDateRange.PDFExportOptions.DefaultFileName := 'DFM_Raport_sprzedazy_dla_wybranego_zakresu_dat_od_' +
                                                                                        DateToStr(dateFrom) +
                                                                                        '_do_' +
                                                                                        DateToStr(dateTo);
                  dxcpAllSellsGridDataForDateRange.PDFExportOptions.DefaultFileNameAssigned := True;
                  dxcpAllSellsGridDataForDateRange.PDFExportOptions.Title := 'DFM_Raport_sprzedazy_dla_wybranego_zakresu_dat_od_' +
                                                                              DateToStr(dateFrom) +
                                                                              '_do_' +
                                                                              DateToStr(dateTo);
                  dxcpAllSellsGridDataForDateRange.ReportDocument.Caption := 'DFM_Raport_sprzedazy_dla_wybranego_zakresu_dat_od_' +
                                                                              DateToStr(dateFrom) +
                                                                              '_do_' +
                                                                              DateToStr(dateTo);
                  dxcpAllSellsGridDataForDateRange.Preview;
            end else
            begin
                  ExportGridToCSV('DFM_Raport_sprzedazy_dla_wybranego_zakresu_dat_od_' +
                                  DateToStr(dateFrom) +
                                  '_do_' +
                                  DateToStr(dateTo),
                                  cxAllSellsGrid,
                                  True,
                                  True,
                                  ';',
                                  'csv',
                                  nil,
                                  TEncoding.UTF8);
                  ShowMessage('Plik z rozszerzeniem CSV zosta� zapisany w lokalizacji, w kt�rej znajduje si� program (plik .exe), czyli: '
                              + sLineBreak +
                              GetCurrentDir);
            end;
      end;

end;
end;

procedure TfMainPanel.GenerateReportForSellButtonClick(Sender: TObject);
var
    delay:         integer;
    Name, Surname: string;
begin
        if (WorkerIDEditInSellTabPanel.Text <> '') then
        begin
              if(workerId <> '') OR
                (workerId <> null) then
              begin
                      // Sprawdzenie na pocz�tek, czy dane pracownika (WorkerIDEditInSellTabPanel), czyli numer ewidencyjny / kod z przepustki
                      // zosta� wprowadzony oraz czy dane pracownik�w zosta�y pobrane (na pocz�tku pracy programu).
                      if not (cdsAllWorkersData.IsEmpty) then
                      begin
                              delay := 0;
                              cdsAllWorkersData.First;
                              // Wyszukanie po numerze ewidencyjnym lub kodzie z przepustki danego pracownika i pobranie jego imienia i nazwiska
                              // do zmiennych.
                              while not cdsAllWorkersData.Eof do
                              begin

                                    if (workerId = cdsAllWorkersDataHAS�O.AsString) OR
                                       (workerId = cdsAllWorkersDataNR_EWIDENCYJNY.AsString) then
                                    begin

                                         if (delay = 0) then
                                         begin

                                              inc(delay);
                                              Name     := cdsAllWorkersDataIMIE.AsString;
                                              Surname  := cdsAllWorkersDataNAZWISKO.AsString;

                                         end;

                                    end;
                                    cdsAllWorkersData.Next;

                              end;
                              // Wygenerowanie o�wiadczenia i zapisanie go z nazw� pliku zawieraj�c� imi� i nazwisko pracownika.
                              if (delay >= 1) then
                              begin
                                     if not (cdsForSellingProcess.IsEmpty) then
                                     begin
                                            if MyMessageDialog('Czy na pewno wygenerowa� o�wiadczenie dla obecnej sprzeda�y?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
                                            begin
                                                  rvsSummaryGridReport.DefaultDest    := rdFile;
                                                  rvsSummaryGridReport.DoNativeOutput := false;
                                                  rvsSummaryGridReport.RenderObject   := rvrSummaryGridReportToJpeg;
                                                  rvsSummaryGridReport.OutputFileName := 'DFM_kiermasz_o�wiadczenie_'
                                                                                          + Name +
                                                                                          '_' + Surname +
                                                                                          '.jpeg';
                                                  rvsSummaryGridReport.SystemSetups   := rvsSummaryGridReport.SystemSetups - [ssAllowSetup];
                                                  rvsSummaryGridReport.Execute;
                                                  ShowMessage('Plik z rozszerzeniem JPEG zosta� zapisany w lokalizacji, w kt�rej znajduje si� program (plik .exe), czyli: '
                                                              + sLineBreak +
                                                              GetCurrentDir);
                                            end;
                                     end else
                                     begin
                                            ShowMessage('Prosz� doda� co najmniej jeden produkt do koszyka przed wygenerowaniem o�wiadczenia');
                                     end;
                              end else
                              begin
                                    ShowMessage('Brak pracownika o podanym ID w pobranej bazie');
                              end;
                      end else
                      begin
                            ShowMessage('Program nie posiada pobranych danych pracownik�w');
                      end;
              end;
        end else
        begin
              workerId                        := InputBox('Prosz� poda� ID pracownika', 'ID Pracownika: ', '');
              WorkerIDEditInSellTabPanel.Text := workerId;
        end;
end;

procedure TfMainPanel.GenerateReportImportCSVButtonClick(Sender: TObject);
var
    dir: string;
begin
dir := GetCurrentDir;
if MyMessageDialog('Czy na pewno wygenerowa� raport?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
begin
            if MyMessageDialog('Jaka forma raportu jest dla Ciebie odpowiednia?', mtConfirmation, mbYesNo, ['PDF','CSV']) = mrYes then
            begin
                  dxcpPrintGridReportImportCSV.Preview;
            end else
            begin
                  ExportGridToCSV('DFM_Uzyskane_bledy_podczas_importu_pliku_CSV',
                                  cxImportCSVReportGrid,
                                  True,
                                  True,
                                  ';',
                                  'csv',
                                  nil,
                                  TEncoding.UTF8);
                  ShowMessage('Plik z rozszerzeniem CSV zosta� zapisany w lokalizacji, w kt�rej znajduje si� program (plik .exe), czyli: '
                              + sLineBreak +
                              GetCurrentDir);
            end;
end;
end;

procedure TfMainPanel.GenerateReportInModifyPriceModeButtonClick(
  Sender: TObject);
var
    dir: string;
begin
dir := GetCurrentDir;
if MyMessageDialog('Czy na pewno wygenerowa� raport?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
begin
            if MyMessageDialog('Jaka forma raportu jest dla Ciebie odpowiednia?', mtConfirmation, mbYesNo, ['PDF','CSV']) = mrYes then
            begin
                  dxcpPrintModifyPricesGrid.Preview;
            end else
            begin
                  ExportGridToCSV('DFM_Wszystkie_artykuly_znajdujace_sie_w_bazie',
                                  cxModifyPricesGrid,
                                  True,
                                  True,
                                  ';',
                                  'csv',
                                  nil,
                                  TEncoding.UTF8);
                  ShowMessage('Plik z rozszerzeniem CSV zosta� zapisany w lokalizacji, w kt�rej znajduje si� program (plik .exe), czyli: '
                              + sLineBreak +
                              GetCurrentDir);
            end;
end;
end;

procedure TfMainPanel.LoadCSVFileButtonClick(Sender: TObject);
var
 T:               tImportDataFromCSVToDBThread;
 dlg:             TOpenDialog;
 csvPatch:        string;
begin
        // Domy�lnie otwierana lokalizacja na starcie wyboru pliku.
        csvPatch       := '';
        dlg            := TOpenDialog.Create(nil);
        dlg.InitialDir := 'C:\';
        dlg.Filter     := 'csv files (*.csv)|*.csv';
        if dlg.Execute(Handle) then
           csvPatch    := dlg.FileName;


        with cxImportCSVReportGridDBTableView1 do
        begin
                  BeginUpdate;
                  try
                      while ColumnCount > 0 do
                            Columns[0].Destroy;
                  finally
                  EndUpdate;
                  end;
        end;

        if (csvPatch <> '') then
            jvcsvDataFromFile.LoadFromFile(csvPatch);

        // Co� wybrano, praca z plikiem CSV.
        if (csvPatch <> '') then
        begin
              // Przygotowanie ustawie� paska post�pu
              fInfoBox.cxProgressBarLabel.Parent := fInfoBox.pbFInfoBox;
              fInfoBox.pbFInfoBox.Style          := pbstNormal;
              fInfoBox.pbFInfoBox.Min            := 0;
              fInfoBox.pbFInfoBox.Max            := jvcsvDataFromFile.RecordCount - 2;
              fInfoBox.pbFInfoBox.Position       := 0;
              fInfoBox.pbFInfoBox.Step           := fInfoBox.pbFInfoBox.Position + 1;
              fInfoBox.Show;
              ShowMessage('Ten rodzaj operacji na danych mo�e zaj�� d�u�sz� chwil�.');

              // Zainicjowanie w�tku importuj�cego dane z pliku CSV do bazy.
              pauseInProcedureTfMainPanelLoadCSVFileButtonClick := true;
              T                                                 := tImportDataFromCSVToDBThread.Create;
              T.OnFinished                                      := ImportDataFromCSVToDBThreadFinished;
              T.FreeOnTerminate                                 := True;
              T.Priority                                        := tpNormal;
              T.Start;

              // Program czeka, dop�ki w�tek nie zostanie wykonany.
              while pauseInProcedureTfMainPanelLoadCSVFileButtonClick do Application.ProcessMessages;

              if not (pauseInProcedureTfMainPanelLoadCSVFileButtonClick) then
              begin
                    fInfoBox.Close;
              end;
        end
        else begin
             ShowMessage('Wybierz plik CSV');
        end;

end;

procedure TfMainPanel.ImportDataFromCSVToDBThreadFinished(Sender: TObject; const Success: Boolean);
begin
  if Success then
  begin
        pauseInProcedureTfMainPanelLoadCSVFileButtonClick := False;
  end;
end;

procedure TfMainPanel.ModifyPriceButtonClick(Sender: TObject);
var
     newPrice: string;
begin
            if not (cxModifyPricesGridDBTableView1.DataController.FocusedDataRowIndex >= 0) then Exit;

            // Podanie ceny, sprawdzenie, czy jest liczb�, czy nie jest pusta.
            newPrice := InputBox('Prosz� poda� now� cen�', 'Nowa cena: ', '');
            if (IsNumber(newPrice)) then
            begin
                  if (newPrice = '') or
                     (newPrice = null) then
                  begin
                        ShowMessage('Wprowad� cen� w celu jej zmodyfikowania');
                  end else
                  begin
                           try
                                 // Wprowadzenie nowej ceny dla artyku�u do bazy. Przeliczenie nowej ceny z VAT.
                                 ibcspModifyArticlePrice.ParamByName('I_ODWO_ID').AsInteger := cdsModifyPricesGridODWO_ID.AsInteger;
                                 ibcspModifyArticlePrice.ParamByName('I_AB').AsAnsiString   := cdsModifyPricesGridAB.AsAnsiString;
                                 ibcspModifyArticlePrice.ParamByName('I_NAME').AsAnsiString := cdsModifyPricesGridNAZWA.AsAnsiString;
                                 ibcspModifyArticlePrice.ParamByName('I_PRICE').AsString    := newPrice;
                                 ibcspModifyArticlePrice.Prepare;
                                 ibcspModifyArticlePrice.ExecProc;
                                 ibcspModifyArticlePrice.UnPrepare;
                                 ibcspModifyArticlePrice.Transaction.Commit;
                                 cdsModifyPricesGrid.Edit;
                                 cdsModifyPricesGrid.DisableControls;
                                 cdsModifyPricesGridCENA.AsFloat                            := StrToFloat(StringReplace(newPrice, '.', ',',[rfReplaceAll, rfIgnoreCase]));
                                 cdsModifyPricesGridCENA_Z_VAT.AsFloat                      := RoundTo(StrToFloat(StringReplace(newPrice, '.', ',',[rfReplaceAll, rfIgnoreCase])) * 1.23,-2);
                                 cdsModifyPricesGrid.Post;
                                 cdsModifyPricesGrid.EnableControls;
                           except
                                 ShowMessage('Zmodyfikowanie ceny wybranego produktu nie powiod�o si�');
                           end;

                  end;
            end else
            begin
                  ShowMessage('Podana cena nie jest liczb� lub jest mniejsza od zera, spr�buj ponownie');
            end;
end;

procedure TfMainPanel.NameSearchingModeInModifyPricesGridChange(
  Sender: TObject);
begin
    OdwoIDSearchingModeInModifyPricesGrid.Text := '';
    cdsModifyPricesGrid.Filtered               := false;
    cdsModifyPricesGrid.CancelRange;
    cdsModifyPricesGrid.Filter                 := 'NAZWA = ' + QuotedStr(NameSearchingModeInModifyPricesGrid.Text);

    if not (NameSearchingModeInModifyPricesGrid.Text = '') then
            cdsModifyPricesGrid.Filtered             := true;
end;

procedure TfMainPanel.OdwoIDSearchingModeInModifyPricesGridChange(
  Sender: TObject);
begin
    NameSearchingModeInModifyPricesGrid.Text := '';
    cdsModifyPricesGrid.Filtered             := false;
    cdsModifyPricesGrid.CancelRange;
    cdsModifyPricesGrid.Filter               := 'ODWO_ID = ' + QuotedStr(OdwoIDSearchingModeInModifyPricesGrid.Text);

    if not (OdwoIDSearchingModeInModifyPricesGrid.Text = '') then
            cdsModifyPricesGrid.Filtered               := true;
end;

procedure TfMainPanel.ProductIDEditKeyPress(Sender: TObject; var Key: Char);
var
    productID, productIDFromCdsForSellingProcess, nameOfProductToRollback, productIDFromCDSGetWorkersOrdersID: string;
    C, C2, I, J, ReferenceCounter, orderIDToRollback, odwoIDToRollback:                                        integer;
    maxDateToFindInCDSGetWorkersOrdersID:                                                                      TDateTime;
begin
// Sprawdzenie, czy Enter zosta� naci�ni�ty i wtedy procedura zaczyna prac�.
if ord(Key) = VK_RETURN then
begin
// Dalej w komentarzach do tej procedury nazwa pola "Etykieta", czyli mam na my�li:
// ProductIDEdit
      if (ProductIDEdit.Text <> '') then
      begin

            C         := 0;
            C2        := 0;
            productID := ProductIDEdit.Text;

            // Sprawdzenie, czy s� / w ci�gu znak�w, tak = to jest etykieta.
            if ContainsText(productID, '/') then
            begin
                  for I := 0 to Length(productID) do
                  begin
                        if (productID[I] = '/') then
                            C := C + 1;


                        if (C = 2) then
                        begin
                              Delete(productID,I,Length(productID));
                              C := 0;
                        end;
                  end;
                  for J := 0 to Length(productID) do
                  begin
                        if (productID[J] = '/') then
                            C2 := C2 + 1;


                        if (C2 = 1) then
                        begin
                              Delete(productID,1,J);
                              C2 := 0;
                        end;
                  end;
                  // Sprawdzenie, czy dany produkt istnieje w bazie.
                  ibcspGetProductInfo.Close;
                  ibcspGetProductInfo.ParamByName('I_LABEL').AsAnsiString := productID;
                  ibcspGetProductInfo.Open;

                  if (ibcspGetProductInfo.FieldByName('ODWO_ID_TO_RETURN').AsInteger = 0) OR
                     (ibcspGetProductInfo.FieldByName('ODWO_ID_TO_RETURN').AsInteger = null) then
                  begin
                        ShowMessage('Brak podanego produktu w bazie');
                        ProductIDEdit.Clear;
                  end else
                  begin
                        // Produkt istnieje, wprowadzona zosta�a ca�a etykieta, wi�c dalej: akcje podejmowane w zale�no�ci od zaznaczonej opcji
                        // w programie: "Sprawd� produkt", "Sprzeda�".
                        if (CheckProductRadioButton.Checked = True) OR
                           (SellRadioButton.Checked = True) then
                        begin
                              if (CheckProductRadioButton.Checked = True) then
                              begin
                                    ProductIDEdit.Clear;
                                    try
                                         with cxSummaryGridDBTableView1 do
                                         begin
                                                BeginUpdate;
                                                try
                                                    while ColumnCount > 0 do
                                                          Columns[0].Destroy;
                                                finally
                                                EndUpdate;
                                                end;
                                         end;
                                        // Dla "Sprawd� produkt" wczytanie danych z bazy o danym produkcie i za�adowanie ich do grida.
                                        cdsCheckProductInfoSummaryGrid.Open;
                                        cdsCheckProductInfoSummaryGrid.DisableControls;
                                        if not (cdsCheckProductInfoSummaryGrid.IsEmpty) then
                                                cdsCheckProductInfoSummaryGrid.EmptyDataSet;


                                        while not ibcspGetProductInfo.Eof do
                                        begin

                                              cdsCheckProductInfoSummaryGrid.Append;
                                              cdsCheckProductInfoSummaryGridODWO_ID.AsInteger           := ibcspGetProductInfo.FieldByName('ODWO_ID_TO_RETURN').AsInteger;
                                              cdsCheckProductInfoSummaryGridAB.AsAnsiString             := ibcspGetProductInfo.FieldByName('AB_TO_RETURN').Text;
                                              cdsCheckProductInfoSummaryGridNAZWA.AsAnsiString          := ibcspGetProductInfo.FieldByName('NAME_TO_RETURN').Text;
                                              cdsCheckProductInfoSummaryGridNAZWA_TKANINY.AsAnsiString  := ibcspGetProductInfo.FieldByName('NAME_OF_FABRIC_TO_RETURN').Text;
                                              cdsCheckProductInfoSummaryGridNAZWA_KORPUSU.AsAnsiString  := ibcspGetProductInfo.FieldByName('NAME_OF_CORPUS_TO_RETURN').Text;
                                              cdsCheckProductInfoSummaryGridILO��.AsInteger             := ibcspGetProductInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger;
                                              cdsCheckProductInfoSummaryGridQBM.AsFloat                 := ibcspGetProductInfo.FieldByName('QBM_TO_RETURN').AsFloat;
                                              cdsCheckProductInfoSummaryGridCENA.AsFloat                := ibcspGetProductInfo.FieldByName('PRICE_TO_RETURN').AsFloat;
                                              cdsCheckProductInfoSummaryGridCENA_Z_VAT.AsFloat          := RoundTo(ibcspGetProductInfo.FieldByName('PRICE_TO_RETURN').AsFloat * 1.23,-2);
                                              cdsCheckProductInfoSummaryGrid.Post;
                                              ibcspGetProductInfo.Next;

                                        end;
                                        cdsCheckProductInfoSummaryGrid.EnableControls;
                                        cxSummaryGridDBTableView1.DataController.DataSource := dsCheckProductInfoSummaryGrid;
                                        cxSummaryGridDBTableView1.DataController.CreateAllItems;
                                    except
                                         ShowMessage('Nie uda�o za�adowa� si� danych wybranego produktu.');
                                    end;
                              end;
                              if (SellRadioButton.Checked = True) then
                              begin
                                    // Sprzeda�, je�eli ilo�� dost�pnego artyku�u > 0, wi�c mo�na sprzeda�, bo jeszcze jest.
                                    if (ibcspGetProductInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger > 0) then
                                    begin
                                           with cxSummaryGridDBTableView1 do
                                           begin
                                                  BeginUpdate;
                                                  try
                                                      while ColumnCount > 0 do
                                                            Columns[0].Destroy;
                                                  finally
                                                  EndUpdate;
                                                  end;
                                           end;

                                          ibcspGetAllProductsInfo.Close;
                                          ibcspGetAllProductsInfo.Open;
                                          cdsForSellingProcess.Open;
                                          cdsForSellingProcess.DisableControls;

                                          // Szukanie artyku�u w bazie i dodanie go do tabeli b�d�cej koszykiem: cdsForSellingProcess.
                                          try
                                          ReferenceCounter := 0;
                                              while not ibcspGetAllProductsInfo.Eof do
                                              begin
                                                    if (ibcspGetAllProductsInfo.FieldByName('ODWO_ID_TO_RETURN').AsInteger = StrToInt(productID)) then
                                                    begin
                                                          // Je�eli koszyk (cdsForSellingProcess) jest pusty, to od razu dodanie nowego artyku�u
                                                          // do niego, je�eli nie jest pusty, sprawdzanie, czy ju� nie ma w nim tego samego
                                                          // artyku�u.
                                                          if not (cdsForSellingProcess.IsEmpty) then
                                                          begin
                                                                cdsForSellingProcess.First;
                                                                while not cdsForSellingProcess.Eof do
                                                                begin
                                                                      productIDFromCdsForSellingProcess := cdsForSellingProcessETYKIETA.AsString;
                                                                      C                                 := 0;
                                                                      C2                                := 0;
                                                                      if ContainsText(productIDFromCdsForSellingProcess, '/') then
                                                                      begin
                                                                            for I := 0 to Length(productIDFromCdsForSellingProcess) do
                                                                            begin
                                                                                  if (productIDFromCdsForSellingProcess[I] = '/') then
                                                                                      C := C + 1;


                                                                                  if (C = 2) then
                                                                                  begin
                                                                                        Delete(productIDFromCdsForSellingProcess,I,Length(productIDFromCdsForSellingProcess));
                                                                                        C := 0;
                                                                                  end;
                                                                            end;
                                                                            for J := 0 to Length(productIDFromCdsForSellingProcess) do
                                                                            begin
                                                                                  if (productIDFromCdsForSellingProcess[J] = '/') then
                                                                                      C2 := C2 + 1;


                                                                                  if (C2 = 1) then
                                                                                  begin
                                                                                        Delete(productIDFromCdsForSellingProcess,1,J);
                                                                                        C2 := 0;
                                                                                  end;
                                                                            end;
                                                                            if (productIDFromCdsForSellingProcess = productID) then
                                                                            begin
                                                                                inc(ReferenceCounter);
                                                                            end;
                                                                            cdsForSellingProcess.Next;
                                                                      end else
                                                                      begin
                                                                            if (productIDFromCdsForSellingProcess = productID) then
                                                                            begin
                                                                                inc(ReferenceCounter);
                                                                            end;
                                                                            cdsForSellingProcess.Next;
                                                                      end;
                                                                end;
                                                                // Nie znaleziono takich samych artyku��w, dodanie nowego do koszyka.
                                                                if (ReferenceCounter = 0) then
                                                                begin
                                                                      cdsForSellingProcess.Append;
                                                                      cdsForSellingProcessNAZWA.AsString                := ibcspGetAllProductsInfo.FieldByName('NAME_TO_RETURN').Text;
                                                                      cdsForSellingProcessETYKIETA.AsString             := ProductIDEdit.Text;
                                                                      cdsForSellingProcessILO��_Z_BAZY.AsInteger        := ibcspGetAllProductsInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger;
                                                                      cdsForSellingProcessILO��_DO_SPRZEDANIA.AsInteger := 1;
                                                                      cdsForSellingProcess.Post;
                                                                end;
                                                          // Koszyk jest pusty, od razu dodanie artyku�u.
                                                          end else
                                                          begin
                                                                cdsForSellingProcess.Append;
                                                                cdsForSellingProcessNAZWA.AsString                := ibcspGetAllProductsInfo.FieldByName('NAME_TO_RETURN').Text;
                                                                cdsForSellingProcessETYKIETA.AsString             := ProductIDEdit.Text;
                                                                cdsForSellingProcessILO��_Z_BAZY.AsInteger        := ibcspGetAllProductsInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger;
                                                                cdsForSellingProcessILO��_DO_SPRZEDANIA.AsInteger := 1;
                                                                cdsForSellingProcess.Post;
                                                          end;
                                                    end;
                                                    ibcspGetAllProductsInfo.Next;
                                              end;
                                              cdsForSellingProcess.EnableControls;
                                              cxSummaryGridDBTableView1.DataController.DataSource := dsForSellingProcess;
                                              cxSummaryGridDBTableView1.DataController.CreateAllItems;
                                              ProductIDEdit.Clear;
                                          except
                                              ShowMessage('Dodawanie produktu do koszyka nie powiod�o si�.');
                                          end;
                                          // Koniec dodawania do koszyka.
                                    end else
                                    begin
                                          // Je�eli danego artyku�u na bazie nie jest > 0
                                          // = 0, czyli ju� nie ma, ale mo�na wycofa� ostatni zakup (najnowszy).
                                          // Wycofywanie sk�ada si� z trzech g��wnych krok�w.
                                          if (ibcspGetProductInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger = 0) then
                                          begin
                                                if MyMessageDialog('Ten produkt zosta� ju� wyprzedany, wi�c nie mo�na doda� go do koszyka. Czy cofn�� zakup dla poprzedniej osoby, kt�ra ten produkt ju� kupi�a?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
                                                begin
                                                      if MyMessageDialog('Czy na pewno cofn�� zakup dla poprzedniej osoby, kt�ra ten produkt ju� kupi�a?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
                                                      begin
                                                            orderIDToRollback                    := 0;
                                                            odwoIDToRollback                     := 0;
                                                            nameOfProductToRollback              := '';
                                                            cdsGetWorkersOrdersID.Open;
                                                            cdsGetWorkersOrdersID.DisableControls;
                                                            if not (cdsGetWorkersOrdersID.IsEmpty) then
                                                                    cdsGetWorkersOrdersID.EmptyDataSet;

                                                            // KROK 1: Zapisanie wszystkich sprzeda�y do tabeli cdsGetWorkersOrdersID wraz z ID
                                                            // poszczeg�lnych sprzeda�y.
                                                            ibcspGetWorkersOrdersID.Close;
                                                            ibcspGetWorkersOrdersID.Open;
                                                            try
                                                                while not ibcspGetWorkersOrdersID.Eof do
                                                                begin

                                                                      cdsGetWorkersOrdersID.Append;
                                                                      cdsGetWorkersOrdersIDORDER_ID.AsInteger := ibcspGetWorkersOrdersID.FieldByName('ORDER_ID_TO_RETURN').AsInteger;
                                                                      cdsGetWorkersOrdersIDUSER_ID.AsString   := ibcspGetWorkersOrdersID.FieldByName('USER_ID_TO_RETURN').Text;
                                                                      cdsGetWorkersOrdersIDLABEL.AsString     := ibcspGetWorkersOrdersID.FieldByName('LABEL_TO_RETURN').Text;
                                                                      cdsGetWorkersOrdersIDDATE.AsDateTime    := ibcspGetWorkersOrdersID.FieldByName('DATE_TO_RETURN').AsDateTime;

                                                                      cdsGetWorkersOrdersID.Post;
                                                                      ibcspGetWorkersOrdersID.Next;

                                                                end;
                                                                cdsGetWorkersOrdersID.EnableControls;
                                                            except
                                                                ShowMessage('Nie uda�o za�adowa� si� danych wszystkich sprzeda�y');
                                                            end;

                                                            // KROK 2: Szukanie w cdsGetWorkersOrdersID najnowszej sprzeda�y danego artyku�u. Zapisanie znalezionych danych
                                                            // do zmiennych.
                                                            try
                                                                cdsGetWorkersOrdersID.First;
                                                                while not cdsGetWorkersOrdersID.Eof do
                                                                begin
                                                                      productIDFromCDSGetWorkersOrdersID := cdsGetWorkersOrdersIDLABEL.AsString;
                                                                      C                                  := 0;
                                                                      C2                                 := 0;
                                                                      if ContainsText(productIDFromCDSGetWorkersOrdersID, '/') then
                                                                      begin
                                                                            for I := 0 to Length(productIDFromCDSGetWorkersOrdersID) do
                                                                            begin
                                                                                  if (productIDFromCDSGetWorkersOrdersID[I] = '/') then
                                                                                      C := C + 1;


                                                                                  if (C = 2) then
                                                                                  begin
                                                                                        Delete(productIDFromCDSGetWorkersOrdersID,I,Length(productIDFromCDSGetWorkersOrdersID));
                                                                                        C := 0;
                                                                                  end;
                                                                            end;
                                                                            for J := 0 to Length(productIDFromCDSGetWorkersOrdersID) do
                                                                            begin
                                                                                  if (productIDFromCDSGetWorkersOrdersID[J] = '/') then
                                                                                      C2 := C2 + 1;


                                                                                  if (C2 = 1) then
                                                                                  begin
                                                                                        Delete(productIDFromCDSGetWorkersOrdersID,1,J);
                                                                                        C2 := 0;
                                                                                  end;
                                                                            end;
                                                                            if (productIDFromCDSGetWorkersOrdersID   = productID) AND
                                                                               (cdsGetWorkersOrdersIDDATE.AsDateTime > maxDateToFindInCDSGetWorkersOrdersID) then
                                                                            begin
                                                                                  orderIDToRollback                    := cdsGetWorkersOrdersIDORDER_ID.AsInteger;
                                                                                  odwoIDToRollback                     := StrToInt(productIDFromCDSGetWorkersOrdersID);
                                                                                  nameOfProductToRollback              := ibcspGetProductInfo.FieldByName('NAME_TO_RETURN').AsString;
                                                                                  maxDateToFindInCDSGetWorkersOrdersID := cdsGetWorkersOrdersIDDATE.AsDateTime;
                                                                            end;
                                                                            cdsGetWorkersOrdersID.Next;
                                                                      end else
                                                                      begin
                                                                            if (productIDFromCDSGetWorkersOrdersID   = productID) AND
                                                                               (cdsGetWorkersOrdersIDDATE.AsDateTime > maxDateToFindInCDSGetWorkersOrdersID) then
                                                                            begin
                                                                                  orderIDToRollback                    := cdsGetWorkersOrdersIDORDER_ID.AsInteger;
                                                                                  odwoIDToRollback                     := StrToInt(productIDFromCDSGetWorkersOrdersID);
                                                                                  nameOfProductToRollback              := ibcspGetProductInfo.FieldByName('NAME_TO_RETURN').AsString;
                                                                                  maxDateToFindInCDSGetWorkersOrdersID := cdsGetWorkersOrdersIDDATE.AsDateTime;
                                                                            end;
                                                                            cdsGetWorkersOrdersID.Next;
                                                                      end;
                                                                end;
                                                                // KROK 3: Przekazanie danych najnowszej sprzeda�y danego artyku�u do procedury, kt�ra tak� sprzeda� wycofa.
                                                                ibcspRollbackWorkerPurchase.ParamByName('I_NAME').AsAnsiString  := ibcspGetProductInfo.FieldByName('NAME_TO_RETURN').AsAnsiString;
                                                                ibcspRollbackWorkerPurchase.ParamByName('I_ORDER_ID').AsInteger := orderIDToRollback;
                                                                ibcspRollbackWorkerPurchase.ParamByName('I_ODWO_ID').AsInteger  := odwoIDToRollback;
                                                                ibcspRollbackWorkerPurchase.Prepare;
                                                                ibcspRollbackWorkerPurchase.ExecProc;
                                                                ibcspRollbackWorkerPurchase.UnPrepare;
                                                                ibcspRollbackWorkerPurchase.Transaction.Commit;
                                                                ProductIDEdit.Clear;
                                                            except
                                                                ShowMessage('Nie uda�o znale�� si� sprzeda�y, na podstawie kt�rej dokonano by wycofania.');
                                                            end;
                                                      end;
                                                end;
                                          end;
                                    end;
                              end;
                        end else
                        begin
                              ShowMessage('Prosz� wybra� jedn� z dw�ch opcji widocznych w tym oknie przed zeskanowaniem produktu.');
                              ProductIDEdit.Clear;
                        end;
                  end;
            // Sprawdzenie, czy s� / w ci�gu znak�w, nie = to jest odwo_id.
            // Ci�g znak�w z pola "Etykieta".
            end else
            begin
                  // Sprawdzenie, czy dany produkt istnieje w bazie.
                  ibcspGetProductInfo.Close;
                  ibcspGetProductInfo.ParamByName('I_LABEL').AsAnsiString := productID;
                  ibcspGetProductInfo.Open;

                  if (ibcspGetProductInfo.FieldByName('ODWO_ID_TO_RETURN').AsInteger = 0) OR
                     (ibcspGetProductInfo.FieldByName('ODWO_ID_TO_RETURN').AsInteger = null) then
                  begin
                        ShowMessage('Brak podanego produktu w bazie');
                        ProductIDEdit.Clear;
                  end else
                  begin
                        // Produkt istnieje, wprowadzony zosta� odwo_id, wi�c dalej: akcje podejmowane w zale�no�ci od zaznaczonej opcji
                        // w programie: "Sprawd� produkt", "Sprzeda�".
                        if (CheckProductRadioButton.Checked = True) OR
                           (SellRadioButton.Checked = True) then
                        begin
                              if (CheckProductRadioButton.Checked = True) then
                              begin
                                    ProductIDEdit.Clear;
                                    try
                                         with cxSummaryGridDBTableView1 do
                                         begin
                                                BeginUpdate;
                                                try
                                                    while ColumnCount > 0 do
                                                          Columns[0].Destroy;
                                                finally
                                                EndUpdate;
                                                end;
                                         end;
                                        // Dla "Sprawd� produkt" wczytanie danych z bazy o danym produkcie i za�adowanie ich do grida.
                                        cdsCheckProductInfoSummaryGrid.Open;
                                        cdsCheckProductInfoSummaryGrid.DisableControls;
                                        if not (cdsCheckProductInfoSummaryGrid.IsEmpty) then
                                                cdsCheckProductInfoSummaryGrid.EmptyDataSet;


                                        while not ibcspGetProductInfo.Eof do
                                        begin

                                              cdsCheckProductInfoSummaryGrid.Append;
                                              cdsCheckProductInfoSummaryGridODWO_ID.AsInteger           := ibcspGetProductInfo.FieldByName('ODWO_ID_TO_RETURN').AsInteger;
                                              cdsCheckProductInfoSummaryGridAB.AsAnsiString             := ibcspGetProductInfo.FieldByName('AB_TO_RETURN').Text;
                                              cdsCheckProductInfoSummaryGridNAZWA.AsAnsiString          := ibcspGetProductInfo.FieldByName('NAME_TO_RETURN').Text;
                                              cdsCheckProductInfoSummaryGridNAZWA_TKANINY.AsAnsiString  := ibcspGetProductInfo.FieldByName('NAME_OF_FABRIC_TO_RETURN').Text;
                                              cdsCheckProductInfoSummaryGridNAZWA_KORPUSU.AsAnsiString  := ibcspGetProductInfo.FieldByName('NAME_OF_CORPUS_TO_RETURN').Text;
                                              cdsCheckProductInfoSummaryGridILO��.AsInteger             := ibcspGetProductInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger;
                                              cdsCheckProductInfoSummaryGridQBM.AsFloat                 := ibcspGetProductInfo.FieldByName('QBM_TO_RETURN').AsFloat;
                                              cdsCheckProductInfoSummaryGridCENA.AsFloat                := ibcspGetProductInfo.FieldByName('PRICE_TO_RETURN').AsFloat;
                                              cdsCheckProductInfoSummaryGridCENA_Z_VAT.AsFloat          := RoundTo(ibcspGetProductInfo.FieldByName('PRICE_TO_RETURN').AsFloat * 1.23,-2);
                                              cdsCheckProductInfoSummaryGrid.Post;
                                              ibcspGetProductInfo.Next;

                                        end;
                                        cdsCheckProductInfoSummaryGrid.EnableControls;
                                        cxSummaryGridDBTableView1.DataController.DataSource := dsCheckProductInfoSummaryGrid;
                                        cxSummaryGridDBTableView1.DataController.CreateAllItems;
                                    except
                                         ShowMessage('Nie uda�o za�adowa� si� danych wybranego produktu.');
                                    end;
                              end;
                              if (SellRadioButton.Checked = True) then
                              begin
                                    // Sprzeda�, je�eli ilo�� dost�pnego artyku�u > 0, wi�c mo�na sprzeda�, bo jeszcze jest.
                                    if (ibcspGetProductInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger > 0) then
                                    begin
                                           with cxSummaryGridDBTableView1 do
                                           begin
                                                  BeginUpdate;
                                                  try
                                                      while ColumnCount > 0 do
                                                            Columns[0].Destroy;
                                                  finally
                                                  EndUpdate;
                                                  end;
                                           end;

                                          ibcspGetAllProductsInfo.Close;
                                          ibcspGetAllProductsInfo.Open;
                                          cdsForSellingProcess.Open;
                                          cdsForSellingProcess.DisableControls;

                                          // Szukanie artyku�u w bazie i dodanie go do tabeli b�d�cej koszykiem: cdsForSellingProcess.
                                          try
                                          ReferenceCounter := 0;
                                              while not ibcspGetAllProductsInfo.Eof do
                                              begin
                                                    if (ibcspGetAllProductsInfo.FieldByName('ODWO_ID_TO_RETURN').AsInteger = StrToInt(productID)) then
                                                    begin
                                                          // Je�eli koszyk (cdsForSellingProcess) jest pusty, to od razu dodanie nowego artyku�u
                                                          // do niego, je�eli nie jest pusty, sprawdzanie, czy ju� nie ma w nim tego samego
                                                          // artyku�u.
                                                          if not (cdsForSellingProcess.IsEmpty) then
                                                          begin
                                                                cdsForSellingProcess.First;
                                                                while not cdsForSellingProcess.Eof do
                                                                begin
                                                                      productIDFromCdsForSellingProcess := cdsForSellingProcessETYKIETA.AsString;
                                                                      C                                 := 0;
                                                                      C2                                := 0;
                                                                      if ContainsText(productIDFromCdsForSellingProcess, '/') then
                                                                      begin
                                                                            for I := 0 to Length(productIDFromCdsForSellingProcess) do
                                                                            begin
                                                                                  if (productIDFromCdsForSellingProcess[I] = '/') then
                                                                                      C := C + 1;


                                                                                  if (C = 2) then
                                                                                  begin
                                                                                        Delete(productIDFromCdsForSellingProcess,I,Length(productIDFromCdsForSellingProcess));
                                                                                        C := 0;
                                                                                  end;
                                                                            end;
                                                                            for J := 0 to Length(productIDFromCdsForSellingProcess) do
                                                                            begin
                                                                                  if (productIDFromCdsForSellingProcess[J] = '/') then
                                                                                      C2 := C2 + 1;


                                                                                  if (C2 = 1) then
                                                                                  begin
                                                                                        Delete(productIDFromCdsForSellingProcess,1,J);
                                                                                        C2 := 0;
                                                                                  end;
                                                                            end;
                                                                            if (productIDFromCdsForSellingProcess = productID) then
                                                                            begin
                                                                                inc(ReferenceCounter);
                                                                            end;
                                                                            cdsForSellingProcess.Next;
                                                                      end else
                                                                      begin
                                                                            if (productIDFromCdsForSellingProcess = productID) then
                                                                            begin
                                                                                inc(ReferenceCounter);
                                                                            end;
                                                                            cdsForSellingProcess.Next;
                                                                      end;
                                                                end;
                                                                // Nie znaleziono takich samych artyku��w, dodanie nowego do koszyka.
                                                                if (ReferenceCounter = 0) then
                                                                begin
                                                                      cdsForSellingProcess.Append;
                                                                      cdsForSellingProcessNAZWA.AsString                := ibcspGetAllProductsInfo.FieldByName('NAME_TO_RETURN').Text;
                                                                      cdsForSellingProcessETYKIETA.AsString             := ProductIDEdit.Text;
                                                                      cdsForSellingProcessILO��_Z_BAZY.AsInteger        := ibcspGetAllProductsInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger;
                                                                      cdsForSellingProcessILO��_DO_SPRZEDANIA.AsInteger := 1;
                                                                      cdsForSellingProcess.Post;
                                                                end;
                                                                // Koszyk jest pusty, od razu dodanie artyku�u.
                                                          end else
                                                          begin
                                                                cdsForSellingProcess.Append;
                                                                cdsForSellingProcessNAZWA.AsString                := ibcspGetAllProductsInfo.FieldByName('NAME_TO_RETURN').Text;
                                                                cdsForSellingProcessETYKIETA.AsString             := ProductIDEdit.Text;
                                                                cdsForSellingProcessILO��_Z_BAZY.AsInteger        := ibcspGetAllProductsInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger;
                                                                cdsForSellingProcessILO��_DO_SPRZEDANIA.AsInteger := 1;
                                                                cdsForSellingProcess.Post;
                                                          end;
                                                    end;
                                                    ibcspGetAllProductsInfo.Next;
                                              end;
                                              cdsForSellingProcess.EnableControls;
                                              cxSummaryGridDBTableView1.DataController.DataSource := dsForSellingProcess;
                                              cxSummaryGridDBTableView1.DataController.CreateAllItems;
                                              ProductIDEdit.Clear;
                                          except
                                              ShowMessage('Dodawanie produktu do koszyka nie powiod�o si�.');
                                          end;
                                          // Koniec dodawania do koszyka.
                                    end else
                                    begin
                                          // Je�eli danego artyku�u na bazie nie jest > 0
                                          // = 0, czyli ju� nie ma, ale mo�na wycofa� ostatni zakup (najnowszy).
                                          // Wycofywanie sk�ada si� z trzech g��wnych krok�w.
                                          if (ibcspGetProductInfo.FieldByName('AMOUNT_TO_RETURN').AsInteger = 0) then
                                          begin
                                                if MyMessageDialog('Ten produkt zosta� ju� wyprzedany, wi�c nie mo�na doda� go do koszyka. Czy cofn�� zakup dla poprzedniej osoby, kt�ra ten produkt ju� kupi�a?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
                                                begin
                                                      if MyMessageDialog('Czy na pewno cofn�� zakup dla poprzedniej osoby, kt�ra ten produkt ju� kupi�a?', mtConfirmation, mbYesNo, ['TAK','NIE']) = mrYes then
                                                      begin
                                                            orderIDToRollback                    := 0;
                                                            odwoIDToRollback                     := 0;
                                                            nameOfProductToRollback              := '';
                                                            cdsGetWorkersOrdersID.Open;
                                                            cdsGetWorkersOrdersID.DisableControls;
                                                            if not (cdsGetWorkersOrdersID.IsEmpty) then
                                                                    cdsGetWorkersOrdersID.EmptyDataSet;

                                                            // KROK 1: Zapisanie wszystkich sprzeda�y do tabeli cdsGetWorkersOrdersID wraz z ID
                                                            // poszczeg�lnych sprzeda�y.
                                                            ibcspGetWorkersOrdersID.Close;
                                                            ibcspGetWorkersOrdersID.Open;
                                                            try
                                                                while not ibcspGetWorkersOrdersID.Eof do
                                                                begin

                                                                      cdsGetWorkersOrdersID.Append;
                                                                      cdsGetWorkersOrdersIDORDER_ID.AsInteger := ibcspGetWorkersOrdersID.FieldByName('ORDER_ID_TO_RETURN').AsInteger;
                                                                      cdsGetWorkersOrdersIDUSER_ID.AsString   := ibcspGetWorkersOrdersID.FieldByName('USER_ID_TO_RETURN').Text;
                                                                      cdsGetWorkersOrdersIDLABEL.AsString     := ibcspGetWorkersOrdersID.FieldByName('LABEL_TO_RETURN').Text;
                                                                      cdsGetWorkersOrdersIDDATE.AsDateTime    := ibcspGetWorkersOrdersID.FieldByName('DATE_TO_RETURN').AsDateTime;

                                                                      cdsGetWorkersOrdersID.Post;
                                                                      ibcspGetWorkersOrdersID.Next;

                                                                end;
                                                                cdsGetWorkersOrdersID.EnableControls;
                                                            except
                                                                ShowMessage('Nie uda�o za�adowa� si� danych wszystkich sprzeda�y');
                                                            end;

                                                            // KROK 2: Szukanie w cdsGetWorkersOrdersID najnowszej sprzeda�y danego artyku�u. Zapisanie znalezionych danych
                                                            // do zmiennych.
                                                            try
                                                                cdsGetWorkersOrdersID.First;
                                                                while not cdsGetWorkersOrdersID.Eof do
                                                                begin
                                                                      productIDFromCDSGetWorkersOrdersID := cdsGetWorkersOrdersIDLABEL.AsString;
                                                                      C                                  := 0;
                                                                      C2                                 := 0;
                                                                      if ContainsText(productIDFromCDSGetWorkersOrdersID, '/') then
                                                                      begin
                                                                            for I := 0 to Length(productIDFromCDSGetWorkersOrdersID) do
                                                                            begin
                                                                                  if (productIDFromCDSGetWorkersOrdersID[I] = '/') then
                                                                                      C := C + 1;


                                                                                  if (C = 2) then
                                                                                  begin
                                                                                        Delete(productIDFromCDSGetWorkersOrdersID,I,Length(productIDFromCDSGetWorkersOrdersID));
                                                                                        C := 0;
                                                                                  end;
                                                                            end;
                                                                            for J := 0 to Length(productIDFromCDSGetWorkersOrdersID) do
                                                                            begin
                                                                                  if (productIDFromCDSGetWorkersOrdersID[J] = '/') then
                                                                                      C2 := C2 + 1;


                                                                                  if (C2 = 1) then
                                                                                  begin
                                                                                        Delete(productIDFromCDSGetWorkersOrdersID,1,J);
                                                                                        C2 := 0;
                                                                                  end;
                                                                            end;
                                                                            if (productIDFromCDSGetWorkersOrdersID   = productID) AND
                                                                               (cdsGetWorkersOrdersIDDATE.AsDateTime > maxDateToFindInCDSGetWorkersOrdersID) then
                                                                            begin
                                                                                  orderIDToRollback                    := cdsGetWorkersOrdersIDORDER_ID.AsInteger;
                                                                                  odwoIDToRollback                     := StrToInt(productIDFromCDSGetWorkersOrdersID);
                                                                                  nameOfProductToRollback              := ibcspGetProductInfo.FieldByName('NAME_TO_RETURN').AsString;
                                                                                  maxDateToFindInCDSGetWorkersOrdersID := cdsGetWorkersOrdersIDDATE.AsDateTime;
                                                                            end;
                                                                            cdsGetWorkersOrdersID.Next;
                                                                      end else
                                                                      begin
                                                                            if (productIDFromCDSGetWorkersOrdersID   = productID) AND
                                                                               (cdsGetWorkersOrdersIDDATE.AsDateTime > maxDateToFindInCDSGetWorkersOrdersID) then
                                                                            begin
                                                                                  orderIDToRollback                    := cdsGetWorkersOrdersIDORDER_ID.AsInteger;
                                                                                  odwoIDToRollback                     := StrToInt(productIDFromCDSGetWorkersOrdersID);
                                                                                  nameOfProductToRollback              := ibcspGetProductInfo.FieldByName('NAME_TO_RETURN').AsString;
                                                                                  maxDateToFindInCDSGetWorkersOrdersID := cdsGetWorkersOrdersIDDATE.AsDateTime;
                                                                            end;
                                                                            cdsGetWorkersOrdersID.Next;
                                                                      end;
                                                                end;
                                                                // KROK 3: Przekazanie danych najnowszej sprzeda�y danego artyku�u do procedury, kt�ra tak� sprzeda� wycofa.
                                                                ibcspRollbackWorkerPurchase.ParamByName('I_NAME').AsAnsiString  := ibcspGetProductInfo.FieldByName('NAME_TO_RETURN').AsAnsiString;
                                                                ibcspRollbackWorkerPurchase.ParamByName('I_ORDER_ID').AsInteger := orderIDToRollback;
                                                                ibcspRollbackWorkerPurchase.ParamByName('I_ODWO_ID').AsInteger  := odwoIDToRollback;
                                                                ibcspRollbackWorkerPurchase.Prepare;
                                                                ibcspRollbackWorkerPurchase.ExecProc;
                                                                ibcspRollbackWorkerPurchase.UnPrepare;
                                                                ibcspRollbackWorkerPurchase.Transaction.Commit;
                                                                ProductIDEdit.Clear;
                                                            except
                                                                ShowMessage('Nie uda�o znale�� si� sprzeda�y, na podstawie kt�rej dokonano by wycofania.');
                                                            end;
                                                      end;
                                                end;
                                          end;
                                    end;
                              end;
                        end else
                        begin
                              ShowMessage('Prosz� wybra� jedn� z dw�ch opcji widocznych w tym oknie przed zeskanowaniem produktu.');
                              ProductIDEdit.Clear;
                        end;
                  end;
            end;

      end;
end;
end;

end.
