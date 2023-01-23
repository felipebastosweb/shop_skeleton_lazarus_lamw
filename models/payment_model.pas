unit payment_model;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TPaymentMethod = class       
    Id : Integer;
    Key : string; // key in database in server
    Name : string;
  end;

  TShopPaymentMethod = class   
    Id : Integer;
    Key : string; // key in database in server
    Shop_Id : Integer;
    Payment_Method_Id : Integer;
    Enabled : Boolean;
  end;

  TPayment = class                                
    Id : Integer;
    Key : string; // key in database in server
    Order_Id : Integer;
    Shop_Payment_Method_Id : Integer;
    Value : Integer;
    Currency_Id : Integer;
    Criation_Date : string;
  end;


implementation

end.

