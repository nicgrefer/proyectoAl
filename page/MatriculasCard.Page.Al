page 50104 "Ficha Matriculas"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Matrículas";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                    Caption = 'Código curso';
                }
                field("Sección"; Rec."Sección")
                {
                    ApplicationArea = All;
                    Caption = 'Nº de sección';
                }
                field("Código estudiante"; Rec."Código estudiante")
                {
                    ApplicationArea = All;
                    Caption = 'Código estudiante';
                }
                field("Fecha matricula"; Rec."Fecha matricula")
                {
                    ApplicationArea = All;
                    Caption = 'Fecha matricula';
                }
                field("Hora matricula"; Rec."Hora matricula")
                {
                    ApplicationArea = All;
                    Caption = 'Hora matricula';
                }
            }
        }
        area(FactBoxes)
        {

        }
    }
}