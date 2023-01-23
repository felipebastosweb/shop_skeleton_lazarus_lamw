unit product_model;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TProduct = class   
    Id : Integer;
    Key : string; // key in database in server
    Name : string;
    Description : string;
    Criation_Date : string;
  end;

  TShopProduct = class  
    Id : Integer;
    Key : string; // key in database in server
    Shop_Id : Integer;
    Product_Id : Integer;
    Price : Integer;
    Currency_Id : Integer;  
    Criation_Date : string;
  end;

implementation

end.

