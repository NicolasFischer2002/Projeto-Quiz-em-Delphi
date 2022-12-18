unit U_Publica;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

//-------------------------------------------------------------------------------------

// Instru��es para declara��es de vari�veis

// Vari�veis p�blicas: Nome + _ + Tipo + Publica, Exemplo: Contador_IPublica
// Fun��es e Procedures: Nome + _ + Public

//-------------------------------------------------------------------------------------

// Declara��o de Fun��es e Procedures

procedure CloseOpenForms_Public(CurrentFormName : String);


implementation

uses U_Login, U_Menu, U_Jogar, U_Credits;

procedure CloseOpenForms_Public(CurrentFormName : String);
begin
     Try
        if (Assigned(F_Menu)) and (F_Menu.Name <> CurrentFormName) then
         F_Menu.Close;

        if (Assigned(F_Jogar)) and (F_Jogar.Name <> CurrentFormName) then
         F_Jogar.Close;

        if (Assigned(F_Credits)) and (F_Credits.Name <> CurrentFormName) then
         F_Credits.Close;

     Finally
        F_Login.Close;
     End;
end;

end.
