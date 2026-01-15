page 50105 "Lista del claustro"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Claustro;
    Caption = 'Lista del claustro';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                }
                field("Nombre"; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field("Dirección"; Rec."Dirección")
                {
                    ApplicationArea = All;
                }
                field("Fecha contrato"; Rec."Fecha contrato")
                {
                    ApplicationArea = All;
                }
                field("Nº de ayudantes"; Rec."Num ayudantes")
                {
                    ApplicationArea = All;
                }
                field("Sueldo"; Rec.Sueldo)
                {
                    ApplicationArea = All;
                }
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                }
                field("Nº clases"; Rec."Nº clases")
                {
                    ApplicationArea = All;
                }
            }
        }
        // Removed circular reference part to avoid compile error
    }

    actions
    {
        area(Processing)
        {
            action(CalcularCampos)
            {
                Caption = 'Calcular campos';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Rec.CalcFields("Num ayudantes", "Nº clases");
                end;
            }
        }
    }
}