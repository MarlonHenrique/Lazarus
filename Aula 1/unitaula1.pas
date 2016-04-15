unit unitaula1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmPrimeiroprograma }

  TfrmPrimeiroprograma = class(TForm)
    btnLimpar: TButton;
    btnPreencher: TButton;
    txtCaixa: TEdit;
    lblLabel1: TLabel;
    procedure btnLimparClick(Sender: TObject);
    procedure btnPreencherClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmPrimeiroprograma: TfrmPrimeiroprograma;

implementation

{$R *.lfm}

{ TfrmPrimeiroprograma }

procedure TfrmPrimeiroprograma.btnLimparClick(Sender: TObject);
begin
  txtCaixa.Text:='';
end;

procedure TfrmPrimeiroprograma.btnPreencherClick(Sender: TObject);
begin
   txtCaixa.Text:='Limpar caixa';
end;

end.

