{hint: Pascal files location: ...\\jni }
unit supplier_create_page;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls;
  
type

  { TSupplierCreatePage }

  TSupplierCreatePage = class(jForm)
    ListView1: jListView;
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  SupplierCreatePage: TSupplierCreatePage;

implementation
  
{$R *.lfm}
  

end.
