unit migration_order_create;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TMigrationOrderCreate = class
    jSqliteCursor1: jSqliteCursor;
    jSqliteDataAccess1: jSqliteDataAccess;
    procedure CreateOrderTable;
    procedure CreateOrderProductTable;
  end;

implementation

procedure TMigrationOrderCreate.CreateOrderTable;
var
  querySuccess : Boolean;
begin
  // create shops table
  querySuccess := jSqliteDataAccess1.CreateTable('CREATE TABLE IF NOT EXISTS orders(id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR(200), shop_id INT, customer_id INT, total INT, currency_id INT, creation_date VARCHAR(200), FOREIGN KEY(shop_id) REFERENCES shops(id), FOREIGN KEY(customer_id) REFERENCES customers(id), FOREIGN KEY(currency_id) REFERENCES currencies(id);');
  if querySuccess then begin
     ShowMessage('A tabela orders foi criada');
  end else
      ShowMessage('Falhou! A tabela orders não foi criada');
end;

procedure TMigrationOrderCreate.CreateOrderProductTable;
var
  querySuccess : Boolean;
begin
  // create shops table
  querySuccess := jSqliteDataAccess1.CreateTable('CREATE TABLE IF NOT EXISTS order_products(id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR(200), order_id INT, product_id INT, price INT, currency_id INT, creation_date VARCHAR(200), FOREIGN KEY(order_id) REFERENCES orders(id), FOREIGN KEY (product_id) REFERENCES products(id), FOREIGN KEY(currency_id) REFERENCES currencies(id);');
  if querySuccess then begin
     ShowMessage('A tabela order_products foi criada');
  end else
      ShowMessage('Falhou! A tabela order_products não foi criada');
end;

end.

