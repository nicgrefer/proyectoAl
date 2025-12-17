table 50103 Estudiantes
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Código estudiante"; Code[3]) { }
        field(2; "Nombre"; Text[30]) { }
        field(3; "Sexo"; Enum SexoEnum) { }
        field(4; "Dirección"; Text[50]) { }
        field(5; "Teléfono"; Text[9]) { }
        field(6; "Fecha de nacimiento"; Date) { }

    }

    keys
    {
        key(pk; "Código estudiante")
        {
            Clustered = true;
        }
        key(nombe; Nombre) { }
        key(direccion; Dirección) { }
        key(telefono; Teléfono) { }
    }

}