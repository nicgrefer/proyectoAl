page 50106 "Lista de clases"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Clases;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Cod. curso"; Rec."Código curso") { }
                field("Sección"; Rec."Sección") { }
                field("Día"; Rec."Día") { }
                field("Hora"; Rec."Hora") { }
                field("Edificio"; Rec."Edificio") { }
                field("Despacho"; Rec."Despacho") { }
            }
        }
    }
}