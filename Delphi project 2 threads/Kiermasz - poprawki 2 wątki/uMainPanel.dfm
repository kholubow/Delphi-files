﻿object fMainPanel: TfMainPanel
  Left = 0
  Top = 0
  Caption = 'Kiermasz - okno g'#322#243'wne'
  ClientHeight = 572
  ClientWidth = 1318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gpMainPanel: TGridPanel
    Left = 0
    Top = 0
    Width = 1318
    Height = 572
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = cxMainPageControl
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    object cxMainPageControl: TcxPageControl
      Left = 1
      Top = 1
      Width = 1316
      Height = 570
      Align = alClient
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = cxSellTabSheet
      Properties.CustomButtons.Buttons = <>
      Properties.Images = fMainPanelCxImageList
      ClientRectBottom = 566
      ClientRectLeft = 4
      ClientRectRight = 1312
      ClientRectTop = 51
      object cxSellTabSheet: TcxTabSheet
        Caption = 'Sprzeda'#380
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 8
        ParentFont = False
        object gpSellPanel: TGridPanel
          Left = 0
          Top = 0
          Width = 1308
          Height = 515
          Align = alClient
          Color = clTeal
          ColumnCollection = <
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              ColumnSpan = 3
              Control = CheckProductRadioButton
              Row = 0
            end
            item
              Column = 0
              ColumnSpan = 3
              Control = SellRadioButton
              Row = 1
            end
            item
              Column = 3
              ColumnSpan = 2
              Control = cxWorkerDataLabel
              Row = 0
            end
            item
              Column = 3
              ColumnSpan = 2
              Control = cxProductLabel
              Row = 2
            end
            item
              Column = 3
              ColumnSpan = 2
              Control = SearchWorkerButton
              Row = 1
            end
            item
              Column = 5
              ColumnSpan = 5
              Control = WorkerIDEditInSellTabPanel
              Row = 0
              RowSpan = 2
            end
            item
              Column = 5
              ColumnSpan = 5
              Control = ProductIDEdit
              Row = 2
              RowSpan = 2
            end
            item
              Column = 0
              ColumnSpan = 10
              Control = cxSummaryGrid
              Row = 4
              RowSpan = 5
            end
            item
              Column = 0
              ColumnSpan = 2
              Control = CancelCurrentSellingButton
              Row = 9
            end
            item
              Column = 2
              Control = DeleteCurrentSummaryPositionButton
              Row = 9
            end
            item
              Column = 3
              ColumnSpan = 2
              Control = GenerateReportForSellButton
              Row = 9
            end
            item
              Column = 7
              ColumnSpan = 3
              Control = FinalizeSellButton
              Row = 9
            end
            item
              Column = 5
              ColumnSpan = 2
              Control = ChangeAmountOfChoosenProductToSellButton
              Row = 9
            end>
          ParentBackground = False
          RowCollection = <
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          TabOrder = 0
          object CheckProductRadioButton: TRadioButton
            Left = 1
            Top = 1
            Width = 390
            Height = 51
            Align = alClient
            Caption = 'Sprawd'#378' produkt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -33
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = CheckProductRadioButtonClick
          end
          object SellRadioButton: TRadioButton
            Left = 1
            Top = 52
            Width = 390
            Height = 51
            Align = alClient
            Caption = 'Sprzeda'#380
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -33
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = SellRadioButtonClick
          end
          object cxWorkerDataLabel: TcxLabel
            Left = 391
            Top = 1
            Align = alClient
            Caption = 'Dane pracownika'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -33
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxProductLabel: TcxLabel
            Left = 391
            Top = 103
            Align = alClient
            Caption = 'Etykieta'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -33
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object SearchWorkerButton: TButton
            Left = 391
            Top = 52
            Width = 260
            Height = 51
            Align = alClient
            Caption = 'Szukaj pracownika'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 6
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 4
            OnClick = SearchWorkerButtonClick
          end
          object WorkerIDEditInSellTabPanel: TEdit
            Left = 651
            Top = 1
            Width = 656
            Height = 102
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -47
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyPress = WorkerIDEditInSellTabPanelKeyPress
            ExplicitHeight = 65
          end
          object ProductIDEdit: TEdit
            Left = 651
            Top = 103
            Width = 656
            Height = 102
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -47
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyPress = ProductIDEditKeyPress
            ExplicitHeight = 65
          end
          object cxSummaryGrid: TcxGrid
            Left = 1
            Top = 205
            Width = 1306
            Height = 255
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            object cxSummaryGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = ' '
              OptionsView.CellAutoHeight = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
            end
            object cxSummaryGridLevel1: TcxGridLevel
              GridView = cxSummaryGridDBTableView1
            end
          end
          object CancelCurrentSellingButton: TButton
            Left = 1
            Top = 460
            Width = 260
            Height = 54
            Align = alClient
            Caption = 'Anuluj zakupy'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 2
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 5
            OnClick = CancelCurrentSellingButtonClick
          end
          object DeleteCurrentSummaryPositionButton: TButton
            Left = 261
            Top = 460
            Width = 130
            Height = 54
            Align = alClient
            Caption = 'Usu'#324' pozycj'#281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 3
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 6
            OnClick = DeleteCurrentSummaryPositionButtonClick
          end
          object GenerateReportForSellButton: TButton
            Left = 391
            Top = 460
            Width = 260
            Height = 54
            Align = alClient
            Caption = 'Wygeneruj o'#347'wiadczenie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 1
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 7
            OnClick = GenerateReportForSellButtonClick
          end
          object FinalizeSellButton: TButton
            Left = 911
            Top = 460
            Width = 396
            Height = 54
            Align = alClient
            Caption = 'Sprzedaj wybrane artyku'#322'y'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 5
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 9
            OnClick = FinalizeSellButtonClick
          end
          object ChangeAmountOfChoosenProductToSellButton: TButton
            Left = 651
            Top = 460
            Width = 260
            Height = 54
            Align = alClient
            Caption = 'Zmie'#324' ilo'#347#263' do sprzedania'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 4
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 8
            OnClick = ChangeAmountOfChoosenProductToSellButtonClick
          end
        end
      end
      object cxReportForSellsTabSheet: TcxTabSheet
        Caption = 'Raport sprzeda'#380'y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 9
        ParentFont = False
        object gpReportForSellsPanel: TGridPanel
          Left = 0
          Top = 0
          Width = 1308
          Height = 515
          Align = alClient
          Color = clTeal
          ColumnCollection = <
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 2
              Control = WorkerRadioButton
              Row = 0
            end
            item
              Column = 5
              Control = DateRangeRadioButton
              Row = 0
            end
            item
              Column = 6
              Control = DateFromTimePicker
              Row = 0
            end
            item
              Column = 7
              Control = DateToTimePicker
              Row = 0
            end
            item
              Column = 8
              ColumnSpan = 2
              Control = GenerateReportButton
              Row = 0
            end
            item
              Column = 0
              ColumnSpan = 10
              Control = cxAllSellsGrid
              Row = 1
              RowSpan = 9
            end
            item
              Column = 0
              ColumnSpan = 2
              Control = RefreshDataButtonInReportForSellsMode
              Row = 0
            end
            item
              Column = 3
              ColumnSpan = 2
              Control = WorkerIDEditInReportForSells
              Row = 0
            end>
          ParentBackground = False
          RowCollection = <
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          TabOrder = 0
          object WorkerRadioButton: TRadioButton
            Left = 261
            Top = 1
            Width = 130
            Height = 51
            Align = alClient
            Caption = 'Pracownik'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = WorkerRadioButtonClick
          end
          object DateRangeRadioButton: TRadioButton
            Left = 651
            Top = 1
            Width = 130
            Height = 51
            Align = alClient
            Caption = 'Zakres dat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = DateRangeRadioButtonClick
          end
          object DateFromTimePicker: TDateTimePicker
            Left = 781
            Top = 1
            Width = 130
            Height = 51
            Align = alClient
            Date = 43861.000000000000000000
            Time = 0.369896261574467600
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnChange = DateFromTimePickerChange
          end
          object DateToTimePicker: TDateTimePicker
            Left = 911
            Top = 1
            Width = 130
            Height = 51
            Align = alClient
            Date = 43861.000000000000000000
            Time = 0.371167500001320200
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnChange = DateToTimePickerChange
          end
          object GenerateReportButton: TButton
            Left = 1041
            Top = 1
            Width = 266
            Height = 51
            Align = alClient
            Caption = 'Wygeneruj raport'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 1
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 6
            OnClick = GenerateReportButtonClick
          end
          object cxAllSellsGrid: TcxGrid
            Left = 1
            Top = 52
            Width = 1306
            Height = 462
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            object cxAllSellsGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsReportForAllSells
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = ' '
              OptionsView.CellAutoHeight = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
            end
            object cxAllSellsGridLevel1: TcxGridLevel
              GridView = cxAllSellsGridDBTableView1
            end
          end
          object RefreshDataButtonInReportForSellsMode: TButton
            Left = 1
            Top = 1
            Width = 260
            Height = 51
            Hint = 
              'Wczytuje dane o dokonanych sprzeda'#380'ach dla wszystkich pracownik'#243 +
              'w'
            Align = alClient
            Caption = 'Od'#347'wie'#380' dane'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 0
            Images = fMainPanelCxImageList
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = RefreshDataButtonInReportForSellsModeClick
          end
          object WorkerIDEditInReportForSells: TEdit
            Left = 391
            Top = 1
            Width = 260
            Height = 51
            Hint = 
              'Wyszukaj pracownika po jego numerze ewidencyjnym/zeskanowanym ko' +
              'dzie z jego przepustki'
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TextHint = 'Wprowad'#378' dane'
            OnChange = WorkerIDEditInReportForSellsChange
            ExplicitHeight = 37
          end
        end
      end
      object cxImportCSVFileToDBTabSheet: TcxTabSheet
        Caption = 'Import CSV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 10
        ParentFont = False
        object gpImportCSVPanel: TGridPanel
          Left = 0
          Top = 0
          Width = 1308
          Height = 515
          Align = alClient
          Color = clTeal
          ColumnCollection = <
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              ColumnSpan = 10
              Control = cxImportCSVReportGrid
              Row = 0
              RowSpan = 9
            end
            item
              Column = 0
              ColumnSpan = 2
              Control = GenerateReportImportCSVButton
              Row = 9
            end
            item
              Column = 8
              ColumnSpan = 2
              Control = LoadCSVFileButton
              Row = 9
            end>
          ParentBackground = False
          RowCollection = <
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          TabOrder = 0
          object cxImportCSVReportGrid: TcxGrid
            Left = 1
            Top = 1
            Width = 1306
            Height = 459
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object cxImportCSVReportGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsImportCSVReportGrid
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = ' '
              OptionsView.CellAutoHeight = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
            end
            object cxImportCSVReportGridLevel1: TcxGridLevel
              GridView = cxImportCSVReportGridDBTableView1
            end
          end
          object GenerateReportImportCSVButton: TButton
            Left = 1
            Top = 460
            Width = 260
            Height = 54
            Align = alClient
            Caption = 'Wygeneruj raport'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 1
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 1
            OnClick = GenerateReportImportCSVButtonClick
          end
          object LoadCSVFileButton: TButton
            Left = 1041
            Top = 460
            Width = 266
            Height = 54
            Align = alClient
            Caption = 'Za'#322'aduj plik CSV'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 7
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 0
            OnClick = LoadCSVFileButtonClick
          end
        end
      end
      object cxModifyPricesTabSheet: TcxTabSheet
        Caption = 'Popraw Ceny'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 11
        ParentFont = False
        object gpModifyPricesPanel: TGridPanel
          Left = 0
          Top = 0
          Width = 1308
          Height = 515
          Align = alClient
          Color = clTeal
          ColumnCollection = <
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              ColumnSpan = 10
              Control = cxModifyPricesGrid
              Row = 0
              RowSpan = 9
            end
            item
              Column = 0
              ColumnSpan = 2
              Control = GenerateReportInModifyPriceModeButton
              Row = 9
            end
            item
              Column = 2
              ColumnSpan = 2
              Control = RefreshDataButtonInModifyPricesMode
              Row = 9
            end
            item
              Column = 8
              ColumnSpan = 2
              Control = ModifyPriceButton
              Row = 9
            end
            item
              Column = 4
              ColumnSpan = 2
              Control = OdwoIDSearchingModeInModifyPricesGrid
              Row = 9
            end
            item
              Column = 6
              ColumnSpan = 2
              Control = NameSearchingModeInModifyPricesGrid
              Row = 9
            end>
          ParentBackground = False
          RowCollection = <
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          TabOrder = 0
          object cxModifyPricesGrid: TcxGrid
            Left = 1
            Top = 1
            Width = 1306
            Height = 459
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object cxModifyPricesGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsModifyPricesGrid
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = ' '
              OptionsView.CellAutoHeight = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
            end
            object cxModifyPricesGridLevel1: TcxGridLevel
              GridView = cxModifyPricesGridDBTableView1
            end
          end
          object GenerateReportInModifyPriceModeButton: TButton
            Left = 1
            Top = 460
            Width = 260
            Height = 54
            Align = alClient
            Caption = 'Wygeneruj raport'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 1
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 4
            OnClick = GenerateReportInModifyPriceModeButtonClick
          end
          object RefreshDataButtonInModifyPricesMode: TButton
            Left = 261
            Top = 460
            Width = 260
            Height = 54
            Align = alClient
            Caption = 'Od'#347'wie'#380' dane'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -33
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 0
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 0
            OnClick = RefreshDataButtonInModifyPricesModeClick
          end
          object ModifyPriceButton: TButton
            Left = 1041
            Top = 460
            Width = 266
            Height = 54
            Align = alClient
            Caption = 'Popraw cen'#281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -33
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 4
            Images = fMainPanelCxImageList
            ParentFont = False
            TabOrder = 3
            OnClick = ModifyPriceButtonClick
          end
          object OdwoIDSearchingModeInModifyPricesGrid: TEdit
            Left = 521
            Top = 460
            Width = 260
            Height = 54
            Hint = 'Wprowad'#378' ODWO_ID w celu wyszukania konkretnego produktu'
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TextHint = 'Wprowad'#378' dane'
            OnChange = OdwoIDSearchingModeInModifyPricesGridChange
            ExplicitHeight = 41
          end
          object NameSearchingModeInModifyPricesGrid: TEdit
            Left = 781
            Top = 460
            Width = 260
            Height = 54
            Hint = 'Wprowad'#378' NAZW'#280' w celu wyszukania konkretnego produktu'
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TextHint = 'Wprowad'#378' dane'
            OnChange = NameSearchingModeInModifyPricesGridChange
            ExplicitHeight = 41
          end
        end
      end
      object cxCloseAppTabSheet: TcxTabSheet
        Caption = 'Zamknij aplikacje'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 12
        ParentFont = False
        OnShow = cxCloseAppTabSheetShow
        object gpCloseAppPanel: TGridPanel
          Left = 0
          Top = 0
          Width = 1308
          Height = 515
          Align = alClient
          Color = clTeal
          ColumnCollection = <
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          ControlCollection = <>
          ParentBackground = False
          RowCollection = <
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          TabOrder = 0
        end
      end
    end
  end
  object ibcdbDFM: TIBCConnection
    Database = '/baza/kiermasz.fdb'
    ClientLibrary = 'fbclient.dll'
    Port = '3050'
    Username = 'KIERMASZ'
    Server = '10.10.10.100'
    Connected = True
    LoginPrompt = False
    Left = 21
    Top = 156
    EncryptedPassword = 'CEFFCDFFCCFFCBFFCAFFC9FFC8FFC7FF'
  end
  object ibctOnlySave: TIBCTransaction
    DefaultConnection = ibcdbDFM
    Left = 29
    Top = 212
  end
  object ibctOnlyLoad: TIBCTransaction
    DefaultConnection = ibcdbDFM
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 29
    Top = 260
  end
  object dsReportForAllSells: TDataSource
    AutoEdit = False
    DataSet = cdsReportForAllSells
    Left = 1221
    Top = 188
  end
  object ibcspGetWorkersOrders: TIBCStoredProc
    StoredProcName = 'GET_WORKERS_ORDERS'
    Connection = ibcdbDFM
    Transaction = ibctOnlyLoad
    SQL.Strings = (
      'SELECT * FROM GET_WORKERS_ORDERS')
    FetchAll = True
    Left = 117
    Top = 164
    CommandStoredProcName = 'GET_WORKERS_ORDERS'
    StoredProcIsQuery = True
  end
  object cdsReportForAllSells: TClientDataSet
    PersistDataPacket.Data = {
      590100009619E0BD01000000180000000C0000000000030000005901054E415A
      574101004900000001000557494454480200020064000D544B414E494E415F4E
      415A5741010049000000010005574944544802000200C800074F44574F5F4944
      010049000000010005574944544802000200140007494C4FC59AC48604000100
      000000000B444154415F5A414B555055080008000000000004494D4945010049
      0000000100055749445448020002009600084E415A5749534B4F010049000000
      0100055749445448020002009600054144524553010049000000010005574944
      54480200020096000C4B4F445F504F435A544F57590100490000000100055749
      44544802000200320005554C4943410100490000000100055749445448020002
      00C800075A414BC5814144010049000000010005574944544802000200640007
      555345525F494401004900000001000557494454480200020064000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NAZWA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TKANINA_NAZWA'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'ODWO_ID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ILO'#346#262
        DataType = ftInteger
      end
      item
        Name = 'DATA_ZAKUPU'
        DataType = ftDateTime
      end
      item
        Name = 'IMIE'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'NAZWISKO'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'ADRES'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'KOD_POCZTOWY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ULICA'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'ZAK'#321'AD'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'USER_ID'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1221
    Top = 52
    object cdsReportForAllSellsNAZWA: TStringField
      DisplayWidth = 20
      FieldName = 'NAZWA'
      Size = 100
    end
    object cdsReportForAllSellsTKANINA_NAZWA: TStringField
      DisplayWidth = 20
      FieldName = 'TKANINA_NAZWA'
      Size = 200
    end
    object cdsReportForAllSellsODWO_ID: TStringField
      FieldName = 'ODWO_ID'
    end
    object cdsReportForAllSellsILOŚĆ: TIntegerField
      FieldName = 'ILO'#346#262
    end
    object cdsReportForAllSellsDATA_ZAKUPU: TDateTimeField
      FieldName = 'DATA_ZAKUPU'
    end
    object cdsReportForAllSellsIMIE: TStringField
      DisplayWidth = 20
      FieldName = 'IMIE'
      Size = 150
    end
    object cdsReportForAllSellsNAZWISKO: TStringField
      DisplayWidth = 20
      FieldName = 'NAZWISKO'
      Size = 150
    end
    object cdsReportForAllSellsADRES: TStringField
      DisplayWidth = 20
      FieldName = 'ADRES'
      Size = 150
    end
    object cdsReportForAllSellsKOD_POCZTOWY: TStringField
      DisplayWidth = 20
      FieldName = 'KOD_POCZTOWY'
      Size = 50
    end
    object cdsReportForAllSellsULICA: TStringField
      DisplayWidth = 20
      FieldName = 'ULICA'
      Size = 200
    end
    object cdsReportForAllSellsZAKŁAD: TStringField
      DisplayWidth = 20
      FieldName = 'ZAK'#321'AD'
      Size = 100
    end
    object cdsReportForAllSellsUSER_ID: TStringField
      DisplayWidth = 20
      FieldName = 'USER_ID'
      Visible = False
      Size = 100
    end
  end
  object fMainPanelCxImageList: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 28049917
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002A744558745469746C650052656672657368416C6C5069766F745461
          626C653B526566726573683B5570646174653B80B9A4FD000006924944415478
          5EC557675055D7167E8FAEA23121229116E94130769028252A2845A577A52B17
          041145896528222AA298A289E81041D15868012CA820A0946400151BA0A81995
          9499E48F38933F2BFB3BB32FE7CE3DF8EE7326339E996F58ACF5AD72F63E9B6F
          F39FB778FECBA1C6A0CEA0A104F8D444DEBFF5F0A67E32BB0FE273E6F9ADD9E9
          B06FED2EC70659FEFC41D9EEF9C3006CF81003075C7118E9F3463F11C931D238
          609DBD41F4B63969B159735B8ACA6554D174806EDE3D4B7DCF9BE8AFBFEF01B0
          E11362E0808B1CE4CA0751A8A9CEE2D9A30DA8DC5C3D24FD53EF882D337F2CAE
          FC8235F8819EFDD94C037FD4D3FDDFCE53EF5039DD7E590AC0860F3170042E72
          908B1A0ADBA319BE7946EEAAADB30836F7898F42730DFF9469F141E9F60F2F75
          16B3C29758A313D4F9CB3774F3C93E6A19CCA7E6C7B974FD5136001B3EC4C001
          57C8412E6AF8ADB34D603575FC53A7E57D753A8D8237DAA3D1183E98646F3456
          ACB549F04FB17D79FDF611EA795E4237060BA8B13F8B2EDEDD4CDFD6ADA21D47
          3C69EDCEF914B6693A001B3EC4C0011739422E6AA0965FF227B5074F26D1D0AB
          0E0A48B5C500E3D04BB9B9BA579CA5CF4A99755F437701B5B137BAD2B7952EDC
          4FA7E24B91E49B6C33EC1D6F59EB1E6996E9E865B4D4C86A820D001B3EC4C001
          1739C8458D8EFEC35473238F7E7FDD4ED70772500703E82A0FA0B6C0D7788A77
          8265EDD9C60C46CCA2DADEF5547D3B897695FB90679C458B6B902996529F015F
          F9448609006CEED307075CE4201735AEF56DA366D6B8E1C116AAB9934CCB13AD
          30C0783E80B8F4EE5166E9BB8E0550635F2655DD5A43E7BA6229A77429794499
          55CD5E62E0CC38EFF3C97518B4183401D8DCA70B0EB8AC56F59E33DE428DF3DD
          7154D19340E7D8CFB35D31E495602119406DBA8BBEBE47B459EB89ABD154D11D
          43A77E0AA7C24A2F5AB27A6AF3ACC5060B19E73DDE44433C4222E0E3C38CC56A
          2C8A985A92F5FD622AFF294C82A5B1E6E200F2B7770936094AC95F4095DDABA9
          B43D808EB5F8D292A8A9C34EBE4671BCB93683BAFC4C8F063E84B65B9869FEA6
          22673AD91142C7DBFC9581BA9201B45CC34C0E641F5BC4082BE968AB37ED285D
          48AEA1C6357CD9755435E77534599DBCAC438BE97C670495F25ACA58B4CA541C
          403E356B76C52DDC8414E1E467B8513C2E6F6E0E60409710E35C9EAB12A8AB38
          80169FE843060380DB13301C382A9A0B47182BC5B76B12AFF1D12898ACB8AA8A
          C9DAFC03D205B8ADA56AE9E550F808C7E0ED788DF11220C63F66510BC4646D04
          01D8E251934AAE7400A9548B47545257D401F92960B24AFF0F98ECE6885BA27A
          5B12721D92956B24EE72BC8C98C0E1860ED3717A45FD6F44717506456D9D9D2F
          39112A8E64CC8EB915D7BA4A46EA9C6BDC4B4CAAF76365040E5FAA7190C85B2F
          4A4645E1A9D5149C36BD40E9EF81AA4B8C06CB096775877B9E978DD4CA391A48
          7EC976A1A8A338C0784864D3A32C09BEAE662294647B1CA7822B98A68A2B1717
          35EB998169768D351DF9D43AB85BA855DE924401EBA7B5D93AEA1B6305C01D19
          0012D9F03053826FEB56D3CA449B4AD7C08F1DE453AB6ABE2CDA720693DFB3A5
          F55B981AEEA7AB4C8C502BEBA83779C55A658A4AA8300024B2FE5E9A04979982
          1DAE8AA71589D68D4CAAC3B102FF430B347C12AC4257C8ACAF95D56750E7D322
          3416EA1CAA0BA3E56BAC2ED82FD0B780A6882FC207804456DD9609F8B23A90CA
          DB62610B72DAFA388F6ADBB221A3C3DE6B2CCF33B95DE71165EEE0E463A407C0
          860F3170EADB73A9E349015DBCBF89AAEF2451F1950862B101B760D320A5B717
          07804496DD88A4F483CE90DF06CF38F35F0F5F0C14A4B496697873FF76EA7A52
          48158D1954501246B21C170A48B10360C3871838E02247C8450DCF788B21B710
          D354889A641BF900BA90C8D4FD4E4C804C0F309FE1427F930DEED166037BCE2C
          A3533F87335D8FA2BA5E192B9E413F3FCDA6DE17BBE9C15021001B3EC4C00157
          C8412E6A38079AACC7A54551D49407180789740D31C1519BC41550CF71B961C8
          E7E1A61793F7CDA3BD151E54D61EC8EE09A1AC412455F54451CDAD1800367C88
          81237091835CD4E0CDC7282FBD1CEA083235CCC71229DC78C6E277B31913AD99
          2A6E6332DBBE6ABB3D6DF8DA81724FBB50D10577FAAEC913800D9F1003075CE4
          2057E92223692EEA80E4EF3417287ECD9A62A16B3E679941F4677E86879C838D
          AFB3819F31597D0DC0860F3170C055B8BE694B975D84B2888844D1AFA170DFC3
          52EAF16D9AAC20DDB0E1D3E31C5DE9F54DF523254907D112B7874B2E001B3E7E
          597D9BC6EFFEBF63227AA7F80755932F8EEEEFCACC0000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000003F249444154785EA5974F8B5C4514C5CF7D33763A908F309FC39D3820
          59096E85EC4441C46C66A3984008887F8220A241DC08A22B4514178211C564E3
          277091FDA8516120E9C574BF7EFDCE518B7BA9AAAEF483612E14D55431E79D7B
          F855BD37FB070707F032009DCF865D35BD271FF481E3E3634CD57EF9F01BEF7D
          FD93991D8612544A0B518200599A4D004C9090D6A8E1DEDBD7AE5C2ECC4C1B40
          AE0EB0C3979E7F12E7A98FBFF8F5E948F22C0652ECF22EFB6193664A80EA7CCD
          65AB847CEDC26C0F24318E63B75EAFEDE4E4C4CCACCA52D2CE044C62A40D4949
          8C12443554B8894AB003318E0356ABD5ECF4F45400C69A89BA5A03CC2E4712DF
          FF7C1F0FFE59E0714C6827131DAEDFFAE661C9C4EBAF5CCE4C4C19A08B52C038
          127FFEBDC0D18B4FE13C75EB935F6A265A036D57A4D20843ABF52E2604337326
          62CF004B89607E610F1C89C240C9440B2183013791991024801C0B26A2A14CA5
          609088A83DDBC73826F333000D130D0360D02D48C23613DFFEF01BFEF8EBD1D9
          984087373FBC533171F3E8D960423503CCA22241964C08BF3F78846BAF3E83F3
          D4CD0FEE544C540C50F41910B4C50483092CFB4DA47026262ECEF720FAE2D429
          1009119860221AC826CC7C0F1513F13BAF4D189004B92845886A9888920328C9
          BD645375265E62DAE1260CC0765EC5124009646E802513A121A16E52AD071052
          06559A4A800A3108AA98803351C5DC3040801D72E5636D99B3E98B483E9342C9
          042B264295D980751E00118894A40AE6C94E251011B901718B89319820802E89
          2BCD84C4900D6E00391316F90822A64E41C40490AC22276B26022A80B0083902
          3181059325A7D4D81A6821F4114CA8666214D0B9139AE598434A88B50615B139
          055171D68332813B988094FA0E302DDF399E9A774CC0AC38B20CA06B08238EB8
          05D297CDD07798620272D992F5429C45EC02C2ECCE9B900086A1EFEFBE7BFBC7
          4372C46A790A75F310AB6FC288D87247E62420FA2D1814A6EF8190EB3FFBE8EA
          730066C330CC97CBE5A5975FFBFCBEF2C55431E10040A69C82EA1BC046419DF9
          42E8B031108C6CFC7DBDFABFFABE6730A19689FC6723C0CE1D74CA7976067944
          4AF9B816D14258A4608BC542FF753F6C369BB5BF11D397CD669D990851742ECE
          98B39AA8FCDB2965DA620DE1D67F2E32337812EB75BFBAFBC63BDF2526FAD512
          4FCC2EBAA6B9910C6392F6376FF39A26BCB80DA1EDA3A9CCC4EDB7AE242600CC
          015CBA7AFDCB60228386A8E023B830784E801B1EFD18D60C34D532E183A4C060
          C2B2BC941F1846E8BB2AF71504474D1B285FF0038060227DD940F9FCB75354B5
          56BE8CB4D380A449268E6E7C75E862D507E8B60B958E0C90CF43BFBCE70DE9B1
          06A698F8F4FD178289BD8008D3655B3A04D0FB2000FD0BF987FE67A65B2F6300
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
          464646463B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0B9
          5F32223E0D0A09093C7061746820636C6173733D225265642220643D224D3136
          2C3263372E372C302C31342C362E332C31342C313463302C372E372D362E332C
          31342D31342C313453322C32332E372C322C313643322C382E332C382E332C32
          2C31362C327A222F3E0D0A09093C7061746820636C6173733D22576869746522
          20643D224D32342C32326C2D322C326C2D362D366C2D362C366C2D322D326C36
          2D366C2D362D366C322D326C362C366C362D366C322C326C2D362C364C32342C
          32327A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
          373237323B7D262331333B262331303B2623393B2E57686974657B66696C6C3A
          234646464646463B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22
          426C61636B2220643D224D32362C36682D3463302D302E332C302D302E362C30
          2D31563463302D322D322D322D342D32682D326C302C30632D322C302D342C30
          2D342C32763163302C302E342C302C302E372C302C31483843362E392C362C36
          2C362E392C362C38763268326831386832563820202623393B4332382C362E39
          2C32372E312C362C32362C367A222F3E0D0A3C7061746820636C6173733D2257
          686974652220643D224D31392C34682D34632D302E352C302D312C302E342D31
          2C31763063302C302E352C302C312C302C31683663302C302C302D302E342C30
          2D3176304332302C342E342C31392E362C342C31392C347A222F3E0D0A3C7061
          746820636C6173733D22426C61636B2220643D224D382C313276313663302C31
          2E312C302E392C322C322C3268313463312E312C302C322D302E392C322D3263
          302D312E312C302D31362C302D313648387A204D31322C3238682D3256313468
          325632387A204D31362C3238682D3256313468325632387A20202623393B204D
          32302C3238682D3256313468325632387A204D32342C3238682D325631346832
          5632387A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000B744558745469746C6500456469743B6535AC44000000D449444154
          785EEDD6310AC2401085E185082216768A07F02C562256E6027B112F237A022F
          E011822905AF218EAF5066D9C5268F599B29FE22D5FBD824B04144FEDA4F8003
          1CB0395CD8223AA1E6F35C1510D10B093AA3A626A0D57194206A00C6688E3A24
          59476B404437B4448B0CF144AD0DA07CE77D8AF88E5B7E033AAEA588ADE55FA0
          E3651D1AA13004408EEBB113007E9C01D0E32C801CE70143C6F7281800887116
          C08FF3801D314E03A66886AEC43805E8D14A11E5B83540D02343E87815408958
          A3500FA0DDD1A41CE0017E2D778003DE9473EB438B667D4B0000000049454E44
          AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000026744558745469746C650073686F703B636172743B6275
          793B73747566663B676F6F64733B656D7074793B049B518B0000017749444154
          785EEDD63F2845511CC0F1E34F2F9492505EBD94AC560C7743592899B053068B
          48596E6C36A5AC0683A44446496232EA967A8549C9F4CA9F17BD777C9F0CBF5E
          AF7BCFFDE33CCAF0594EE7CFB7CEE97695D6BAAABE06FE031CC7A92474006BFC
          38B8C01B34F298B715308D0274991B1B01193C4397C961CE46C0A638F40EFDA8
          85C28FBF817A3C8A804111662560441C7E0D651CC0781201DB2260C576400372
          22A007CAE6154C88C3AFA06C07EC8B8085A080662C613246840C68411E1A4564
          8202D645ED5002013362BF73A8A0805511709A40C09908983509E8C4AB881888
          11D025BEFBEF68330928D912018750112D8B7D8EA14C03BAF1211E4E5F84803A
          6445C0947900B023EAB3680F19B026D63FA1316C402F0A22E216A368F209E8C0
          300EA0854528D30069033AA64BA4A206A4B01B23E004AD505102A4711CE10145
          9F8017DC630F63A88132F48B7FCBA94BC385F7CD45DA7C4EFC0017BA8C6B3E27
          7E805721C03399F3C703EC5F41F51F61557D028AFAB8E368DF1BE80000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
          373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23
          3131373744373B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0
          B95F32223E0D0A09093C7061746820636C6173733D22426C61636B2220643D22
          4D31332C31374C322C32386C322C326C31312D31316C312D316C2D322D324C31
          332C31377A222F3E0D0A09093C673E0D0A0909093C673E0D0A090909093C7061
          746820636C6173733D22426C75652220643D224D32302C34632D342E342C302D
          382C332E362D382C3873332E362C382C382C3873382D332E362C382D38533234
          2E342C342C32302C347A204D32302C3138632D332E332C302D362D322E372D36
          2D3673322E372D362C362D3673362C322E372C362C3620202623393B2623393B
          2623393B2623393B5332332E332C31382C32302C31387A222F3E0D0A0909093C
          2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001D744558745469746C65004C6F61643B53656C6563743B466F6C6465
          723B4F70656E96333E78000006E549444154785EC5976B8C16E515C77FCFCCBB
          179775975D60175C2C7651106B0C88050CC54B2F8995106B1A8A95A42D92A602
          166DAB4D3FB52136348DADB629A11F889AF403D55823D8528D6D81A2A8546E82
          E57E5D22B2BBECBED7CBBC33F39CD374E7C93BB269D24AD270929339EF3393F7
          7F39E73D79C7A82A57323CAE7064B88C30C6FCD747001F504000655438E7315C
          66FCE4853DA88202A8A2AAAE86833B5F6BFBD4CD0B8E632B8FAF5BBDF045207E
          E2F977C561F28B87E6D50964E09310499544B1F0CDAFCCA2B3D9C3F70C9D9E31
          A972EC434FFDA5EBF659D7FFEEBBEBB73DD07778EFF79E5A36EF34103FF2DB9D
          3A7A068CBB66FE4336B8CCA4CF3A02A1C50A0C07F26F70EFCE258FB67FE799D7
          1E59B56EDB9655EB771C2A576ADC7BE70D2CFED2CDF74E9B357FCF836B5E5A05
          34AF5B31DF1F3D03DEF65FDDF1F9B1AD0D6B3D636EC3858E2A4A95E8C1F9ABFF
          FE126001AD85969BDA3206F0BFF5B35717B78EED787AE6B4EE89D3A674D2D5D1
          42475B330391D23DB9838717CF6AFDE38EB667F4A77F7EA0FFD481955B9FFBD1
          FB80C5296AD8BFE10BE7A6DEF368F798AEA929628A4E5C2D7064D3CF07B7FEE3
          CCCCC7D61F1800042760E9939B7E306346EFDA0573A7D2D4D288E783EF816288
          45A98442AE62B9CA33E407F3BCF8EABEA157D67CB947556B750754B4BBB5EB06
          A81E00D52411D0241B4C23D7DC7AD78439F9CD4F03CB1D017FD1F79FBFBF77EA
          94B5B7CFBF91BE724C588DC00A0A8802AA88EAC8F9BBDBF77364DFD19DB90FDF
          5F0DD8B405605448C04400496B14C402219D3DDD4CBBFBAB4BDEFB0D4B5A26DC
          883FF1B3FCF2BD89CCBAAD9713D98838B69CF8E024678F7F48EE6281A6963616
          7E7D01A78EF6B17BEB6EBD7B7AE3BE8D1B57DE071446134045402D689C82EBC7
          D362E22C9D13DBE95CBE06EB5DCBA6B72ED2D5D3CC4098E1E4B13EF66DDBC39C
          EB5B587EC7787AC68DE7B167FBF9D30B5BE9F6F3AC7B788A69C91E9BB6066AE9
          5E20754062018913B56A2F25201675A48886A03C886D8AD8B1AF42EF9CD9ECDD
          7588CCB983AC5F368E9E713E7EED38A1DF45A38958FA993C8BE676D0DC9863EF
          5FFFD03A7A99A504C4F5DC46CE09411D09AC0009291D39B7D84CC8C90B167BE2
          23BA731FF0C36F74D12843307C08A20A8DE3EFE2E51531BE6985DC5EC8F80485
          3C800F7880BA7404AC8244A844189154B1584724BD622DA649C89898F1D9033C
          7E5F0799F2716CEE20C4312A82E65EC68860D5116FEFA198AD0234030244EE6A
          3300621595D87D41EC6CB7A8B5233592D4EAE62123211BBF1D21B12177763FFD
          C77681282A6E258B0540ADB8353DC0F8C9ED6C5ED97B41514429C7B16EFADA86
          33CBEA33206115A996511B4154436D0D6C8CC4091954D0385124FD9B28E68A0C
          153DAE99B798D9F397A6AE02A8E28A7AAD2AF5CFE5E10B63DE7872C5E700CFB5
          4088AB15E25279844869F822438379C2D026AA50D71275ED51DAAFBB85E95F5C
          8CEF5B6AA75F41839CE3A0A85187E59E574D67CA6FE6DC913304A1FC0DD0BA03
          51B548582A632B053E3A37C44DF73F41D3D5E35225286929885AA47C96DAF9DD
          1087A82A18451D0944501475A4DD60631A7C064E9CA550895F4F09581D01AFE6
          725486B334B64DA2714C0BB5E3BF47E330B55514ADDB0988925482BB9100A922
          F2F1C5A6881537171E03E706832DFF2C6E036484808D2C613147902F901BCAD3
          357B2E523A8F046500541470EAD0FA8A750790AA4C8049C8A216117543ADE0F9
          5C3C7F91A012BDB9E570A1EC1C001B2941294F395BA254A8327DF275D8FC1924
          8A9CF3E20C904B874A496CC501BB33B5164DFBEE6A8BF11B19387D815260DF00
          24DD0391A59A2F501CCEE3355C45CBD56D04A7762151884341148CAA1B2C0B4A
          BDBF6E3041C491147003989E299E427FDF10C7066BAF03B63E0371640972798A
          B92A136F9981AD0C604B59D4D9AE380004B58AE2D43985EE3E2A895A2425A06E
          2E1443311B50CC07477FFDCED0D94B37611853CEE7A956023AAFED21CA9FC3C6
          A1B30F5C2F5D8F712BDAA6C0286A05630495FA2026E9881B0C837D054A816EC3
          A97F6E514FE2401809955C1EB5868EEEB144834790B086A696A35641EB3D4DD5
          A72089036E48D525CE15E37B0CF59718AEC46F0302A88A9201BC30B094B239DA
          274D80B040941F446D0C08621D900A2A60D43A57D21EA7A08251D25F040A9AA4
          C41E83FD416DF3B1E276E700229001348E63825299DE999F26CA9D47C220B5D2
          254EA9A6F63A47002C9A68C2A278EE67EA6E1247426EA846B16ADFD9DF1F9400
          DD70CF24451307A25AC8DE8626EFD6436F1DE5F09B4712854610319874D19008
          AF176070F60368EA0C40BD564494A066B36F9FAFFE180801F17C0F00033402CD
          4053FAD73B8DD19F2FE39E3ACB6B4015889E5D385940EB04BC34FFE7307CB250
          405C3A23D337234959FEDF43191557FCF5FC5F97017494B55FD7500000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000020744558745469746C650073686F703B636172743B6275
          793B73747566663B676F6F64733B463678F3000001C549444154785ED5D74F28
          04510006F05DB60DA52494C3A6E4EA8AC3DC502EBB9213EE94838B48ED8D52F6
          408A9492DD7290BFD1DA9324717274515B3889E4B0E5CF2E769EEF3087AF69D6
          DB37AF6672F8D5AB7DDFCCB7BB6FE7BD0D08217C15300C43C52214609E325A54
          033F20E0D5AF0282A8660DB8844F2B9F8709AF0A8C401184CDAD170522F006C2
          2607E35E1458A1CC3D744285576B2004CF94E9F67A11F651E6C6CDAF60019E20
          EE5020080928C046897C923271D5026130E9027320C8128D8B10B2E5AB204799
          36B502FC0EE4561DB28394B976FB200AC1AEA4C026543A64F72833F957815A98
          8621172592256E5E07792B6342E4AF02096ADAA350224537B71BA57917B2BD60
          96269F49BE8E1498B04E3777724E05C664059AE183025DB2752179BD859EFB5F
          D050CE6EB846058E20A06186AE952E773B6E856F5A341D2E0B5442960A0CAB9C
          07B6289885461705F861F502D52A05DA6D7BF61D44A14652A0097AE110049972
          73225AB6C2BAAE20ECA64018B6350B9C42BDEE9970008EE1114C49817778801D
          884150F550EA13798128A461DF1A2BCCD52F10E38FDE1AC754E6EA1638016193
          5199AB5B202329209DFB6FBF02D60F1938B0C62EE6CAF9FEF7FC1797CA640C9C
          812FAE0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
          464646463B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C
          3A233732373237323B7D262331333B262331303B2623393B2E59656C6C6F777B
          66696C6C3A234646423131353B7D262331333B262331303B2623393B2E737430
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2253
          616C65735265706F7274223E0D0A09093C7265637420783D22342220793D2234
          2220636C6173733D2259656C6C6F77222077696474683D223234222068656967
          68743D223238222F3E0D0A09093C7061746820636C6173733D22426C61636B22
          20643D224D32342C365632682D346C2D302E362D302E364331382E352C302E35
          2C31372E332C302C31362C30732D322E352C302E352D332E342C312E344C3132
          2C3248387634483676323468323056313056364832347A222F3E0D0A09093C70
          6F6C79676F6E20636C6173733D2257686974652220706F696E74733D2232342C
          31322032342C382032302C3820382C3820382C32382031382C32382031382C33
          322032382C33322032382C31382032342C3138202623393B222F3E0D0A09093C
          6720636C6173733D22737430223E0D0A0909093C673E0D0A090909093C706174
          6820636C6173733D22426C61636B2220643D224D31302C31307632683132762D
          324831307A204D31302C3136683132762D324831305631367A204D31302C3230
          6836762D32682D365632307A204D31302C32346836762D32682D365632347A22
          2F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A09093C673E0D0A0909093C
          706F6C79676F6E20636C6173733D225265642220706F696E74733D2232322C32
          302031392C31372031382C31382032302C32302032302C32362032382C323620
          33322C3230202623393B2623393B222F3E0D0A0909093C673E0D0A090909093C
          673E0D0A09090909093C7061746820636C6173733D225265642220643D224D32
          322C3238632D312E312C302D322C302E392D322C3273302E392C322C322C3273
          322D302E392C322D325332332E312C32382C32322C32387A204D32382C323863
          2D312E312C302D322C302E392D322C3273302E392C322C322C3273322D302E39
          2C322D3220202623393B2623393B2623393B2623393B2623393B5332392E312C
          32382C32382C32387A222F3E0D0A090909093C2F673E0D0A0909093C2F673E0D
          0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000002C744558745469746C65004164643B4974656D3B4164644974656D3B
          426172733B526962626F6E3B4974656D3B506C75734E32EF81000006C5494441
          54785EC5977D8C156715C67F67E6EE2E1F5BF9E8F24DA17C7581A51B0256B450
          124861050D04A3698AE2071A9BB4C6D694A405AABBA5D5261A4D89696A6825AD
          B686B67FF847AD464B23AD0183144DC1AA8545285FBD65E9B2DFF763E63DC7DB
          B9F7CD6CBA1756FFF29D9C9CF7CE4CEEF3E439CF9C33236686885059522D578D
          EAD70CD0245F6399A597331F0190DDCF1CDC4F20ABC4C000D410044B0E1028EF
          0CCCC084F206E8E9EA7DA4EDFEF5BB3C895DBBF71BA618D07ADFDA61D90810EE
          7EF6900DB70A85C8FA060AD6D53D60EF5FEEB133E73AEDC8B1F3F6DAC193F6E0
          63BF7E04A8010240FE71229B62A4983E862A601800B11AA84100A60280BFE614
          CC4011D424B9F7C0E153DCFFF595F4E7A287EE6B7B491E6FFBC22E205E78D364
          CC33181A43088033004C7D06F05A83014118008A95B20B0204A5508C005875EB
          3C9CEACEFCF6E7E4678F7D2921212257F545304401AB009B80011E1F4BF7A604
          41500A9050508442AE08401806DCBEA2B11437EFD8FA9DBDAD83CBF15F11508F
          598134A59CAD1228000A090911408D5CA14C2013089930A06555136B572DDEFE
          C5BB9FFCDE5012D54B2080982A00DEBD46596E4889F8A5188108865032262290
          09852010C2D0D8D8D28CBA787B54DCCD8B4FDFDBE6FFE29A1EF000A9FA0A1680
          F9320A8A672249D4D4858CB96E04773DF82B54D347148C75AB17D138FFA6EDC0
          A3801BCE84A22983942A8A7A23E2814155094261D4885ABE7AC772FA06F2148B
          112E36A258899D23230264014280E10978F7FB3A9B915AD893330C1001106A33
          6505AE1B5D87734A1C39A20F73EC929238A778B9185E01F5E060E6354B5519AC
          00026A88406D4D889A6116E26A436A9DE2624D08289E000C6F42E76B688094B3
          571E3015F0347C5510CC925C366210608021D464048D199E800F5F02D2470E73
          FED460265EA54A045E630331EA02C109D48442C3F8919E003B9F3FC6779F3F8E
          89F0E8E645D53CA00024299014C5D2668C8FCA240D02E3726F9E6367BA3993ED
          A773202610183B32E4C649A39833ABC1AB2D5FDED808407D4DE66A9DD05BCE30
          3548EA0A8A619612C1774C537E7FF4224FEF3F4B8F13E6CF9FC0C6DB67B3A114
          0B164CA2D732FCAD03BED2FAC216A0B6B1BE4E42110A4EAB1350054871141260
          ADEC15C3A92F84F2CB3F9EE67C4FC49DEBE7D1BC7022E31AEAC959404E83D27E
          34372F98C0A6357359B4B8F9C777EF7EFD85E98D4B47CF1D5D2B573561ECD483
          E3D2B637A4378818AF1CBE40D184961533B9D81DA106FB5E3AC499772F0370E3
          CC096CBEE3563202EB57CFE1D53782CFB46CFD41DBCF1F68D99109A458B50F78
          995D0A3678831949ABEDB832C0919357D8B2A9897FBD97234C869324E03FFCC6
          A792FDB63D87284446CE94AED23DB72D9BC1D9F3DDDF5EF7CD9FFC62C688CCDF
          CD4CAB94C05BDE7CC2FC91EC054C39F05696E6B9D773AAA340AE60E48A8E42AC
          00CC98369EC54D3300C817B514560AC7894BF9D2F989351F9B34EB6B40A6BA02
          AA406A7E86CC060333DA2FF4F2895B1AB8D41773E0B5A3BCFF5E277E29920002
          3CF1C46F00983C653CABD72EA561CC68241CB906D809148778C0392BE37A05D2
          C193BE13A27474152861D39B8B12F01FDDB59C4024298521C44ED9B36D0D5114
          539309B9E7A7AFD33BE0C810E234980A84D79C051E17F0E0A096641523978FB8
          3250247202C0F429D727B3A0BF101348793E4C9B3CD68F704484C8299D7DC9AC
          18D209252DC1A0DA6BFA16ACA90F112469327D7D053453C7D46913D8F2FDDF56
          5E50846776AC43CDF87CEBCB84618804C20D332711C71F122F921BC89D05AC5A
          1FC099626698FADF86A260E5304031E64C19C5E56C3786B17859131B3EB7920D
          9B6EA3902F902FC40901173BD67FF6937C7ADD321636CF21564757470FFDDD1F
          BC0AC455FB807F08D4069722C03332140858B5640AADCF1E67C9A4F174478E9E
          A4250340FDC80C4E0D11E1524F11D50AF15839F5CEC5387BEA2FCF01D1470918
          A06A0E03C6D6D7F8FAA5FE4F3B31B3A78F63C582B1BCF9D7D32C583A9BA23344
          8D0925429B77BD9280374C1C47143B14408DF66367C99E3BFDE4C93F3D7512D0
          6A04A2623EF7C6B776EC5B6996763E43C104C39F301AC6D73367E618C2FE2EDE
          3ADCCEC225B3B04068BEA52919C12610474A4FDEA1B1A3FDF8592E9CF8F7EF8E
          EEBBA715C86723334FC0832B90DFFBF8D60D401D100EF38D284098A9ADAF6F6C
          697BE083EC953B6F9837353371EA3846D4D76140AEBF40C7852B9C6BBF90EB7C
          F7ED87DFF9C3C37B809E12B8025455007040CE830E1771B12F78FBE56DF74EFF
          F8D6A73AB34D9B6B478E594E104E01D45C9C2DE6BA0E769F3BB2377BECC57F02
          390F5E9D401A8EFF6D15CEBFB9F7CFC0D1F41B000005A24AC45EF621C3E7FFB9
          FE034F250E6FBC460FB00000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000020744558745469746C6500456469743B426172733B5269
          62626F6E3B5374616E646172643B3013C3DB000000C049444154785EEDD2310A
          03211484E1BD93B71072A960EB11BC47EE12AC02DBA7DD14468BF0C08188FB78
          93140A83DBFD1FB85B29E5A7FB5FC0028410CAE41E75BE6EC385738099D31031
          C6574AC977111E20E70C082AA01E40B0018060037AC4D1106400222AC03300DF
          B61B03C638326001160077B9DE5C5DBB3FDF3CC07D7FB6683F670BC0B8EB1176
          008C0B8205C0B820144FA08BCFFE84A67125401FD703F4710540119F020C7632
          8E00D52432885B022486711A40A212A703303E06BC0134E183BDE44D59830000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000021744558745469746C6500436C6F7365486561646572416E64466F6F
          7465723B436C6F73653B4ED38A87000005E849444154785EC5575B6C146514FE
          FE6969BBDD2DBBA5DDDA4A69B92C8246280F1A4DBC84276335DC8AE1D5C448A2
          91187D30EA8BF1F280467DC0C4470DC6843B1A31C08305C5606242AC0423B669
          A8525AA0EDEE76BBDBBDCECCFF7BE6BF30EEAEDDC213D39ECCF9CF3F7BBEEF5C
          FEB3B34C0881BB7959B8CB57BD511863B500CC66EDFDDA762145EB26F3F535C0
          FC7BED3D235840671A9893B8248ED6852450113D3BBD61C3E6482CF6514338FC
          B030C485C21252177E182A14CF81B24B9176E35FAF05B2C9E4C5BF2E5F7EE7F5
          F1F11F00940853D0559D81B6FB1F38B0FEAD373B833D3D0A8C73ED85932E00CE
          8DDDDFE31EB05E4B7B85EEBA488D8E6EAA3F74E80B8C8FAFF5B3505D02C62CD6
          19ECEE863D320291CD49F6BA5E1244254194450C18DD1754E86E2A05CBB2A200
          96FCB7343E016D744B2508C7019F9DAD76061F1C3500CB6C5CE96E3E07D7B601
          A04E63E17F3340E08A403EAFA387025B0094CBD4CBEC54ECF332024E8EFC5170
          067C2102966B970062CA0B0505606A0E81CCC424A67E1F4278F51AB4AEBD0F80
          EA0BAE01E3C323888F8EA2B3AF0F2D5D5DB2FE86909BCBC129D5C880365ACE7C
          16C22390CBF9519224868731323888254F3D8B1BE77EC2B24B9710EBEFF740E4
          FED89933B836711D8D8F6FC6B50387107BF411746DDC08A1493AB92CDC5271D1
          0C20FBF7189C44026E3A4D5CEB74841C574E9D44F3DE7D6888C5B072F76E0CBF
          F83C0A470E63DDD3FD183B7F1ED713B368FDF47304A351ACD93980A15DDB116A
          8DA0311291A7C14ECD2177F3A6CC72AD1EB0BCA8792683FCD010100AC20A87C1
          0201948A453492FE60AC17CD4D0DE8F8E63BFCB86D0B2E7CB51FC5481B221FEE
          4388C037AD5F099E8AE03730A4AEFE8348A60D85A929A4498AC9A42180054B20
          B3EE382AB5C4DA4EA64877115DBE1C33EFBE0D71EC3844633B9A962DC313DF9E
          C0F93DAF20F2D26B3E78268DC1811D68EDE8903E32543AEEF9726C00A2AA07AC
          AA312C201FE69C4B2170A9B71340733A8573CF0D201B8F830B48124FEEFF1AED
          2BBA09BC57816FDB069198411BD9AC6C0EAEE34278E27270518D695564A04EF6
          BBED80BBAE26E192AE1C74D3806A4ACDE2ECC076E46693B42760519FAC5ED105
          4ECD3BB87D2B814F23DADB0BE635F1FC3C8470E10AE9CB64C0AA95015A0B3507
          3857243CE6DC977A12A754C2F0D8246CC7B3810080F9A20BC78B5480C0F34026
          2347B0F121B8DCAB45C0F40093134B036A021405399ABC368E99E620C2741A18
          DD1BEA2D73CCC082213C74F038B28120A6262724A82BB3284C1066A45797C030
          F24B604BF624BA041C37AF4F221E0821B2F733B4443BD0B7AE17C8A671F1D597
          51F0CA21049684DBF0D8D113985FDA8A78360BA1B328B82222705B1910E044C0
          F5D32E1B696A3A8EC8079FA0A5238A3E6A38319F9135BF71EA147EDEB905F978
          4292686A8FE299EF4F22994A012DA1F23E122AC8459A10928064ED9A0894B0CC
          1C36AEED91E0B2DB6766D0DBB7018DD498BFECDA0A64928834D7A3148F830942
          8A442429E947709071F14104930197AB14EA3ADE4BB3FDEA1B7BF0C79F2FE0C6
          E993C0DC1C3A567A65C8E29EE600A692719CDDDA8FD88E015CD9FF253AD7AC02
          84DFD0EA4B09B50791C980B04BAAFE42370F9169A174AE6A6AC4F4B1C3680987
          11207046E0622E2D01DA02CD0811C2F49183E8EEED41432080C2C4A489DE7C31
          2DDE038080AB7BC09C7F5797A3110C1DD4ED41CB024B24C13538D7D9AA2FE4B1
          94D511B11C726363B0D3E9B26126503B0330A398976C09EC7F58E813A1232916
          A48D1B92CAAED676D6EB11FF59E113342F973547B147C02D9564E7AAF35F3E90
          845C0B6533E07ACFEF783F6A6EF6CADF56B92161326036EC22E7895C32D95628
          50947EF43A620568A2734948912475B4E605C54C3E3380A4BD00A400E4155675
          091C92CC05BBF49E7BF4E8FB0D8C45F4539ABD9C79D0FFCA29A402F5C7AADE1D
          4D589C091405D2BF3ACEC70012242543829907196316800692A524619200495D
          45D7B20A41D55EB50E9DF2AC064F92E40997579540339B2599AF0046858E3BB4
          732DB612BF0455BF8E195DB8B3EB369FD715AB00BCEB3FCFFF05A0D02BCB235F
          04BF0000000049454E44AE426082}
      end>
  end
  object ibcspGetAllProductsInfo: TIBCStoredProc
    StoredProcName = 'GET_ALL_PRODUCTS_INFO'
    Connection = ibcdbDFM
    Transaction = ibctOnlyLoad
    SQL.Strings = (
      'SELECT * FROM GET_ALL_PRODUCTS_INFO')
    FetchAll = True
    Left = 125
    Top = 212
    CommandStoredProcName = 'GET_ALL_PRODUCTS_INFO'
    StoredProcIsQuery = True
  end
  object cdsAllProductsInfo: TClientDataSet
    PersistDataPacket.Data = {
      660000009619E0BD0100000018000000030000000000030000006600074F4457
      4F5F49440400010000000000044E414D45010049000000010005574944544802
      00020064000E4E414D455F4F465F464142524943010049000000010005574944
      544802000200C8000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ODWO_ID'
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NAME_OF_FABRIC'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1224
    Top = 96
    object cdsAllProductsInfoODWO_ID: TIntegerField
      FieldName = 'ODWO_ID'
    end
    object cdsAllProductsInfoNAME: TStringField
      DisplayWidth = 20
      FieldName = 'NAME'
      Size = 100
    end
    object cdsAllProductsInfoNAME_OF_FABRIC: TStringField
      DisplayWidth = 20
      FieldName = 'NAME_OF_FABRIC'
      Size = 200
    end
  end
  object cdsAllWorkersData: TClientDataSet
    PersistDataPacket.Data = {
      F30000009619E0BD010000001800000008000000000003000000F30004494D49
      450100490000000100055749445448020002009600084E415A5749534B4F0100
      4900000001000557494454480200020096000541445245530100490000000100
      0557494454480200020096000C4B4F445F504F435A544F575901004900000001
      0005574944544802000200320005554C49434101004900000001000557494454
      4802000200C800075A414BC58141440100490000000100055749445448020002
      0064000E4E525F45574944454E43594A4E59040001000000000006484153C581
      4F01004900000001000557494454480200020064000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IMIE'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'NAZWISKO'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'ADRES'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'KOD_POCZTOWY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ULICA'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'ZAK'#321'AD'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NR_EWIDENCYJNY'
        DataType = ftInteger
      end
      item
        Name = 'HAS'#321'O'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1221
    Top = 140
    object cdsAllWorkersDataIMIE: TStringField
      DisplayWidth = 20
      FieldName = 'IMIE'
      Size = 150
    end
    object cdsAllWorkersDataNAZWISKO: TStringField
      DisplayWidth = 20
      FieldName = 'NAZWISKO'
      Size = 150
    end
    object cdsAllWorkersDataADRES: TStringField
      DisplayWidth = 20
      FieldName = 'ADRES'
      Size = 150
    end
    object cdsAllWorkersDataKOD_POCZTOWY: TStringField
      DisplayWidth = 20
      FieldName = 'KOD_POCZTOWY'
      Size = 50
    end
    object cdsAllWorkersDataULICA: TStringField
      FieldName = 'ULICA'
      Size = 200
    end
    object cdsAllWorkersDataZAKŁAD: TStringField
      DisplayWidth = 20
      FieldName = 'ZAK'#321'AD'
      Size = 100
    end
    object cdsAllWorkersDataNR_EWIDENCYJNY: TIntegerField
      FieldName = 'NR_EWIDENCYJNY'
    end
    object cdsAllWorkersDataHASŁO: TStringField
      DisplayWidth = 20
      FieldName = 'HAS'#321'O'
      Visible = False
      Size = 100
    end
  end
  object dxcpAllSellsGridDataForPrint: TdxComponentPrinter
    CurrentLink = dxcpPrintModifyPricesGrid
    Version = 0
    Left = 765
    Top = 156
    PixelsPerInch = 96
    object dxcpAllSellsGridDataForAllSells: TdxGridReportLink
      Active = True
      Component = cxAllSellsGrid
      PDFExportOptions.Title = 'DFM_Raport_sprzedazy_dla_wszystkich_pracownikow'
      PDFExportOptions.DefaultFileName = 'DFM_Raport_sprzedazy_dla_wszystkich_pracownikow'
      PDFExportOptions.DefaultFileNameAssigned = True
      PDFExportOptions.OpenDocumentAfterExport = True
      PDFExportOptions.IsTitleAssigned = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 14500
      PrinterPage.Header = 14500
      PrinterPage.Margins.Bottom = 19500
      PrinterPage.Margins.Left = 20900
      PrinterPage.Margins.Right = 24800
      PrinterPage.Margins.Top = 19500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page #]/[Total Pages]')
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clBlack
      PrinterPage.PageFooter.Font.Height = -13
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'RAPORT SPRZEDA'#379'Y DLA WSZYSTKICH PRACOWNIK'#211'W')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -13
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'DFM_Raport_sprzedazy_dla_wszystkich_pracownikow'
      ReportDocument.CreationDate = 43901.329774074070000000
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxcpAllSellsGridDataForChoosedWorker: TdxGridReportLink
      Active = True
      Component = cxAllSellsGrid
      PDFExportOptions.Title = 'DFM_Raport_sprzedazy_dla_wybranego_pracownika'
      PDFExportOptions.DefaultFileName = 'DFM_Raport_sprzedazy_dla_wybranego_pracownika'
      PDFExportOptions.DefaultFileNameAssigned = True
      PDFExportOptions.OpenDocumentAfterExport = True
      PDFExportOptions.IsTitleAssigned = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 14500
      PrinterPage.Header = 14500
      PrinterPage.Margins.Bottom = 19500
      PrinterPage.Margins.Left = 20900
      PrinterPage.Margins.Right = 24800
      PrinterPage.Margins.Top = 19500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page #]/[Total Pages]')
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clBlack
      PrinterPage.PageFooter.Font.Height = -13
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'RAPORT SPRZEDA'#379'Y DLA WYBRANEGO PRACOWNIKA')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -13
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'DFM_Raport_sprzedazy_dla_wybranego_pracownika'
      ReportDocument.CreationDate = 43901.329774074070000000
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxcpAllSellsGridDataForDateRange: TdxGridReportLink
      Active = True
      Component = cxAllSellsGrid
      PageNumberFormat = pnfNumeral
      PDFExportOptions.Title = 'DFM_Raport_sprzedazy_dla_wybranego_zakresu_dat'
      PDFExportOptions.DefaultFileName = 'DFM_Raport_sprzedazy_dla_wybranego_zakresu_dat'
      PDFExportOptions.DefaultFileNameAssigned = True
      PDFExportOptions.OpenDocumentAfterExport = True
      PDFExportOptions.IsTitleAssigned = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 14500
      PrinterPage.Header = 14500
      PrinterPage.Margins.Bottom = 19500
      PrinterPage.Margins.Left = 20900
      PrinterPage.Margins.Right = 24800
      PrinterPage.Margins.Top = 19500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page #]/[Total Pages]')
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clBlack
      PrinterPage.PageFooter.Font.Height = -13
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'RAPORT SPRZEDA'#379'Y DLA WYBRANEGO ZAKRESU DAT')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -13
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'DFM_Raport_sprzedazy_dla_wybranego_zakresu_dat'
      ReportDocument.CreationDate = 43901.329774074070000000
      TimeFormat = 0
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxcpPrintGridReportImportCSV: TdxGridReportLink
      Active = True
      Component = cxImportCSVReportGrid
      PDFExportOptions.Title = 'DFM_Uzyskane_bledy_podczas_importu_pliku_CSV'
      PDFExportOptions.DefaultFileName = 'DFM_Uzyskane_bledy_podczas_importu_pliku_CSV'
      PDFExportOptions.DefaultFileNameAssigned = True
      PDFExportOptions.OpenDocumentAfterExport = True
      PDFExportOptions.IsTitleAssigned = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 14500
      PrinterPage.Header = 14500
      PrinterPage.Margins.Bottom = 20900
      PrinterPage.Margins.Left = 19500
      PrinterPage.Margins.Right = 19500
      PrinterPage.Margins.Top = 24800
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page #]/[Total Pages]')
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clBlack
      PrinterPage.PageFooter.Font.Height = -13
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'UZYSKANE B'#321#280'DY PODCZAS IMPORTU PLIKU CSV')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -13
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'DFM_Uzyskane_bledy_podczas_importu_pliku_CSV'
      ReportDocument.CreationDate = 43901.329774259260000000
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxcpPrintModifyPricesGrid: TdxGridReportLink
      Active = True
      Component = cxModifyPricesGrid
      PDFExportOptions.Title = 'DFM_Wszystkie_artykuly_znajdujace_sie_w_bazie'
      PDFExportOptions.DefaultFileName = 'DFM_Wszystkie_artykuly_znajdujace_sie_w_bazie'
      PDFExportOptions.DefaultFileNameAssigned = True
      PDFExportOptions.OpenDocumentAfterExport = True
      PDFExportOptions.IsTitleAssigned = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 14500
      PrinterPage.Header = 14500
      PrinterPage.Margins.Bottom = 19500
      PrinterPage.Margins.Left = 20900
      PrinterPage.Margins.Right = 24800
      PrinterPage.Margins.Top = 19500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page #]/[Total Pages]')
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clBlack
      PrinterPage.PageFooter.Font.Height = -13
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'WSZYSTKIE ARTYKU'#321'Y ZNAJDUJ'#260'CE SI'#280' W BAZIE')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -13
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'DFM_Wszystkie_artykuly_znajdujace_sie_w_bazie'
      ReportDocument.CreationDate = 43901.329774259260000000
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object jvcsvDataFromFile: TJvCsvDataSet
    CsvFieldDef = 
      'ODWO_ID,AB:$150,NAZWA:$100,NAZWA_TKA1:$200,NAZWA_TKA2:$200,NAZWA' +
      '_KORPUSU:$200,ILOSC,ARTYKUL_RODZIC_ID,KLASYFIKACJA,QBM:&,CENA:&'
    Separator = ';'
    AutoBackupCount = 0
    Left = 613
    Top = 428
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.csv'
    FileName = '*.csv'
    Filter = '*.csv'
    Left = 696
    Top = 424
  end
  object cdsImportCSVReportGrid: TClientDataSet
    PersistDataPacket.Data = {
      640100009619E0BD01000000180000000C00000000000300000064010E504F57
      C393445F42C581C4984455010049000000010005574944544802000200640007
      4F44574F5F494401004900000001000557494454480200020050000241420100
      490000000100055749445448020002009600054E415A57410100490000000100
      0557494454480200020064000A4E415A57415F544B4131010049000000010005
      574944544802000200C8000A4E415A57415F544B413201004900000001000557
      4944544802000200C8000D4E415A57415F4B4F52505553550100490000000100
      05574944544802000200C80005494C4F53430100490000000100055749445448
      02000200500011415254594B554C5F524F445A49435F49440100490000000100
      0557494454480200020050000C4B4C41535946494B41434A4101004900000001
      000557494454480200020050000351424D08000400000000000443454E410800
      0400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1101
    Top = 108
    object cdsImportCSVReportGridPOWÓD_BŁĘDU: TStringField
      DisplayWidth = 20
      FieldName = 'POW'#211'D_B'#321#280'DU'
      Size = 100
    end
    object cdsImportCSVReportGridODWO_ID: TStringField
      DisplayWidth = 20
      FieldName = 'ODWO_ID'
      Size = 80
    end
    object cdsImportCSVReportGridAB: TStringField
      DisplayWidth = 20
      FieldName = 'AB'
      Size = 150
    end
    object cdsImportCSVReportGridNAZWA: TStringField
      DisplayWidth = 20
      FieldName = 'NAZWA'
      Size = 100
    end
    object cdsImportCSVReportGridNAZWA_TKA1: TStringField
      FieldName = 'NAZWA_TKA1'
      Visible = False
      Size = 200
    end
    object cdsImportCSVReportGridNAZWA_TKA2: TStringField
      FieldName = 'NAZWA_TKA2'
      Visible = False
      Size = 200
    end
    object cdsImportCSVReportGridNAZWA_KORPUSU: TStringField
      FieldName = 'NAZWA_KORPUSU'
      Visible = False
      Size = 200
    end
    object cdsImportCSVReportGridILOSC: TStringField
      FieldName = 'ILOSC'
      Visible = False
      Size = 80
    end
    object cdsImportCSVReportGridARTYKUL_RODZIC_ID: TStringField
      FieldName = 'ARTYKUL_RODZIC_ID'
      Visible = False
      Size = 80
    end
    object cdsImportCSVReportGridKLASYFIKACJA: TStringField
      FieldName = 'KLASYFIKACJA'
      Visible = False
      Size = 80
    end
    object cdsImportCSVReportGridQBM: TFloatField
      FieldName = 'QBM'
      Visible = False
    end
    object cdsImportCSVReportGridCENA: TFloatField
      FieldName = 'CENA'
      Visible = False
    end
  end
  object dsImportCSVReportGrid: TDataSource
    AutoEdit = False
    DataSet = cdsImportCSVReportGrid
    Left = 1104
    Top = 56
  end
  object dsModifyPricesGrid: TDataSource
    AutoEdit = False
    DataSet = cdsModifyPricesGrid
    Left = 1096
    Top = 160
  end
  object cdsModifyPricesGrid: TClientDataSet
    PersistDataPacket.Data = {
      190100009619E0BD01000000180000000B0000000000030000001901074F4457
      4F5F494404000100000000000241420100490000000100055749445448020002
      009600054E415A574101004900000001000557494454480200020064000D544B
      414E494E415F4E415A5741010049000000010005574944544802000200C8000E
      544B414E494E415F4E415A574132010049000000010005574944544802000200
      C8000D4E415A57415F4B4F525055535501004900000001000557494454480200
      0200C80007494C4FC59AC486040001000000000012415254594B55C5815F524F
      445A49435F494404000100000000000351424D08000400000000000443454E41
      08000400000000000A43454E415F5A5F56415408000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1224
    Top = 288
    object cdsModifyPricesGridODWO_ID: TIntegerField
      DisplayWidth = 20
      FieldName = 'ODWO_ID'
    end
    object cdsModifyPricesGridAB: TStringField
      DisplayWidth = 20
      FieldName = 'AB'
      Size = 150
    end
    object cdsModifyPricesGridNAZWA: TStringField
      DisplayWidth = 20
      FieldName = 'NAZWA'
      Size = 100
    end
    object cdsModifyPricesGridTKANINA_NAZWA: TStringField
      DisplayWidth = 20
      FieldName = 'TKANINA_NAZWA'
      Size = 200
    end
    object cdsModifyPricesGridTKANINA_NAZWA2: TStringField
      DisplayWidth = 20
      FieldName = 'TKANINA_NAZWA2'
      Size = 200
    end
    object cdsModifyPricesGridNAZWA_KORPUSU: TStringField
      DisplayWidth = 20
      FieldName = 'NAZWA_KORPUSU'
      Size = 200
    end
    object cdsModifyPricesGridILOŚĆ: TIntegerField
      DisplayWidth = 20
      FieldName = 'ILO'#346#262
    end
    object cdsModifyPricesGridARTYKUŁ_RODZIC_ID: TIntegerField
      DisplayWidth = 20
      FieldName = 'ARTYKU'#321'_RODZIC_ID'
    end
    object cdsModifyPricesGridQBM: TFloatField
      DisplayWidth = 20
      FieldName = 'QBM'
    end
    object cdsModifyPricesGridCENA: TFloatField
      DisplayWidth = 20
      FieldName = 'CENA'
    end
    object cdsModifyPricesGridCENA_Z_VAT: TFloatField
      DisplayWidth = 20
      FieldName = 'CENA_Z_VAT'
    end
  end
  object ibcspModifyArticlePrice: TIBCStoredProc
    StoredProcName = 'MODIFY_ARTICLE_PRICE'
    Connection = ibcdbDFM
    Transaction = ibctOnlySave
    SQL.Strings = (
      
        'EXECUTE PROCEDURE MODIFY_ARTICLE_PRICE(:I_ODWO_ID, :I_AB, :I_NAM' +
        'E, :I_PRICE)')
    Left = 48
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Precision = 10
        Name = 'I_ODWO_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_AB'
        ParamType = ptInput
        Size = 150
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_NAME'
        ParamType = ptInput
        Size = 100
        Value = nil
      end
      item
        DataType = ftFloat
        Precision = 20
        NumericScale = 2
        Name = 'I_PRICE'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'MODIFY_ARTICLE_PRICE'
  end
  object ibcspGetProductInfo: TIBCStoredProc
    StoredProcName = 'GET_PRODUCT_INFO'
    Connection = ibcdbDFM
    Transaction = ibctOnlyLoad
    SQL.Strings = (
      'SELECT * FROM GET_PRODUCT_INFO(:I_LABEL)')
    FetchAll = True
    Left = 128
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'I_LABEL'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'GET_PRODUCT_INFO'
    StoredProcIsQuery = True
  end
  object dsCheckProductInfoSummaryGrid: TDataSource
    AutoEdit = False
    DataSet = cdsCheckProductInfoSummaryGrid
    Left = 1104
    Top = 208
  end
  object cdsCheckProductInfoSummaryGrid: TClientDataSet
    PersistDataPacket.Data = {
      DB0000009619E0BD010000001800000009000000000003000000DB00074F4457
      4F5F494404000100000000000241420100490000000100055749445448020002
      009600054E415A574101004900000001000557494454480200020064000D4E41
      5A57415F544B414E494E59010049000000010005574944544802000200C8000D
      4E415A57415F4B4F5250555355010049000000010005574944544802000200C8
      0007494C4FC59AC48604000100000000000351424D0800040000000000044345
      4E4108000400000000000A43454E415F5A5F56415408000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1208
    Top = 336
    object cdsCheckProductInfoSummaryGridODWO_ID: TIntegerField
      DisplayWidth = 11
      FieldName = 'ODWO_ID'
    end
    object cdsCheckProductInfoSummaryGridAB: TStringField
      DisplayWidth = 17
      FieldName = 'AB'
      Size = 150
    end
    object cdsCheckProductInfoSummaryGridNAZWA: TStringField
      DisplayWidth = 20
      FieldName = 'NAZWA'
      Size = 100
    end
    object cdsCheckProductInfoSummaryGridNAZWA_TKANINY: TStringField
      DisplayWidth = 20
      FieldName = 'NAZWA_TKANINY'
      Size = 200
    end
    object cdsCheckProductInfoSummaryGridNAZWA_KORPUSU: TStringField
      DisplayWidth = 20
      FieldName = 'NAZWA_KORPUSU'
      Size = 200
    end
    object cdsCheckProductInfoSummaryGridILOŚĆ: TIntegerField
      DisplayWidth = 6
      FieldName = 'ILO'#346#262
    end
    object cdsCheckProductInfoSummaryGridQBM: TFloatField
      DisplayWidth = 6
      FieldName = 'QBM'
    end
    object cdsCheckProductInfoSummaryGridCENA: TFloatField
      DisplayWidth = 9
      FieldName = 'CENA'
    end
    object cdsCheckProductInfoSummaryGridCENA_Z_VAT: TFloatField
      DisplayWidth = 12
      FieldName = 'CENA_Z_VAT'
    end
  end
  object dsForSellingProcess: TDataSource
    AutoEdit = False
    DataSet = cdsForSellingProcess
    Left = 1224
    Top = 240
  end
  object cdsForSellingProcess: TClientDataSet
    PersistDataPacket.Data = {
      860000009619E0BD0100000018000000040000000000030000008600054E415A
      57410100490000000100055749445448020002006400084554594B4945544101
      0049000000010005574944544802000200C8000E494C4FC59AC4865F5A5F4241
      5A59040001000000000015494C4FC59AC4865F444F5F5350525A4544414E4941
      04000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1104
    Top = 312
    object cdsForSellingProcessNAZWA: TStringField
      DisplayWidth = 20
      FieldName = 'NAZWA'
      Size = 100
    end
    object cdsForSellingProcessETYKIETA: TStringField
      DisplayWidth = 20
      FieldName = 'ETYKIETA'
      Size = 200
    end
    object cdsForSellingProcessILOŚĆ_Z_BAZY: TIntegerField
      DisplayWidth = 13
      FieldName = 'ILO'#346#262'_Z_BAZY'
    end
    object cdsForSellingProcessILOŚĆ_DO_SPRZEDANIA: TIntegerField
      DisplayWidth = 21
      FieldName = 'ILO'#346#262'_DO_SPRZEDANIA'
    end
  end
  object rvsSummaryGridReport: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    OnPrint = rvsSummaryGridReportPrint
    Left = 768
    Top = 64
  end
  object rvrSummaryGridReportToJpeg: TRvRenderJpeg
    DisplayName = 'JPEG Files (JPG)'
    FileExtension = '*.jpg'
    ImageDPI = 540
    CompressionQuality = 90
    Left = 768
    Top = 112
  end
  object ibcspCurrentServerDate: TIBCStoredProc
    StoredProcName = 'CURRENT_SERVER_DATE'
    Connection = ibcdbDFM
    Transaction = ibctOnlyLoad
    SQL.Strings = (
      'SELECT * FROM CURRENT_SERVER_DATE')
    Left = 48
    Top = 368
    CommandStoredProcName = 'CURRENT_SERVER_DATE'
    StoredProcIsQuery = True
  end
  object ibcspWorkersPurchase: TIBCStoredProc
    StoredProcName = 'WORKERS_PURCHASE'
    Connection = ibcdbDFM
    Transaction = ibctOnlySave
    SQL.Strings = (
      
        'EXECUTE PROCEDURE WORKERS_PURCHASE(:I_USER_ID, :I_ODWO_ID, :I_LA' +
        'BEL, :I_NAME, :I_AMOUNT, :I_ADDRESS, :I_POST_CODE, :I_STREET, :I' +
        '_INSTITUTION)')
    Left = 160
    Top = 312
    ParamData = <
      item
        DataType = ftString
        Name = 'I_USER_ID'
        ParamType = ptInput
        Size = 100
        Value = nil
      end
      item
        DataType = ftInteger
        Precision = 10
        Name = 'I_ODWO_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_LABEL'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_NAME'
        ParamType = ptInput
        Size = 100
        Value = nil
      end
      item
        DataType = ftInteger
        Precision = 10
        Name = 'I_AMOUNT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_ADDRESS'
        ParamType = ptInput
        Size = 150
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_POST_CODE'
        ParamType = ptInput
        Size = 150
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_STREET'
        ParamType = ptInput
        Size = 200
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_INSTITUTION'
        ParamType = ptInput
        Size = 30
        Value = nil
      end>
    CommandStoredProcName = 'WORKERS_PURCHASE'
  end
  object ibcspGetWorkersOrdersID: TIBCStoredProc
    StoredProcName = 'GET_WORKERS_ORDERS_ID'
    Connection = ibcdbDFM
    Transaction = ibctOnlyLoad
    SQL.Strings = (
      'SELECT * FROM GET_WORKERS_ORDERS_ID')
    FetchAll = True
    Left = 184
    Top = 360
    CommandStoredProcName = 'GET_WORKERS_ORDERS_ID'
    StoredProcIsQuery = True
  end
  object ibcspRollbackWorkerPurchase: TIBCStoredProc
    StoredProcName = 'ROLLBACK_WORKER_PURCHASE'
    Connection = ibcdbDFM
    Transaction = ibctOnlySave
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ROLLBACK_WORKER_PURCHASE(:I_ORDER_ID, :I_ODWO_' +
        'ID, :I_NAME)')
    Left = 200
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Precision = 10
        Name = 'I_ORDER_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Precision = 10
        Name = 'I_ODWO_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_NAME'
        ParamType = ptInput
        Size = 100
        Value = nil
      end>
    CommandStoredProcName = 'ROLLBACK_WORKER_PURCHASE'
  end
  object cdsGetWorkersOrdersID: TClientDataSet
    PersistDataPacket.Data = {
      6E0000009619E0BD0100000018000000040000000000030000006E00084F5244
      45525F4944040001000000000007555345525F49440100490000000100055749
      445448020002006400054C4142454C0100490000000100055749445448020002
      00C800044441544508000800000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1104
    Top = 264
    object cdsGetWorkersOrdersIDORDER_ID: TIntegerField
      FieldName = 'ORDER_ID'
    end
    object cdsGetWorkersOrdersIDUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 100
    end
    object cdsGetWorkersOrdersIDLABEL: TStringField
      FieldName = 'LABEL'
      Size = 200
    end
    object cdsGetWorkersOrdersIDDATE: TDateTimeField
      FieldName = 'DATE'
    end
  end
end
