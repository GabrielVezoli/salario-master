program Aplicacao_Salario;

uses
  Vcl.Forms,
  uFrmPrincipal in '..\Sources\uFrmPrincipal.pas' {FrmPrincipal},
  uFrmCad_Funcionario in '..\Sources\uFrmCad_Funcionario.pas' {FrmCad_Funcionario},
  uFuncionario in '..\Sources\uFuncionario.pas',
  uCad_Vendedor in '..\Sources\uCad_Vendedor.pas',
  uCad_Gestor in '..\Sources\uCad_Gestor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCad_Funcionario, FrmCad_Funcionario);
  Application.Run;
end.
