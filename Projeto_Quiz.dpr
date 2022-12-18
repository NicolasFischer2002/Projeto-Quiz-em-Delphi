program Projeto_Quiz;

uses
  Vcl.Forms,
  U_Login in 'U_Login.pas' {F_Login},
  U_Publica in 'U_Publica.pas',
  U_Menu in 'U_Menu.pas' {F_Menu},
  U_Credits in 'U_Credits.pas' {F_Credits},
  U_Jogar in 'U_Jogar.pas' {F_Jogar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Login, F_Login);
  Application.Run;
end.
