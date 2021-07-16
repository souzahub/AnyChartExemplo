unit HTML.AnyChart;

{
  AnyChart with Delphi - https://www.anychart.com/products/anychart/gallery/
  Arquivos adicionais na pasta files
}

interface

uses
  ServerModule, System.Classes, System.SysUtils;

type

  IAnyChart = interface
    ['{6CB740D6-B5C4-4AE6-B33F-731427BAFB29}']
    function Chart1(Rows:string): string;
    function Chart2(Rows:string): string;
    function Chart3(Rows:string): string;
    function Chart4(Rows:string): string;
  end;
  TAnyChart = class(TInterfacedObject, IAnyChart)
  private
    FHTMLChart1, FHTMLChart2, FHTMLChart3, FHTMLChart4 : string;
    FTheme : string;
  public
    function GetHTML(aFile,aRows:string): string;
    function Chart1(Rows:string): string;
    function Chart2(Rows:string): string;
    function Chart3(Rows:string): string;
    function Chart4(Rows:string): string;
    constructor Create;
    destructor Destroy; override;
    class function Init: IAnyChart;
  end;

const
  AnyChartURL = 'https://cdn.anychart.com/releases/v8';

implementation

uses
  uniGUIClasses, uniGUITypes, uniGUIDialogs, uniGUIApplication;

{ HTMLChart }

constructor TAnyChart.Create;
var
  Dir : string;
begin

  Ftheme := UniApplication.Parameters.Values['theme'];

  Dir := UniServerModule.StartPath + 'files\anychart\';

  // Caminho dos arquivos HTML
  FHTMLChart1 := Dir + 'chart1.html';
  FHTMLChart2 := Dir + 'chart2.html';
  FHTMLChart3 := Dir + 'chart3.html';
  FHTMLChart4 := Dir + 'chart4.html';

end;

destructor TAnyChart.Destroy;
begin

  inherited;
end;

class function TAnyChart.Init: IAnyChart;
begin

  Result := Self.Create;

end;

function TAnyChart.GetHTML(aFile,aRows:string): string;
var
  HTML : TStringList;
begin

  HTML := TStringList.Create;

  try
    HTML.LoadFromFile(aFile,TEncoding.UTF8);

    HTML.Text := StringReplace(HTML.Text,'[00]',aRows,[rfReplaceAll, rfIgnoreCase]);
    HTML.Text := StringReplace(HTML.Text,'[theme]',FTheme,[rfReplaceAll, rfIgnoreCase]);

    Result := HTML.Text;
  finally
    HTML.Clear;
    HTML.Free;
  end;

end;

function TAnyChart.Chart1(Rows: string): string;
begin

  Result := GetHTML(FHTMLChart1,Rows);

end;

function TAnyChart.Chart2(Rows: string): string;
begin

  Result := GetHTML(FHTMLChart2,Rows);

end;

function TAnyChart.Chart3(Rows: string): string;
begin

  Result := GetHTML(FHTMLChart3,Rows);

end;

function TAnyChart.Chart4(Rows: string): string;
begin

  Result := GetHTML(FHTMLChart4,Rows);

end;


initialization
  // Para não precisar adicionar no CustomFiles manualmente:

  // CSS
  UniAddCSSLibrary(AnyChartURL + '/css/anychart-ui.min.css',False,[upoFolderFiles, upoPlatformBoth]);
  UniAddCSSLibrary(AnyChartURL + '/fonts/css/anychart-font.min.css', False, [upoFolderFiles, upoPlatformBoth]);

  // JS
  UniAddJSLibrary(AnyChartURL  + '/js/anychart-base.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/js/anychart-ui.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/js/anychart-exports.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/js/anychart-cartesian-3d.min.js',False,[upoFolderFiles,upoPlatformBoth, upoDefer]);

  // JS Themes
  UniAddJSLibrary(AnyChartURL  + '/themes/monochrome.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/themes/dark_blue.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/themes/wines.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/themes/light_blue.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/themes/sea.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/themes/light_glamour.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/themes/light_provence.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/themes/dark_turquoise.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/themes/light_turquoise.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/themes/pastel.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
  UniAddJSLibrary(AnyChartURL  + '/themes/dark_earth.min.js',False,[upoFolderFiles,upoPlatformBoth,upoDefer]);
end.
