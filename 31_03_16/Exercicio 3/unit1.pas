unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfmrIPVA }

  TfmrIPVA = class(TForm)
    btnCalc: TButton;
    btnLimpar: TButton;
    btnFechar: TButton;
    Label2: TLabel;
    lblTotal: TLabel;
    lblvalor: TLabel;
    txtNome: TEdit;
    Label1: TLabel;
    lblnome: TLabel;
    procedure btnCalcClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fmrIPVA: TfmrIPVA;
  valor, total : Double;

implementation

{$R *.lfm}

{ TfmrIPVA }

procedure TfmrIPVA.btnCalcClick(Sender: TObject);
begin
  valor:=StrToFloat(txtNome.Text);
  total:= valor * 0.03;
  txtNome.Enabled:=False;
  lblTotal.Caption:=Format('%0.2f',[total]);
end;

procedure TfmrIPVA.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfmrIPVA.btnLimparClick(Sender: TObject);
begin
  txtNome.Text:='';
  txtNome.Enabled:=True;
  lblTotal.Caption:='0,00';
  FocusControl(txtNome);
end;

procedure TfmrIPVA.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  ShowMessage('DCow Produções');
end;

end.

