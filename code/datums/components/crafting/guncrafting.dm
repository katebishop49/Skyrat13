// PARTS //
/obj/item/weaponcrafting
	icon = 'icons/obj/improvised.dmi'

/obj/item/weaponcrafting/stock
	name = "rifle stock"
	desc = "A classic rifle stock that doubles as a grip, roughly carved out of wood."
	custom_materials = list(/datum/material/wood = MINERAL_MATERIAL_AMOUNT * 6)
	icon_state = "riflestock"

/obj/item/weaponcrafting/durathread_string
	name = "durathread string"
	desc = "A long piece of durathread with some resemblance to cable coil."
	icon_state = "durastring"

////////////////////////////////
// IMPROVISED WEAPON PARTS//
////////////////////////////////

/obj/item/weaponcrafting/improvised_parts
	name = "Debug Improvised Gun Part"
	desc = "A badly coded gun part. You should report coders if you see this."
	icon = 'icons/obj/guns/gun_parts.dmi'
	icon_state = "palette"

// RECEIVERS

/obj/item/weaponcrafting/improvised_parts/rifle_receiver
	name = "rifle receiver"
	desc = "A crudely constructed receiver to create an improvised bolt-action breechloaded rifle."  // removed some text implying that the item had more uses than it does
	icon_state = "receiver_rifle"
	w_class = WEIGHT_CLASS_SMALL


/obj/item/weaponcrafting/improvised_parts/shotgun_receiver
	name = "shotgun reciever"
	desc = "An improvised receiver to create a break-action breechloaded shotgun."  // removed some text implying that the item had more uses than it does
	icon_state = "receiver_shotgun"
	w_class = WEIGHT_CLASS_SMALL

// MISC

/obj/item/weaponcrafting/improvised_parts/trigger_assembly
	name = "firearm trigger assembly"
	desc = "A modular trigger assembly with a firing pin, this can be used to make a whole bunch of improvised firearss."
	icon_state = "trigger_assembly"
	w_class = WEIGHT_CLASS_SMALL

/obj/item/weaponcrafting/improvised_parts/wooden_body
	name = "wooden firearm body"
	desc = "A crudely fashioned wooden body to help keep higher calibre improvised weapons from blowing themselves apart."
	icon_state = "wooden_body"

// BARRELS	

/obj/item/weaponcrafting/improvised_parts/barrel_rifle	
	name = "rifle barrel"	
	desc = "A pipe with a diameter just the right size to fire 7.62 rounds out of."	
	icon_state = "barrel_rifle"	

/obj/item/weaponcrafting/improvised_parts/barrel_shotgun	
	name = "shotgun barrel"	
	desc = "A twenty bore shotgun barrel."	
	icon_state = "barrel_shotgun"	

/obj/item/weaponcrafting/improvised_parts/barrel_pistol	
	name = "pistol barrel"	
	desc = "A pipe with a small diameter and some holes finely cut into it. It fits .32 ACP bullets. Probably."	
	icon_state = "barrel_pistol"	
	w_class = WEIGHT_CLASS_SMALL
