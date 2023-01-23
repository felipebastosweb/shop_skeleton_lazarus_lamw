{hint: Pascal files location: ...\\jni }
unit brands_page;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls;
  
type

  { TBrandsPage }

  TBrandsPage = class(jForm)
    BrandAddButton1: jButton;
    ListView1: jListView;
    ScrollView1: jScrollView;
    procedure BrandAddButton1Click(Sender: TObject);
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  BrandsPage: TBrandsPage;

implementation
  
{$R *.lfm}

{
https://www.hillspet.com.br/

https://mybest-brazil.com.br/21098
Hill's Pet Nutrition    https://www.hillspet.com.br/
Royal Canin             https://www.royalcanin.com/br
Premier                 https://www.premierpet.com.br/
Golden
Pedigree                https://www.pedigree.com.br/
Magnus
Gran Plus
Special Dog
Biofresh
Quatree
Zee.Dog
}
  

{ TBrandsPage }

procedure TBrandsPage.BrandAddButton1Click(Sender: TObject);
begin
    {
    Abre formulário de cadastro de nova marca
    }

end;

end.
