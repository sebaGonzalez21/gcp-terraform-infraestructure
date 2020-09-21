
## Provedor al que realizara la conexion
## GOOGLE FOLDER
provider "google" {
   credentials = var.google_credential
}

module "create_groups_country" {
	source = "./modules/groups-projects/"
	display_name_parent = var.display_name_country
}

#module "create_groups_environment" {
#	source = "./modules/groups-projects/"
#	display_name = var.display_name_environment
#	parent = module.create_groups_business.name_folder
#}