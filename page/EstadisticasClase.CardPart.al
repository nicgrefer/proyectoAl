page 50115 "Estadísticas clase"
{
    PageType = CardPart;
    ApplicationArea = All;
    SourceTable = Clases;
    Caption = 'Estadísticas';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Estadísticas';
                field("Nº matrículas"; Rec."Nº matrículas")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de matrículas de la clase.';
                }
            }
        }
    }
}
