{hint: Pascal files location: ...\\jni }
unit sales_page;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, actionbartab, Laz_And_Controls;
  
type

  { TSalesPage }

  TSalesPage = class(jForm)
    ListView1: jListView;
    ScrollView1: jScrollView;
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  SalesPage: TSalesPage;

implementation
  
{$R *.lfm}
  

end.
