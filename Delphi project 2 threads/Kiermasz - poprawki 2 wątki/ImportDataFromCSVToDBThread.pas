unit ImportDataFromCSVToDBThread;

interface

uses
  System.Classes,
  System.SysUtils,
  System.Variants,
  Vcl.Dialogs,
  Vcl.Forms,
  IBCClasses,
  IBC;

type
tImportDataFromCSVToDBDoneEvent   = procedure(Sender: TObject; const Success: Boolean) of object;
tImportDataFromCSVToDBThread      = class(TThread)

    tSuccess:                   Boolean;
    tOnFinished:                tImportDataFromCSVToDBDoneEvent;
    ibcdbDFM:                   TIBCConnection;
    ibctOnlyLoad:               TIBCTransaction;
    ibctOnlySave:               TIBCTransaction;
    ibcqCheckDataBeforeImport:  TIBCQuery;
    ibcqImportCSV:              TIBCQuery;


  protected
    procedure Execute; override;
    procedure SYNC_OnFinished;
  public
    constructor Create;     reintroduce;
    destructor  Destroy;    override;
    property    OnFinished: tImportDataFromCSVToDBDoneEvent read tOnFinished write tOnFinished;
  end;

implementation


{ ImportDataFromCSVToDBThread }

uses uMainPanel,
     uInfoBox;


constructor tImportDataFromCSVToDBThread.Create;
begin
  inherited Create(True);
end;

destructor tImportDataFromCSVToDBThread.Destroy;
begin
  inherited;
end;

procedure tImportDataFromCSVToDBThread.Execute;
begin
   try
        try
             ibcdbDFM                                      := TIBCConnection.Create(nil);
             ibctOnlyLoad                                  := TIBCTransaction.Create(nil);
             ibctOnlySave                                  := TIBCTransaction.Create(nil);
             ibcqCheckDataBeforeImport                     := TIBCQuery.Create(nil);
             ibcqImportCSV                                 := TIBCQuery.Create(nil);
             tSuccess                                      := False;



             ibcdbDFM.ClientLibrary                        := 'fbclient.dll';
             ibcdbDFM.ConnectString                        := 'Data Source=10.10.10.100;Database=/baza/kiermasz.fdb;' +
                                                              'User ID=KIERMASZ;Password=12345678;' +
                                                              'Client Library=fbclient.dll;Login Prompt=False';
             ibcdbDFM.Database                             := '/baza/kiermasz.fdb';
             ibcdbDFM.LoginPrompt                          := False;
             ibcdbDFM.Password                             := '12345678';
             ibcdbDFM.Port                                 := '3050';
             ibcdbDFM.Server                               := '10.10.10.100';
             ibcdbDFM.Username                             := 'KIERMASZ';
             ibcdbDFM.Connected                            := True;
             ibcdbDFM.Open;


             ibctOnlyLoad.DefaultConnection                := ibcdbDFM;
             ibctOnlyLoad.DefaultCloseAction               := taRollback;
             ibctOnlyLoad.IsolationLevel                   := iblReadOnlyReadCommitted;


             ibctOnlySave.DefaultConnection                := ibcdbDFM;
             ibctOnlySave.DefaultCloseAction               := taRollback;
             ibctOnlySave.IsolationLevel                   := iblReadCommitted;



             ibcqCheckDataBeforeImport.AutoCalcFields      := True;
             ibcqCheckDataBeforeImport.AutoCommit          := True;
             ibcqCheckDataBeforeImport.Connection          := ibcdbDFM;
             ibcqCheckDataBeforeImport.FetchAll            := False;
             ibcqCheckDataBeforeImport.ParamCheck          := True;
             ibcqCheckDataBeforeImport.Transaction         := ibctOnlyLoad;
             ibcqCheckDataBeforeImport.SQL.Text            := 'SELECT * FROM CHECK_DATA_BEFORE_IMPORT(' +
                                                              ':I_ODWO_ID, :I_AB, :I_NAME, :I_NAME_OF_FABRIC, ' +
                                                              ':I_NAME_OF_FABRIC2, :I_NAME_OF_CORPUS, ' +
                                                              ':I_AMOUNT, :I_PARENT_OF_ARTICLE_ID)';



             ibcqImportCSV.AutoCalcFields                  := True;
             ibcqImportCSV.AutoCommit                      := True;
             ibcqImportCSV.Connection                      := ibcdbDFM;
             ibcqImportCSV.FetchAll                        := False;
             ibcqImportCSV.ParamCheck                      := True;
             ibcqImportCSV.Transaction                     := ibctOnlySave;
             ibcqImportCSV.SQL.Text                        := 'EXECUTE PROCEDURE IMPORT_DATA_FROM_CSV(' +
                                                              ':I_ODWO_ID, :I_AB, :I_NAME, :I_NAME_OF_FABRIC, ' +
                                                              ':I_NAME_OF_FABRIC2, :I_NAME_OF_CORPUS, ' +
                                                              ':I_AMOUNT, :I_PARENT_OF_ARTICLE_ID, ' +
                                                              ':I_QBM, :I_PRICE)';

        finally
             tSuccess := True;
        end;
   except
        ShowMessage('Import danych nie powi�d� si�');
   end;
   Synchronize(SYNC_OnFinished);
