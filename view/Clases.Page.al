page 50106 "Lista de clases"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Clases;
    Caption = 'Lista de clases';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Código curso"; Rec."Código curso")
                {
                    ApplicationArea = All;
                }
                field("Sección"; Rec."Sección")
                {
                    ApplicationArea = All;
                }
                field("Día"; Rec."Día")
                {
                    ApplicationArea = All;
                }
                field("Hora"; Rec."Hora")
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
                field("Código profesor"; Rec."Código profesor")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}