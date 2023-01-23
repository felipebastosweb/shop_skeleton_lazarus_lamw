unit migration_unit;

{$mode delphi}

interface

uses
  Classes, SysUtils, migration_user_create, migration_brand_create, migration_shop_create,
  migration_product_create, migration_purchase_create, migration_order_create;

type
  TMigrationUnit = class
    public
    jSqliteCursor1: jSqliteCursor;
    jSqliteDataAccess1: jSqliteDataAccess;
    procedure Init;
  end;

var
  MigrationUserCreate : TMigrationUserCreate;
  MigrationBrandCreate : TMigrationBrandCreate;
  MigrationCurrencyCreate : TMigrationCurrencyCreate;   
  MigrationShopCreate : TMigrationShopCreate;         
  MigrationSupplierCreate : TMigrationSupplierCreate;
  MigrationProductCreate : TMigrationProductCreate;
  MigrationPurchaseCreate : TMigrationPurchaseCreate;
  MigrationOrderCreate : TMigrationOrderCreate;


implementation

procedure TMigrationUnit.Init;
begin
    {}
    MigrationUserCreate.CreateUserTable;
    MigrationUserCreate.CreatePermissionTable;
    MigrationUserCreate.CreateRoleTable;
    MigrationBrandCreate.CreateBrandTable;
    MigrationSupplierCreate.CreateSupplierTable;
    MigrationShopCreate.CreateShopTable;
    MigrationProductCreate.CreateProductTable;
    MigrationProductCreate.CreateShopProductTable;
    MigrationPurchaseCreate.CreatePurchaseTable;
    MigrationPurchaseCreate.CreatePurchaseProductTable;
    MigrationOrderCreate.CreateOrderTable;
    MigrationOrderCreate.CreateOrderProductTable;
end;

end.

