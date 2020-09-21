## Variables de inicializacion de main
variable display_name_country {
	type = map(object({
		display_name = string,
		parent = string,
		name_subfolder = object({
			display_name = string
		})
	}))
}

#variable display_name_sub_folder{
#	type = string
#}

variable google_credential { 
	type = string
}
