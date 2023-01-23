unit currency_model;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TCurrency = class 
    Id : Integer;
    Key : string; // key in database in server
    MoneyName : string;
  end;

implementation

end.

