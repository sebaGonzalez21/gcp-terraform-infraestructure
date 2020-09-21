## VARIABLES
# creacion de parametro de entrada tipo lista
## Variables de inicializacion de main
variable display_name_parent {
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