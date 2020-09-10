unit uFrmCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCadastro = class(TForm)
    EdtNome: TEdit;
    EdtCPF: TEdit;
    EdtSalario: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    BtnCadastrar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

{$R *.dfm}

end.
