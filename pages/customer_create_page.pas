{hint: Pascal files location: ...\\jni }
unit customer_create_page;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls;
  
type

  { TCustomerCreatePage }

  TCustomerCreatePage = class(jForm)
    Email: jEditText;
    Location: jEditText;
    Name: jEditText;
    ScrollView1: jScrollView;
    Telephone: jEditText;
    NameTextView1: jTextView;
    LocationTextView2: jTextView;
    TelephoneTextView3: jTextView;
    EmailTextView4: jTextView;
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  CustomerCreatePage: TCustomerCreatePage;

implementation
  
{$R *.lfm}
  

end.
