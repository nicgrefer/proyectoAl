table 50100 Cursos
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Código curso"; Code[3]) { }
        field(2; "Nombre curso"; Text[30]) { }
        field(3; "Desc. curso"; Text[30]) { }
        field(4; "Créditos"; Integer) { }
        field(5; "Tarifa"; Decimal) { }
    }

    keys
    {
        key(pk; "Código curso")
        {
            Clustered = true;
        }

        key(nomCurs; "Nombre curso") { }
        key(descCurso; "Desc. curso") { }

    }

}