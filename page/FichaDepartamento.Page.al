page 50113 "Ficha departamento"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = Departamentos;
    Caption = 'Ficha departamento';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del departamento.';
                    Importance = Promoted;
                }
                field("Edificio"; Rec."Edificio")
                {
                    ApplicationArea = All;
                    ToolTip = 'Edificio donde se ubica.';
                    Importance = Promoted;
                }
                field("Despacho"; Rec."Despacho")
                {
                    ApplicationArea = All;
                    ToolTip = 'Número de despacho.';
                }
                field("Código director"; Rec."Código director")
                {
                    ApplicationArea = All;
                    ToolTip = 'Código del director.';
                    LookupPageId = "Lista del claustro";
                }
                field("Promedio tarifa"; Rec."Promedio tarifa")
                {
                    ApplicationArea = All;
                    ToolTip = 'Promedio de tarifa de laboratorio (calculado).';
                }
            }
        }
    }
}
