table 50104 "Matrículas"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo curso"; Code[3]) { }
        field(2; "Sección"; Text[2]) { }
        field(3; "Código estudiante"; Code[3]) { }
        field(4; "Fecha matricula"; Date) { }
        field(5; "Hora matricula"; Time) { }

    }

    keys
    {
        key(pk; "Codigo curso")
        {
            Clustered = true;
        }
    }
}