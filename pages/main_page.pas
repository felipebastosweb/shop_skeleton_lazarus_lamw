{hint: Pascal files location: ...\PetShop\jni }
unit main_page;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls,
  dashboard_page, migration_unit;
  
type

  { TMainPage }

  TMainPage = class(jForm)
    FirstAccessTextView: jTextView;
    ImageView1: jImageView;
    jSqliteCursor1: jSqliteCursor;
    jSqliteDataAccess1: jSqliteDataAccess;
    KeepConnected: jCheckBox;
    LoginButton: jButton;
    LoginPanel1: jPanel;
    OpenAccountRecoveryPanelButton: jButton;
    OpenRegisterPanelButton: jButton;
    Password: jEditText;
    PasswordTextView: jTextView;
    RecoveryAccountTextView: jTextView;
    ScrollView1: jScrollView;
    Username: jEditText;
    UsernameTextView: jTextView;
    UsersListView1: jListView;
    procedure LoginButtonClick(Sender: TObject);
    procedure MainPageJNIPrompt(Sender: TObject);
    procedure OpenAccountRecoveryPanelButtonClick(Sender: TObject);
    procedure OpenRegisterPanelButtonClick(Sender: TObject);
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  MainPage: TMainPage;
  MigrationUnit : TMigrationUnit;

implementation
  
{$R *.lfm}
  

{ TMainPage }

procedure TMainPage.LoginButtonClick(Sender: TObject);
begin
    // fazer login
  // salvar login do usuário no banco de dados (incluindo login automático ou não)
  // abrir página dashboard passando o usuário logado
  if DashboardPage <> nil then begin
      MainPage.SetVisible(False);
      DashboardPage.Initialized := True;
      DashboardPage.Show;
  end;
end;

procedure TMainPage.MainPageJNIPrompt(Sender: TObject);
begin
  self.SetVisible(True);
  jSqliteDataAccess1.Init;

  if jSqliteDataAccess1.CheckDataBaseExists('petshop.db') then begin
     //ShowMessage('O banco de dados já existe.');
     //jSqliteDataAccess1.OpenOrCreate('petshop.db');
     //ShowMessage('As tabelas estão atualizadas.');
  end
  else
  begin
    jSqliteDataAccess1.OpenOrCreate('petshop.db');
    MigrationUnit.jSqliteCursor1:= jSqliteCursor1;
    MigrationUnit.jSqliteDataAccess1:= jSqliteDataAccess1;
    MigrationUnit.Init;
  end;

    // listar usuários registrados
end;

procedure TMainPage.OpenAccountRecoveryPanelButtonClick(Sender: TObject);
begin
    // recovery account
end;

procedure TMainPage.OpenRegisterPanelButtonClick(Sender: TObject);
begin
    // register neu user
end;

end.
