unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmPadaria }

  TfrmPadaria = class(TForm)
    btnCalcular: TButton;
    btnLimpar: TButton;
    txtPao: TEdit;
    txtLeite: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    LblTotal: TLabel;
    lblLeite: TLabel;
    lblPao: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmPadaria: TfrmPadaria;
  pao, leite, total:Double;

implementation

{$R *.lfm}

{ TfrmPadaria }

procedure TfrmPadaria.btnLimparClick(Sender: TObject);
begin
  txtLeite.Text:='';
  txtPao.Text:='';
  lblResultado.Caption:='0,00';
end;

procedure TfrmPadaria.btnCalcularClick(Sender: TObject);
begin
  pao:=StrToFloat(txtPao.Text);
  leite:=StrToFloat(txtLeite.Text);
  total:=(pao*0.25)+(leite*1.40);
  lblResultado.Caption:=Format('%0.2f', [total]);
end;

end.

