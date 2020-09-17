### RECURSO 
# Top-level folder under an organization.
# invocacion de la variable (display_name)
resource "google_folder" "organization_folder" {
  display_name = { for dn in var.display_name: dn => upper(dn.name) if dn != "" } #nombre de la carpeta e iteracion

  parent       = { for pt in var.parent: pt => upper(pt.name) if pt != "" } # ruta en la que se aloja, lista con ubicacion de cada una de las carpetas
}

