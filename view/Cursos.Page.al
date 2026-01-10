page 50104 "Lista de cursos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Cursos;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Codifo"; Rec."Código curso") { }
                field("Nombre"; Rec."Nombre curso") { }
                field("Descripción"; Rec."Desc. curso") { }
                field("Tarifa"; Rec.Tarifa) { }
            }
        }
    }
}