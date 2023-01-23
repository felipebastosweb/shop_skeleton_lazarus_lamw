{hint: Pascal files location: ...\\jni }
unit customers_page;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, actionbartab, Laz_And_Controls;
  
type

  { TCustomersPage }

  TCustomersPage = class(jForm)
    ListView1: jListView;
    ScrollView1: jScrollView;
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  CustomersPage: TCustomersPage;

implementation
  
{$R *.lfm}
  

end.
