unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmRegistro }

  TfrmRegistro = class(TForm)
    btnArmazenar: TButton;
    btnLer: TButton;
    btnLimpar: TButton;
    txtMatricula: TEdit;
    txtNome: TEdit;
    txtEndereco: TEdit;
    txtIdade: TEdit;
    txtNasc: TEdit;
    lblMatricula: TLabel;
    lblNome: TLabel;
    lblEndereco: TLabel;
    lblIdade: TLabel;
    lblDataNasc: TLabel;
    lblCadastrodeFun: TLabel;
    procedure btnArmazenarClick(Sender: TObject);
    procedure btnLerClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure txtMatriculaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblCadastrodeFunClick(Sender: TObject);
    procedure lblMatriculaClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmRegistro: TfrmRegistro;
  nome, endereco : string;
  matricula, idade: integer;
  nasc : TDateTime;

implementation

{$R *.lfm}

{ TfrmRegistro }

procedure TfrmRegistro.lblCadastrodeFunClick(Sender: TObject);
begin

end;

procedure TfrmRegistro.btnLerClick(Sender: TObject);
begin
  txtNome.Text:=nome;
  txtNasc.Text:=DateToStr(nasc);
  txtIdade.Text:=IntToStr(idade);
  txtEndereco.Text:=endereco;
  txtMatricula.Text:=IntToStr(matricula);
end;

procedure TfrmRegistro.btnLimparClick(Sender: TObject);
begin
  txtEndereco.Text:='';
  txtIdade.Text:='';
  txtMatricula.Text:='';
  txtNasc.Text:='';
  txtNome.Text:='';
end;

procedure TfrmRegistro.btnArmazenarClick(Sender: TObject);
begin
  matricula:=StrToInt(txtMatricula.Text);
  nasc:=StrToDate(txtNasc.Text);
  endereco:=txtEndereco.Text;
  idade:=StrToInt(txtIdade.Text);
  nome:=txtNome.Text;
end;

procedure TfrmRegistro.txtMatriculaChange(Sender: TObject);
begin

end;

procedure TfrmRegistro.FormCreate(Sender: TObject);
begin

end;

procedure TfrmRegistro.lblMatriculaClick(Sender: TObject);
begin

end;

end.

