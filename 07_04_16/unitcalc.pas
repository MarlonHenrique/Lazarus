unit unitcalc;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfmrCalculadora }

  TfmrCalculadora = class(TForm)
    btnUm: TButton;
    btnCLS: TButton;
    btnSoma: TButton;
    btnSub: TButton;
    btnZero: TButton;
    btnMult: TButton;
    btnDiv: TButton;
    btnPonto: TButton;
    btnIgual: TButton;
    btnFechar: TButton;
    btnDois: TButton;
    btnTres: TButton;
    btnQuatro: TButton;
    btnCinco: TButton;
    btnSeis: TButton;
    btnSete: TButton;
    btnOito: TButton;
    btnNove: TButton;
    txtTela: TEdit;
    procedure btnCLSClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnDoisClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnNoveClick(Sender: TObject);
    procedure btnOitoClick(Sender: TObject);
    procedure btnPontoClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnTresClick(Sender: TObject);
    procedure btnQuatroClick(Sender: TObject);
    procedure btnCincoClick(Sender: TObject);
    procedure btnSeisClick(Sender: TObject);
    procedure btnSeteClick(Sender: TObject);
    procedure btnUmClick(Sender: TObject);
    procedure btnZeroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure txtTelaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fmrCalculadora: TfmrCalculadora;
  resultado, num1, num2 : Double;
  op, cont: Integer;

implementation

{$R *.lfm}

{ TfmrCalculadora }

procedure TfmrCalculadora.btnTresClick(Sender: TObject);
begin
  if (cont = 1) then
  begin
  txtTela.Text:='';
  txtTela.Text:=txtTela.Text+'3';
  cont := 0;
  end
  else
  begin
     txtTela.Text:=txtTela.Text+'3';
  end;
end;

procedure TfmrCalculadora.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfmrCalculadora.btnIgualClick(Sender: TObject);
begin
     num2:= StrToFloat(txtTela.Text);
     case op of
     0:begin
       ShowMessage('Não foi atribuido um operador');
       end;
     1:begin
       resultado:=num1+num2;
       end;
     2:begin
       resultado:=num1-num2;
       end;
     3:begin
       resultado:= num1*num2;
       end;
     4:begin
       resultado:=num1/num2;
       end;
     end;
     txtTela.Text:=format ('%0.2f',[resultado]);
     cont:=1;
end;

procedure TfmrCalculadora.btnMultClick(Sender: TObject);
begin
  num1 := StrToFloat(txtTela.Text);
  txtTela.Text:='';
  op:=3;
end;

procedure TfmrCalculadora.btnNoveClick(Sender: TObject);
begin
   if (cont = 1) then
  begin
  txtTela.Text:='';
  txtTela.Text:=txtTela.Text+'9';
  cont := 0;
  end
  else
  begin
     txtTela.Text:=txtTela.Text+'9';
  end;
end;

procedure TfmrCalculadora.btnOitoClick(Sender: TObject);
begin
    if (cont = 1) then
  begin
  txtTela.Text:='';
  txtTela.Text:=txtTela.Text+'8';
  cont := 0;
  end
  else
  begin
     txtTela.Text:=txtTela.Text+'8';
  end;
end;

procedure TfmrCalculadora.btnPontoClick(Sender: TObject);
begin
   if (cont = 1) then
  begin
  txtTela.Text:='';
  txtTela.Text:=txtTela.Text+',';
  cont := 0;
  end
  else
  begin
     txtTela.Text:=txtTela.Text+',';
  end;
end;

procedure TfmrCalculadora.btnSomaClick(Sender: TObject);
begin
  num1 := StrToFloat(txtTela.Text);
  txtTela.Text:='';
  op:=1;
end;

procedure TfmrCalculadora.btnSubClick(Sender: TObject);
begin
   num1 := StrToFloat(txtTela.Text);
  txtTela.Text:='';
  op:=2;
end;

procedure TfmrCalculadora.btnDoisClick(Sender: TObject);
begin
  if (cont = 1) then
  begin
  txtTela.Text:='';
  txtTela.Text:=txtTela.Text+'2';
  cont := 0;
  end
  else
  begin
     txtTela.Text:=txtTela.Text+'2';
  end;
end;

procedure TfmrCalculadora.btnCLSClick(Sender: TObject);
begin
  txtTela.Text:='';
  resultado:=0;
  num1:=0;
  num2:=0;
  op:=0;
end;

procedure TfmrCalculadora.btnDivClick(Sender: TObject);
begin
  num1 := StrToFloat(txtTela.Text);
  txtTela.Text:='';
  op:=4;
end;

procedure TfmrCalculadora.btnQuatroClick(Sender: TObject);
begin
   if (cont = 1) then
  begin
  txtTela.Text:='';
  txtTela.Text:=txtTela.Text+'4';
  cont := 0;
  end
  else
  begin
     txtTela.Text:=txtTela.Text+'4';
  end;
end;

procedure TfmrCalculadora.btnCincoClick(Sender: TObject);
begin
   if (cont = 1) then
   begin
   txtTela.Text:='';
   txtTela.Text:=txtTela.Text+'5';
   cont := 0;
   end
   else
   begin
      txtTela.Text:=txtTela.Text+'5';
   end;
end;

procedure TfmrCalculadora.btnSeisClick(Sender: TObject);
begin
   if (cont = 1) then
  begin
  txtTela.Text:='';
  txtTela.Text:=txtTela.Text+'6';
  cont := 0;
  end
  else
  begin
     txtTela.Text:=txtTela.Text+'6';
  end;
end;

procedure TfmrCalculadora.btnSeteClick(Sender: TObject);
begin
    if (cont = 1) then
  begin
  txtTela.Text:='';
  txtTela.Text:=txtTela.Text+'7';
  cont := 0;
  end
  else
  begin
     txtTela.Text:=txtTela.Text+'7';
  end;
end;

procedure TfmrCalculadora.btnUmClick(Sender: TObject);
begin
if (cont = 1) then
  begin
  txtTela.Text:='';
  txtTela.Text:=txtTela.Text+'1';
  cont := 0;
  end
  else
  begin
     txtTela.Text:=txtTela.Text+'1';
  end;
end;

procedure TfmrCalculadora.btnZeroClick(Sender: TObject);
begin
    if (cont = 1) then
    begin
    txtTela.Text:='';
    txtTela.Text:=txtTela.Text+'9';
    cont := 0;
    end
    else
    begin
       txtTela.Text:=txtTela.Text+'9';
    end;
end;

procedure TfmrCalculadora.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  ShowMessage('Dcow Produções!!');
end;

procedure TfmrCalculadora.FormCreate(Sender: TObject);
begin
  ShowMessage('Luzenk! Diamond Cow Produções! Todos os direitos reservados!' );
end;

procedure TfmrCalculadora.txtTelaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

end;

end.

