unit uFrmCad_Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uCad_Vendedor, uCad_Gestor, uFuncionario;

type
  TFrmCad_Funcionario = class(TForm)
    EdtNome: TEdit;
    EdtCPF: TEdit;
    EdtSalario: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtnCadastrar: TButton;
    RGVenGes: TRadioGroup;
    Panel1: TPanel;
    EdtHExtra: TEdit;
    procedure BtnCadastrarClick(Sender: TObject);
    procedure RGVenGesClick(Sender: TObject);
    procedure EdtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSalarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCad_Funcionario: TFrmCad_Funcionario;
  Vendedor: TCad_Vendedor;
  Gestor: TCad_Gestor;

implementation

{$R *.dfm}

procedure TFrmCad_Funcionario.BtnCadastrarClick(Sender: TObject);
var
  Funcionario: array [1 .. 100] of TFuncionario;
  I: Integer;
  CHExtra: Double;

begin
  if RGVenGes.ItemIndex = 0 then

    if (EdtNome.Text <> '') and (EdtCPF.Modified = true) and
      (EdtSalario.Text <> '') then

      try
        Vendedor := TCad_Vendedor.Create;

        Vendedor.Nome := EdtNome.Text;
        Vendedor.CPF := EdtCPF.Text;
        Vendedor.Salario := Trunc(StrToInt(EdtSalario.Text));

        ShowMessage('Nome: ' + Vendedor.Nome + #13 + 'CPF: ' + Vendedor.CPF +
          #13 + 'Sal�rio: R$' + FloatToStr(Vendedor.SalarioT(0.15) +
          Vendedor.Salario));
        I := I + 1;

        RGVenGes.ItemIndex := -1;
        EdtNome.Clear;
        EdtCPF.Clear;
        EdtSalario.Clear;
      finally
        FreeAndNil(Vendedor);
      end
    else
      MessageDlg('Preencha todos os campos!', mtError, [mbOK], 0)

  else

    if RGVenGes.ItemIndex = 1 then

    if (EdtNome.Text <> '') and (EdtCPF.Modified = true) and
      (EdtSalario.Text <> '') and (EdtHExtra.Text <> '') then

      try
        Gestor := TCad_Gestor.Create;

        Gestor.Nome := EdtNome.Text;
        Gestor.CPF := EdtCPF.Text;
        Gestor.Salario := StrToInt(EdtSalario.Text);
        Gestor.HExtra := Trunc(StrToFloat(EdtHExtra.Text));

        ShowMessage('Nome: ' + Gestor.Nome + #13 + 'CPF: ' + Gestor.CPF + #13 +
          'Sal�rio: R$' + FloatToStr(Gestor.Hora(Gestor.HExtra) +
          Gestor.Salario));

        RGVenGes.ItemIndex := -1;
        EdtNome.Clear;
        EdtCPF.Clear;
        EdtSalario.Clear;
        EdtHExtra.Clear;

        I := I + 1;
      finally
        FreeAndNil(Gestor);
      end
    else
      MessageDlg('Preencha todos os campos!', mtError, [mbOK], 0)

  else
    MessageDlg('Preencha todos os campos!', mtError, [mbOK], 0);
end;

procedure TFrmCad_Funcionario.EdtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', '-', Chr(8)]) then
  begin
    EdtCPF.Clear;
    MessageDlg('Vo�� n�o digitou valores num�ricos', mtError, [mbOK], 0);
  end;
end;

procedure TFrmCad_Funcionario.EdtSalarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', '-', Chr(8)]) then
  begin
    EdtCPF.Clear;
    MessageDlg('Vo�� n�o digitou valores num�ricos', mtError, [mbOK], 0);
  end;
end;

procedure TFrmCad_Funcionario.RGVenGesClick(Sender: TObject);
begin
  if RGVenGes.ItemIndex = 1 then
    EdtHExtra.Visible := true
  else
    EdtHExtra.Visible := False;
end;

end.
