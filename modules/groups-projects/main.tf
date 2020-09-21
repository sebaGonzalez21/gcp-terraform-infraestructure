### RECURSO 
# Top-level folder under an organization.
# invocacion de la variable (display_name)
resource "google_folder" "organization_folder" {
  for_each = var.display_name_parent 
  display_name = each.value.display_name #nombre de la carpeta e iteracion
  parent       = each.value.parent # ruta en la que se aloja, lista con ubicacion de cada una de las carpetas
}

resource "google_folder" "organization_sub_folder" { 
  for_each = google_folder.organization_folder
  parent = each.value.name #ruta en la que se aloja, lista con ubicacion de cada una de las carpetas
  for_each = google_folder.organization_folder.name_subfolder
  display_name = each.value.display_name #nombre de la sub-carpeta
}

