{hint: Pascal files location: ...\\jni }
unit dashboard_page;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls,
  catalog_page, sales_page, customers_page, stock_page;
  
type

  { TDashboardPage }

  TDashboardPage = class(jForm)
    CustomersPanel1: jPanel;
    OrdersPanel1: jPanel;
    Panel1: jPanel;
    ProductsTotalPanel1: jPanel;
    ProductsPanel2: jPanel;
    Panel3: jPanel;
    OrdersTotalTextView1: jTextView;
    ProductsPanel1: jPanel;
    ScrollView1: jScrollView;
    ProductsTotalTextView1: jTextView;
    StocksPanel1: jPanel;
    TextView1: jTextView;
    TextView2: jTextView;
    TitleCustomersTextView2: jTextView;
    TitleStocksTextView2: jTextView;
    TitleOrdersTextView2: jTextView;
    TitleTextView1: jTextView;
    procedure DashboardPageJNIPrompt(Sender: TObject);
    procedure OrdersPanel1Click(Sender: TObject);
    procedure ProductsPanel1Click(Sender: TObject);
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  DashboardPage: TDashboardPage;

implementation
  
{$R *.lfm}

// https://www.kyte.com.br/venda/sistema-pdv-para-celular

{ TDashboardPage }

procedure TDashboardPage.DashboardPageJNIPrompt(Sender: TObject);
begin
    // dados de abertura da tela
end;

procedure TDashboardPage.OrdersPanel1Click(Sender: TObject);
begin
  if SalesPage <> nil then begin
      DashboardPage.SetVisible(False);
      SalesPage.Initialized := True;
      SalesPage.Show;
  end;
end;

procedure TDashboardPage.ProductsPanel1Click(Sender: TObject);
begin
    
  if CatalogPage <> nil then begin
      DashboardPage.SetVisible(False);
      CatalogPage.Initialized := True;
      CatalogPage.Show;
  end;
end;

end.
