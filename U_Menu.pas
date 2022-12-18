unit U_Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TF_Menu = class(TForm)
    TImage_Menu: TImage;
    Btn_PlayTheGame: TButton;
    TImage_PlayTheGame: TImage;
    Btn_CreateQuiz: TButton;
    TImage_CreateQuiz: TImage;
    Btn_EditQuiz: TButton;
    TImage_EditQuiz: TImage;
    Btn_Credits: TButton;
    Pnl_bottom: TPanel;
    TImage_Credits: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_CreditsClick(Sender: TObject);
    procedure Btn_PlayTheGameClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
//-------------------------------------------------------------------------------------

// Instruções para declarações de variáveis

// Variáveis Privadas: Nome + _ + Private

//-------------------------------------------------------------------------------------
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Menu: TF_Menu;

implementation

{$R *.dfm}

uses U_Publica, U_Login, U_Credits, U_Jogar;


procedure TF_Menu.Btn_CreditsClick(Sender: TObject);
begin
     Try
        F_Login.MediaPlayer_Login.Stop;

        F_Credits := TF_Credits.Create(Self);
        F_Credits.AutoScroll := True;
        F_Credits.ShowModal;

     Finally

     End;
end;

procedure TF_Menu.Btn_PlayTheGameClick(Sender: TObject);
begin
     Try
        F_Jogar := TF_Jogar.Create(Self);
        F_Jogar.ShowModal;

     Finally

     End;
end;

procedure TF_Menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Try
        CloseOpenForms_Public('F_Menu');

     Finally

     End;
end;

procedure TF_Menu.FormCreate(Sender: TObject);
begin
     Try
        F_Login.Visible := False;

     Finally

     End;
end;

end.
