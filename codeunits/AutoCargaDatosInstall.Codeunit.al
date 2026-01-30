codeunit 50101 "EDUCA Auto Data Install"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        CargarDatos();
    end;

    local procedure CargarDatos()
    var
        Loader: Codeunit "Cargar Datos EDUCA1 Custom";
    begin
        Loader.CargarTodosLosDatosForzado();
    end;
}
