page 50105 "Lista del claustro"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Clautro;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Codigo profesor"; Rec."Código profesor") { }
                field("Nombre"; Rec.Nombre) { }
                field("Direcíon"; Rec."Dirección") { }
                field("Nº de ayudantes"; Rec."Num aydantes") { }
                field("Sueldo"; Rec.Sueldo) { }
            }
        }
    }
}