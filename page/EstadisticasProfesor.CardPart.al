page 50117 "Estadísticas profesor"
{
    PageType = CardPart;
    ApplicationArea = All;
    SourceTable = Claustro;
    Caption = 'Estadísticas';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Estadísticas';
                field("Nº ayudantes"; Rec."Num ayudantes")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de ayudantes del profesor.';
                    DrillDownPageId = "Lista de personal";
                }
                field("Nº clases"; Rec."Nº clases")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de clases que imparte.';
                    DrillDownPageId = "Lista de clases";
                }
            }
        }
    }
}
