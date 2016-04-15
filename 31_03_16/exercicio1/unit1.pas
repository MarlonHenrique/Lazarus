unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmINSS }

  TfrmINSS = class(TForm)
    btnCalcular: TButton;
    btnLimpar: TButton;
    btnClose: TButton;
    txtSalarioBruto: TEdit;
    lblSalBruto: TLabel;
    lbldescINSS: TLabel;
    lblDesc: TLabel;
    lblSalLiqui: TLabel;
    lblLiq: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmINSS: TfrmINSS;
  salbruto, desc, liquido: Double;

implementation

{$R *.lfm}

{ TfrmINSS }

procedure TfrmINSS.btnCalcularClick(Sender: TObject);
begin
  salbruto:= StrToFloat(txtSalarioBruto.Text);
  desc:= salbruto * 0.11;
  liquido:= salbruto-desc;
  lblDesc.Caption:=Format('%0.2f', [desc]);
  lblLiq.Caption:=Format('%0.2f', [liquido]);
end;

procedure TfrmINSS.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmINSS.btnLimparClick(Sender: TObject);
begin
  txtSalarioBruto.Text:='';
  lblLiq.Caption:='0,00';
  lblDesc.Caption:='0,00';
end;

end.

