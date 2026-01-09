page 50103 "Lista de departamentos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departamentos;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Codigo"; Rec."Código dept.") { }
                field("Edificio"; Rec.Edificio) { }
                field("Despacho"; Rec.Despacho) { }

            }
        }
    }
}