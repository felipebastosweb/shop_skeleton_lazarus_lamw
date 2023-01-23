unit supplier_model;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TSupplier = class
    Id : Integer;
    Key : string; // key in database in server
    Name : string;
    Email : string;
    Telephone : string;
    Site : string;
  end;


implementation

end.

