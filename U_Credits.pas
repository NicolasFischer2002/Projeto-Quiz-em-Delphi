unit U_Credits;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TF_Credits = class(TForm)
    MediaPlayer_Credits: TMediaPlayer;
    TImage_Title: TImage;
    TImage_Dev: TImage;
    TImage_NicolasFischer: TImage;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Credits: TF_Credits;

implementation

{$R *.dfm}

uses U_Publica, U_Login, U_Menu;

procedure TF_Credits.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Try
        MediaPlayer_Credits.Close;
        F_Login.MediaPlayer_Login.Play;
//        CloseOpenForms_Public('F_Credits');

     Finally

     End;
end;

procedure TF_Credits.FormCreate(Sender: TObject);
begin
     Try
        // Fazer o texto se mexer assim como nas aberturas de Stas Wars

        MediaPlayer_Credits.Visible  := False;
        MediaPlayer_Credits.FileName := ('Sons/StarWarsCreditos.mp3');
        MediaPlayer_Credits.Wait     := True; // Não sei para que serve
        MediaPlayer_Credits.Open;
        MediaPlayer_Credits.Play;
     Finally

     End;
end;

end.
