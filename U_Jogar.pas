unit U_Jogar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TF_Jogar = class(TForm)
    TImage_Back: TImage;
    procedure FormCreate(Sender: TObject);
    procedure TImage_BackClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Jogar: TF_Jogar;

implementation

{$R *.dfm}

uses U_Menu, U_Publica;

procedure TF_Jogar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Try
//        CloseOpenForms_Public('F_Jogar');

     Finally

     End;
end;

procedure TF_Jogar.FormCreate(Sender: TObject);
begin
     Try

     Finally

     End;
end;

procedure TF_Jogar.TImage_BackClick(Sender: TObject);
begin
     Try
//        F_Menu.Visible  := True;
        F_Jogar.Close;

     Finally

     End;
end;

end.
