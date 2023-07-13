program GestaoLojaBartSimpson;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uDmUsuario in 'Usuario\uDmUsuario.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
