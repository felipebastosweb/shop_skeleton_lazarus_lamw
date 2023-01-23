unit purchase_model;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TPurchase = class
    Id : Integer;
    Key : string; // key in database in server
    Shop_Id : Integer;
    Supplier_Id : Integer;
    Criation_Date : string;
  end;


  TPurchaseProduct = class
    Id : Integer;
    Key : string; // key in database in server
    Purchase_Id : Integer;
    Product_Id : Integer;
    Price_Id : Integer;
    Quantity_Id : Integer;
    Total_Id : Integer;
    Currency_Id : Integer;   
    Criation_Date : string;
  end;


implementation

end.