end;

procedure tImportDataFromCSVToDBThread.SYNC_OnFinished;
var
    J, errorCounter: integer;
begin
  if Assigned(tOnFinished) then
  begin
       try
              try
                  errorCounter := 0;
                  fMainPanel.cdsImportCSVReportGrid.Open;
                  fMainPanel.cdsImportCSVReportGrid.DisableControls;
                  if not (fMainPanel.cdsImportCSVReportGrid.IsEmpty) then
                          fMainPanel.cdsImportCSVReportGrid.EmptyDataSet;


                  for J := 0 to fMainPanel.jvcsvDataFromFile.RecordCount - 2 do
                  begin
                        if (fMainPanel.jvcsvDataFromFile.GetAsString(J,0) = '') OR
                           (fMainPanel.jvcsvDataFromFile.GetAsString(J,1) = '') OR
                           (fMainPanel.jvcsvDataFromFile.GetAsString(J,2) = '') then
                           begin
                                    try
                                        fMainPanel.cdsImportCSVReportGrid.Append;
                                        // 3 pierwsze kolumny CSV puste = b��d do wy�wietlenia w gridzie i nie importowanie tych danych do bazy.
                                        fMainPanel.cdsImportCSVReportGridPOW�D_B��DU.AsAnsiString  := 'Pusty rekord';
                                        fMainPanel.cdsImportCSVReportGridODWO_ID.AsAnsiString      := fMainPanel.jvcsvDataFromFile.GetAsString(J,0);
                                        fMainPanel.cdsImportCSVReportGridAB.AsAnsiString           := fMainPanel.jvcsvDataFromFile.GetAsString(J,1);
                                        fMainPanel.cdsImportCSVReportGridNAZWA.AsAnsiString        := fMainPanel.jvcsvDataFromFile.GetAsString(J,2);
                                        fMainPanel.cdsImportCSVReportGrid.Post;
                                        inc(errorCounter);
                                    except
                                        ShowMessage('Odczyt danych z pliku CSV nie powi�d� si�');
                                    end;
                           end
                           else begin
                                    ibcqCheckDataBeforeImport.Close;
                                    // Rekord CSV nie jest pusty, sprawdzenie, czy w bazie ju� nie ma tego samego artyku�u.
                                    ibcqCheckDataBeforeImport.ParamByName('I_ODWO_ID').AsInteger              := StrToInt(fMainPanel.jvcsvDataFromFile.GetAsString(J,0));
                                    ibcqCheckDataBeforeImport.ParamByName('I_AB').AsAnsiString                := fMainPanel.jvcsvDataFromFile.GetAsString(J,1);
                                    ibcqCheckDataBeforeImport.ParamByName('I_NAME').AsAnsiString              := fMainPanel.jvcsvDataFromFile.GetAsString(J,2);
                                    ibcqCheckDataBeforeImport.ParamByName('I_NAME_OF_FABRIC').AsAnsiString    := fMainPanel.jvcsvDataFromFile.GetAsString(J,3);
                                    ibcqCheckDataBeforeImport.ParamByName('I_NAME_OF_FABRIC2').AsAnsiString   := fMainPanel.jvcsvDataFromFile.GetAsString(J,4);
                                    ibcqCheckDataBeforeImport.ParamByName('I_NAME_OF_CORPUS').AsAnsiString    := fMainPanel.jvcsvDataFromFile.GetAsString(J,5);
                                    ibcqCheckDataBeforeImport.ParamByName('I_AMOUNT').AsInteger               := StrToInt(fMainPanel.jvcsvDataFromFile.GetAsString(J,6));
                                    ibcqCheckDataBeforeImport.ParamByName('I_PARENT_OF_ARTICLE_ID').AsInteger := StrToInt(fMainPanel.jvcsvDataFromFile.GetAsString(J,7));
                                    ibcqCheckDataBeforeImport.Open;
                                    if (ibcqCheckDataBeforeImport.FieldByName('COUNT_ARTICLE_TO_RETURN').AsInteger     >= 1) AND
                                       not (ibcqCheckDataBeforeImport.FieldByName('COUNT_ARTICLE_TO_RETURN').AsInteger = null) AND
                                       not (ibcqCheckDataBeforeImport.FieldByName('COUNT_ARTICLE_TO_RETURN').AsInteger = 0) then
                                    begin
                                          try
                                              fMainPanel.cdsImportCSVReportGrid.Append;
                                              // Co� na bazie ju� jest takiego samego, b��d do wy�wietlenia w gridzie, nie importowanie danych z tego rekordu.
                                              fMainPanel.cdsImportCSVReportGridPOW�D_B��DU.AsAnsiString  := 'Istniej�cy rekord';
                                              fMainPanel.cdsImportCSVReportGridODWO_ID.AsAnsiString      := fMainPanel.jvcsvDataFromFile.GetAsString(J,0);
                                              fMainPanel.cdsImportCSVReportGridAB.AsAnsiString           := fMainPanel.jvcsvDataFromFile.GetAsString(J,1);
                                              fMainPanel.cdsImportCSVReportGridNAZWA.AsAnsiString        := fMainPanel.jvcsvDataFromFile.GetAsString(J,2);
                                              fMainPanel.cdsImportCSVReportGrid.Post;
                                              inc(errorCounter);
                                          except
                                              ShowMessage('Odczyt danych z pliku CSV nie powi�d� si�');
                                          end;
                                    end else
                                    begin
                                          // Brak duplikatu, importowanie danych z pliku CSV do bazy.
                                          ibcqImportCSV.ParamByName('I_ODWO_ID').AsInteger              := StrToInt(fMainPanel.jvcsvDataFromFile.GetAsString(J,0));
                                          ibcqImportCSV.ParamByName('I_AB').AsAnsiString                := fMainPanel.jvcsvDataFromFile.GetAsString(J,1);
                                          ibcqImportCSV.ParamByName('I_NAME').AsAnsiString              := fMainPanel.jvcsvDataFromFile.GetAsString(J,2);
                                          ibcqImportCSV.ParamByName('I_NAME_OF_FABRIC').AsAnsiString    := fMainPanel.jvcsvDataFromFile.GetAsString(J,3);
                                          ibcqImportCSV.ParamByName('I_NAME_OF_FABRIC2').AsAnsiString   := fMainPanel.jvcsvDataFromFile.GetAsString(J,4);
                                          ibcqImportCSV.ParamByName('I_NAME_OF_CORPUS').AsAnsiString    := fMainPanel.jvcsvDataFromFile.GetAsString(J,5);
                                          ibcqImportCSV.ParamByName('I_AMOUNT').AsInteger               := StrToInt(fMainPanel.jvcsvDataFromFile.GetAsString(J,6));
                                          ibcqImportCSV.ParamByName('I_PARENT_OF_ARTICLE_ID').AsInteger := StrToInt(fMainPanel.jvcsvDataFromFile.GetAsString(J,7));
                                          ibcqImportCSV.ParamByName('I_QBM').AsFloat                    := StrToFloat(fMainPanel.jvcsvDataFromFile.GetAsString(J,9));
                                          ibcqImportCSV.ParamByName('I_PRICE').AsFloat                  := StrToFloat(fMainPanel.jvcsvDataFromFile.GetAsString(J,10));
                                          ibcqImportCSV.Prepare;
                                          ibcqImportCSV.ExecSQL;
                                          ibcqImportCSV.UnPrepare;
                                          ibcqImportCSV.Transaction.Commit;
                                    end;
                           end;
                  // Wy�wietlenie formatki z paskiem �adowania (uInfoBox)
                  // Aktualizowanie na bie��co pozycji paska (Position) wraz z maksymaln� ilo�ci� rekord�w z pliku CSV:
                  // "Position / wszystkie rekordy"
                  if not (fInfoBox.pbFInfoBox.Position > fInfoBox.pbFInfoBox.Max) then
                  begin
                        fInfoBox.cxProgressBarLabel.Caption := IntToStr(fInfoBox.pbFInfoBox.Position) + '/' +
                                                               IntToStr(fInfoBox.pbFInfoBox.Max);

                        if not (fInfoBox.pbFInfoBox.Position >= fInfoBox.pbFInfoBox.Max) then fInfoBox.pbFInfoBox.StepIt;
                  end;
                  Application.ProcessMessages;
                  end;
                  fMainPanel.cdsImportCSVReportGrid.EnableControls;
                  fMainPanel.cxImportCSVReportGridDBTableView1.DataController.CreateAllItems;

                  if (errorCounter > 0) then
                      ShowMessage('Import danych powi�d� si� pomimo pewnych b��d�w. B��dne rekordy nie zosta�y zaimportowane.');


                  if (errorCounter = 0) then
                      ShowMessage('Import danych powi�d� si�');
              finally
                   ibcqImportCSV.Close;
                   FreeAndNil(ibcqImportCSV);


                   ibcqCheckDataBeforeImport.Close;
                   FreeAndNil(ibcqCheckDataBeforeImport);


                   ibcdbDFM.Close;
                   FreeAndNil(ibcdbDFM);
                   FreeAndNil(ibctOnlyLoad);
                   FreeAndNil(ibctOnlySave);
                   tOnFinished(Self, tSuccess);
                   tSuccess := True;
              end;
       except
              ShowMessage('Import danych nie powi�d� si�');
       end;
  end;
end;

end.
