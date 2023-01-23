unit order_model, shop_model, customer_model;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TOrder = class
    Id : Integer;
    Key : string; // key in database in server
    Shop_Id : Integer;
    Customer_Id : Integer;      
    Total : Integer;
    Currency_Id : Integer;
    Criation_Date : string;
  end;


  TOrderProduct = class
    Id : Integer;
    Key : string; // key in database in server
    Order_Id : Integer;
    Product_Id : Integer;
    Price_Id : Integer;
    Quantity_Id : Integer;
    Total_Id : Integer;
    Currency_Id : Integer;
    Criation_Date : string;
  end;

implementation

end.

