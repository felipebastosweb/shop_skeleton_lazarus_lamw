unit shop_model;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TShop = class     
    Id : Integer;
    Key : string; // key in database in server
    Name : string;
    Email : string;
    Telephone : string;
    Site : string;
    FederalNumber : string;
    ZoneNumber : string;
    DistrictNumber : string;  
    Criation_Date : string;
  end;

implementation

end.

