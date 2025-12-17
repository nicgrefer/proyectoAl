table 50105 Clautro
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Código profesor"; Code[3]) { }
        field(2; Nombre; Text[30]) { }
        field(3; "Dirección"; Text[50]) { }
        field(4; "Fecha contrato"; Date) { }
        field(5; "Num aydantes"; Integer) { }
        field(6; Sueldo; Decimal) { }

    }

    keys
    {
        key(pk; "Código profesor")
        {
            Clustered = true;
        }
        key(datosPersonales; Nombre, Dirección) { }
        key(fechaContrato; "Fecha contrato") { }
        key(sueldo; Sueldo) { }

    }

}