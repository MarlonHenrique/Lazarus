unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmLoja }

  TfrmLoja = class(TForm)
    btnCalcular: TButton;
    btnLimpar: TButton;
    txtValor: TEdit;
    txtNum: TEdit;
    lblValor: TLabel;
    lblNum: TLabel;
    lblPrest: TLabel;
    lblTotal: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure txtValorChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmLoja: TfrmLoja;
  valor, total :Double;
  parcelas : integer;

implementation

{$R *.lfm}

{ TfrmLoja }

procedure TfrmLoja.btnCalcularClick(Sender: TObject);
begin
  valor :=StrToFloat(txtValor.Text);
  parcelas := StrToInt(txtNum.Text);
  if( parcelas>8) then
      begin
         txtNum.Text:='Número invalido';
         parcelas := 0;
      end
     else
         begin
          total := valor / parcelas;
          lblTotal.Caption:= Format('%0.2f', [total]);

          end;

end;

procedure TfrmLoja.btnLimparClick(Sender: TObject);
begin
  txtNum.Text:='';
  txtValor.Text:='';
  lblTotal.Caption:='0,00';
end;

procedure TfrmLoja.txtValorChange(Sender: TObject);
begin

end;

end.

