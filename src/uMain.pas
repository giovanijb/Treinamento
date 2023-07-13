unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, FireDAC.Comp.UI,
  Vcl.DBCtrls;

type
  TfrmMain = class(TForm)
    mmMenuPrincipal: TMainMenu;
    mnCadastros: TMenuItem;
    mnComercial: TMenuItem;
    mnUsuarios: TMenuItem;
    mnClientes: TMenuItem;
    mnFornecedores: TMenuItem;
    mnN1: TMenuItem;
    mnN2: TMenuItem;
    N1: TMenuItem;
    mnVenda: TMenuItem;
    mnProdutos: TMenuItem;
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    pnl1: TPanel;
    dbgrdUsuarios: TDBGrid;
    qryUsuarios: TFDQuery;
    dsUsuarios: TDataSource;
    btn1: TButton;
    dbnvgr1: TDBNavigator;
    procedure btnTesteMouseEnter(Sender: TObject);
    procedure btnTesteMouseLeave(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btn1Click(Sender: TObject);
begin
  qryUsuarios.Open();
end;

procedure TfrmMain.btnTesteMouseEnter(Sender: TObject);
begin

  frmMain.Color := clGreen;

end;

procedure TfrmMain.btnTesteMouseLeave(Sender: TObject);
begin

  frmMain.Color := clBlue;

end;

end.
