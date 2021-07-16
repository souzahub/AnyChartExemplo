unit Main;

interface

uses
  HTML.AnyChart, // << Classe do AnyChart
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame, uniButton, uniBitBtn, uniScrollBox, uniMultiItem, uniComboBox;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    btnChart1: TUniBitBtn;
    btnChart2: TUniBitBtn;
    btnChart3: TUniBitBtn;
    Scrollbox: TUniScrollBox;
    cp1: TUniContainerPanel;
    FrameChart1: TUniHTMLFrame;
    UniContainerPanel2: TUniContainerPanel;
    FrameChart4: TUniHTMLFrame;
    FrameChart3: TUniHTMLFrame;
    btnChart4: TUniBitBtn;
    FrameChart2: TUniHTMLFrame;
    cbThemes: TUniComboBox;
    procedure btnChart1Click(Sender: TObject);
    procedure btnChart2Click(Sender: TObject);
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure btnChart3Click(Sender: TObject);
    procedure btnChart4Click(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure cbThemesChange(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
     Chart : IAnyChart;
     procedure Chart1;
     procedure Chart2;
     procedure Chart3;
     procedure Chart4;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin

  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));

end;

procedure TMainForm.Chart1;
var
  Rows : string;
begin

  // Suponhamos que esses valores vieram do seu banco de dados, JSON, etc
  Rows := '["Março",5100,3500,2500],'+
          '["Fevereiro",3000,2010,990],'+
          '["Janeiro",4000,950,3050]';

  FrameChart1.HTML.Text := TAnyChart.Init.Chart1(Rows);

end;

procedure TMainForm.Chart2;
var
  Rows2 : string;
begin

  // Suponhamos que esses valores vieram do seu banco de dados, JSON, etc
  Rows2 := '["04/2019", 205000],'+
           '["05/2019", 221555],'+
           '["06/2019", 315000],'+
           '["07/2019", 459150],'+
           '["08/2019", 303801],'+
           '["09/2019", 420251],'+
           '["10/2019", 512055],'+
           '["11/2019", 355144],'+
           '["12/2019", 312158],'+
           '["01/2020", 523891],'+
           '["02/2020", 483844],'+
           '["03/2020", 291999]';

  FrameChart2.HTML.Text := TAnyChart.Init.Chart2(Rows2);

end;

procedure TMainForm.Chart3;
var
  Rows: string;
begin

  // Suponhamos que esses valores vieram do seu banco de dados, JSON, etc
  Rows := '["10/2019", 144352, 154172, 133129],'+
          '["11/2019", 163577, 155137, 144145],'+
          '["12/2019", 133683, 112123, 133188],'+
          '["01/2020", 173744, 155134, 166102],'+
          '["02/2020", 153766, 144146, 144846],'+
          '["03/2020", 143789, 145159, 133669]';

  FrameChart3.HTML.Text := TAnyChart.Init.Chart3(Rows);

end;

procedure TMainForm.Chart4;
var
  Rows: string;
begin

  // Suponhamos que esses valores vieram do seu banco de dados, JSON, etc
  Rows := '["Microconputador XYZ1", 150],'+
          '["Smartphone ABC", 220],'+
          '["Xbox 000", 180],'+
          '["Impressora HP", 170], '+
          '["Notebook X", 160], '+
          '["Drone ZZZ", 190], '+
          '["Relógio LA", 185],'+
          '["Patinete", 125],'+
          '["Óculos 3D", 95],'+
          '["Óculos 3D 2", 90]';

  FrameChart4.HTML.Text := TAnyChart.Init.Chart4(Rows);

end;

procedure TMainForm.btnChart1Click(Sender: TObject);
begin

  Chart1;

end;

procedure TMainForm.btnChart2Click(Sender: TObject);
begin

  Chart2;

end;

procedure TMainForm.btnChart3Click(Sender: TObject);
begin

  Chart3;

end;

procedure TMainForm.btnChart4Click(Sender: TObject);
begin

  Chart4;

end;

procedure TMainForm.cbThemesChange(Sender: TObject);
begin

  UniSession.UrlRedirect(UniSession.URL+'?theme='+cbThemes.Text);

end;

procedure TMainForm.UniFormReady(Sender: TObject);
begin

  btnChart1Click(Sender);
  btnChart2Click(Sender);
  btnChart3Click(Sender);
  btnChart4Click(Sender);

end;

procedure TMainForm.UniFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin

  FrameChart1.Width := Round(AWidth / 2);
  FrameChart3.Width := Round(AWidth / 2);

end;

procedure TMainForm.UniFormShow(Sender: TObject);
var
  theme : string;
begin

  theme := UniApplication.Parameters.Values['theme'];

  if theme = EmptyStr then theme := 'default';

  cbThemes.Text := theme;

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
