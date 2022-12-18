unit U_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.MPlayer;

type
  TF_Login = class(TForm)
    TImage_Acesso: TImage;
    TImage_Usuario: TImage;
    Edt_Name: TEdit;
    Lbl_DigiteSeuNome: TLabel;
    Btn_Login: TButton;
    Lbl_Situation: TLabel;
    MediaPlayer_Login: TMediaPlayer;
    Timer: TTimer;
    procedure Edt_NameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Btn_LoginClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//-------------------------------------------------------------------------------------

// Instruções para declarações de variáveis

// Variáveis Privadas: Nome + _ + Private

//-------------------------------------------------------------------------------------
  private
    { Private declarations }
    TempoCorridoTimer_Private : Integer;

  public
    { Public declarations }
  end;

var
  F_Login: TF_Login;

implementation

{$R *.dfm}

uses U_Publica,U_Menu;


procedure TF_Login.Btn_LoginClick(Sender: TObject);
begin
     Try
//        MediaPlayer_Login.Close;

        F_Menu := TF_Menu.Create(Self);
        F_Menu.ShowModal;
     Finally

     End;
end;

procedure TF_Login.Edt_NameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   Str : String;
begin
     Try
        Str := Edt_Name.Text;

        if Length(Trim(Str)) >= 4 then
         begin
              TImage_Acesso.Picture.LoadFromFile('Img/Login/CadeadoAberto.png');
              Btn_Login.Enabled := True;

              Lbl_Situation.Enabled    := True;
              Lbl_Situation.Font.Color := clgreen;
              Lbl_Situation.Caption    := 'Acesso permitido';
         end
        else if Length(Trim(Str)) <= 3 then
         begin
              TImage_Acesso.Picture.LoadFromFile('Img/Login/CadeadoFechado.png');
              Btn_Login.Enabled := False;

              Lbl_Situation.Enabled    := True;
              Lbl_Situation.Font.Color := clred;
              Lbl_Situation.Caption    := 'Acesso negado';
         end;

     Finally

     End;
end;

procedure TF_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Try

     Finally

     End;
end;

procedure TF_Login.FormCreate(Sender: TObject);
begin
     Try
        // Colocar Timer para assim que terminar o tempo de execução da música
        // Começar a tocar de novo

//        TempoCorridoTimer_Private := 0;

        MediaPlayer_Login.Visible  := False;
        MediaPlayer_Login.FileName := ('Sons/MusicaTemaInicioLogin.mp3');
        MediaPlayer_Login.Wait     := True; // Não sei para que serve
        MediaPlayer_Login.Open;
        MediaPlayer_Login.Play;

        Btn_Login.Enabled      := False;
        Lbl_Situation.Caption  := '';

     Finally

     End;
end;

procedure TF_Login.TimerTimer(Sender: TObject);
begin
     Try
        Inc(TempoCorridoTimer_Private);

        if TempoCorridoTimer_Private = 238 then // Fica assim por enquanto
         begin
              MediaPlayer_Login.Close;
              MediaPlayer_Login.FileName := ('Sons/MusicaTemaInicioLogin.mp3');
              MediaPlayer_Login.Open;
              MediaPlayer_Login.Play;

              TempoCorridoTimer_Private := 0;
         end;

     Finally

     End;
end;

end.
