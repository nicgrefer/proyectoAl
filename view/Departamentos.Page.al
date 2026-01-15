page 50107 "Lista de departamentos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departamentos;
    Caption = 'Lista de departamentos';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código dept."; Rec."Código dept.")
                {
                    ApplicationArea = All;
                }
                field("Edificio"; Rec."Edificio")
                {
                    ApplicationArea = All;
                }
                field("Despacho"; Rec."Despacho")
                {
                    ApplicationArea = All;
                }
                field("Código director"; Rec."Código director")
                {
                    ApplicationArea = All;
                }
                field("Promedio tarifa"; Rec."Promedio tarifa")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CalcularPromedio)
            {
                Caption = 'Calcular promedio tarifa';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Rec.CalcFields("Promedio tarifa");
                end;
            }
        }
    }
}