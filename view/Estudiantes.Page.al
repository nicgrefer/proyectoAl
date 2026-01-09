page 50102 "Lista de estudiantes"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Estudiantes;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Codigo"; Rec."Código estudiante") { }
                field("Nombre"; Rec."Nombre") { }
                field("Sexo"; Rec.Sexo) { }
                field("Dirección"; Rec."Dirección") { }
                field("Tlf"; Rec."Teléfono") { }
                field("Fecha de  matriculación"; Rec."Fecha de nacimiento") { }

            }
        }
    }
}