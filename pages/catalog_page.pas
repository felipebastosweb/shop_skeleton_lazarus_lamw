{hint: Pascal files location: ...\\jni }
unit catalog_page;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, actionbartab, Laz_And_Controls;
  
type

  { TCatalogPage }

  TCatalogPage = class(jForm)
    ActionBarTab1: jActionBarTab;
    ScrollView1: jScrollView;
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  CatalogPage: TCatalogPage;

implementation
  
{$R *.lfm}
  

end.
