/obj/structure/girder
	icon = 'modular_skyrat/icons/eris/obj/structures.dmi'

/obj/structure/girder/Initialize()
	. = ..()
	if(length(canSmoothWith))
		canSmoothWith |= (typesof(/obj/machinery/door) - typesof(/obj/machinery/door/window) - typesof(/obj/machinery/door/firedoor))
