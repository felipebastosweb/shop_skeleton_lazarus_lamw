unit migration_product_create;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type
  TMigrationProductCreate = class
    jSqliteCursor1: jSqliteCursor;
    jSqliteDataAccess1: jSqliteDataAccess;
    procedure CreateProductTable;
    procedure CreateShopProductTable;
  end;


implementation

procedure TMigrationProductCreate.CreateProductTable;
var
  querySuccess : Boolean;
begin
  // create shops table
  querySuccess := jSqliteDataAccess1.CreateTable('CREATE TABLE IF NOT EXISTS products(id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR(200), name VARCHAR(200), description VARCHAR(200), width INT, height INT, length INT, weight INT, brand_id INT, creation_date VARCHAR(200), FOREIGN KEY(brand_id) REFERENCES brands(id);');
  if querySuccess then begin
     ShowMessage('A tabela products foi criada');
  end else
      ShowMessage('Falhou! A tabela products não foi criada');
end;

procedure TMigrationProductCreate.CreateShopProductTable;
var
  querySuccess : Boolean;
begin
  // create shops table
  querySuccess := jSqliteDataAccess1.CreateTable('CREATE TABLE IF NOT EXISTS shop_products(id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR(200), shop_id INT, product_id INT, price INT, currency_id INT, creation_date VARCHAR(200), FOREIGN KEY(shop_id) REFERENCES shops(id), FOREIGN KEY (product_id) REFERENCES products(id), FOREIGN KEY(currency_id) REFERENCES currencies(id);');
  if querySuccess then begin
     ShowMessage('A tabela shops foi criada');
  end else
      ShowMessage('Falhou! A tabela shops não foi criada');
end;



end.

