unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var a,b:integer;
begin
a:=StrToInt(Edit1.Text);
b:=StrToInt(Edit2.Text);
Edit3.Text:=IntToStr(a+b);

end;

procedure TForm1.Button2Click(Sender: TObject);
var a,b:integer;
begin
a:=StrToInt(Edit1.Text);
b:=StrToInt(Edit2.Text);
Edit3.Text:=IntToStr(a-b);
end;

procedure TForm1.Button3Click(Sender: TObject);
var a,b:integer;
begin
a:=StrToInt(Edit1.Text);
b:=StrToInt(Edit2.Text);
Edit3.Text:=IntToStr(a*b);
end;

procedure TForm1.Button4Click(Sender: TObject);
var a,b:integer;
begin
a:=StrToInt(Edit1.Text);
b:=StrToInt(Edit2.Text);
Edit3.Text:=FloatToStr(a/b);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  with CreateMessageDialog('Berk Çakar © 2017 ',mtInformation,[mbOK]) do
  begin
    try
      begin
        Caption := 'Hakkýnda';
        Font.Name:= 'Arial';
        Font.Size := 11;
        Position := poOwnerFormCenter;
        TButton(FindComponent('OK')).Caption := 'Tamam';
        ShowModal;
      end
    finally
      Free;
    end;
  end;
end;

end.








