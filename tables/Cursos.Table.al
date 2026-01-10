table 50100 Cursos
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Código curso"; Code[3])
        {
            trigger OnValidate()
            begin
                if "Código curso" = ' ' then
                    Error('El código del curso no puede estar vacío.');
                Rec."Código curso" := UpperCase(Rec."Código curso");
            end;

        }
        field(2; "Nombre curso"; Text[30])
        {
            trigger OnValidate()
            begin
                if "Nombre curso" = ' ' then
                    Error('El nombre del curso no puede estar vacío.');
            end;
        }
        field(3; "Desc. curso"; Text[30]) { }
        field(4; "Créditos"; Integer) { InitValue = 0; }
        field(5; "Tarifa"; Decimal) { DecimalPlaces = 2; }
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