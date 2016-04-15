unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfmrRegistro }

  TfmrRegistro = class(TForm)
    btnArmazenar: TButton;
    btnLer: TButton;
    btnLimpar: TButton;
    chkCasado: TCheckBox;
    Label1: TLabel;
    txtNome: TEdit;
    txtCasado: TEdit;
    txtAltura: TEdit;
    txtSalario: TEdit;
    txtTelefone: TEdit;
    txtControle: TEdit;
    lblNome: TLabel;
    lblCasado: TLabel;
    lblAltura: TLabel;
    lblSalario: TLabel;
    lblTelefone: TLabel;
    lblControle: TLabel;
    procedure btnArmazenarClick(Sender: TObject);
    procedure btnLerClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure chkCasadoChange(Sender: TObject);
    procedure chkCasadoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure txtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure txtNomeKeyPress(Sender: TObject; var Key: char);
    procedure txtNomeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fmrRegistro: TfmrRegistro;
  nome, telefone, controle: String;
  Altura, salario: Double;
  casado, casadinho:Boolean;

implementation

{$R *.lfm}

{ TfmrRegistro }

procedure TfmrRegistro.btnLimparClick(Sender: TObject);
begin
  txtAltura.Text:='';
  txtCasado.Text:='Não';
  txtControle.Text:='';
  txtNome.Text:='';
  txtSalario.Text:='';
  txtTelefone.Text:='';
  chkCasado.Checked:=False;
end;

procedure TfmrRegistro.chkCasadoChange(Sender: TObject);
begin

end;

procedure TfmrRegistro.chkCasadoClick(Sender: TObject);
begin
  casadinho:=chkCasado.Checked;
   if (casadinho = True) then
   begin
     txtCasado.Text:='Sim';
     chkCasado.Checked:=True;
   end
   else
     begin
       txtCasado.Text:='Não';
       chkCasado.Checked:=False;
     end;
end;

procedure TfmrRegistro.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
   ShowMessage('Obrigado por utilizar!');
end;

procedure TfmrRegistro.txtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

end;

procedure TfmrRegistro.txtNomeKeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TfmrRegistro.txtNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    txtControle.Text:=txtNome.Text;
end;

procedure TfmrRegistro.btnArmazenarClick(Sender: TObject);
begin
   nome:=txtNome.Text;
   Altura:=StrToFloat(txtAltura.Text);
   salario:=StrToFloat(txtSalario.Text);
   telefone:=txtTelefone.Text;
   controle:=nome;
   casado:=chkCasado.Checked;
   txtControle.Text:=controle;
    if (casado = True) then
   begin
     txtCasado.Text:='Sim';
   end
   else
     begin
       txtCasado.Text:='Não';
     end;

end;

procedure TfmrRegistro.btnLerClick(Sender: TObject);
begin
  txtNome.Text:=nome;
  txtAltura.Text:=Format('%0.1f', [Altura]);
  txtSalario.Text:=Format('%0.2f', [salario]);
  txtTelefone.Text:=telefone;
  txtControle.Text:=controle;

   if (casado = True) then
   begin
     txtCasado.Text:='Sim';
     chkCasado.Checked:=True;
   end
   else
     begin
       txtCasado.Text:='Não';
       chkCasado.Checked:=False;
     end;
end;

end.

