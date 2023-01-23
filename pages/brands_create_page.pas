{hint: Pascal files location: ...\\jni }
unit brands_create_page;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls;
  
type

  { TBrandCreatePage }

  TBrandCreatePage = class(jForm)
    Name: jEditText;
    Location: jEditText;
    Telephone: jEditText;
    ScrollView1: jScrollView;
    Email: jEditText;
    Site: jEditText;
    TextView1: jTextView;
    TextView2: jTextView;
    TextView3: jTextView;
    TextView4: jTextView;
    TextView5: jTextView;
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  BrandCreatePage: TBrandCreatePage;

implementation
  
{$R *.lfm}
  

end.
