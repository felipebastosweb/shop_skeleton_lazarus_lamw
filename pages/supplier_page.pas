{hint: Pascal files location: ...\\jni }
unit supplier_page;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, actionbartab, Laz_And_Controls;
  
type

  { TSupplierPage }

  TSupplierPage = class(jForm)
    ListView1: jListView;
    ScrollView1: jScrollView;
    procedure SupplierPageJNIPrompt(Sender: TObject);
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  SupplierPage: TSupplierPage;

implementation
  
{$R *.lfm}


    {
    MF DISTRIBUIDORA (ANIMAIS)
LOT. PORTAL NORTE CENTER QD 2 LT 12, CEP: 42700000,
Tel.: (71) 3418-1885 / 1857
    }

{
https://www.premierpet.com.br/distribuidores/
https://www.premierpet.com.br/caes/
https://www.premierpet.com.br/gatos/

}
  

{ TSupplierPage }

procedure TSupplierPage.SupplierPageJNIPrompt(Sender: TObject);
begin
  // inicializa o app
end;

end.
