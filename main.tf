
## Provedor al que realizara la conexion
provider "google" {
   #credentials = "credentials -example"
}

module "create_groups_country" {
	source = "./modules/groups-projects/"
	display_name = var.display_name_country
	parent = var.parent
}

module "create_groups_business" {
	source = "./modules/groups-projects/"
	display_name = var.display_name_business
	parent = module.create_groups_country.name_folder
}

module "create_groups_environment" {
	source = "./modules/groups-projects/"
	display_name = var.display_name_environment
	parent = module.create_groups_business.name_folder
}