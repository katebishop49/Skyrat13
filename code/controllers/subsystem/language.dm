SUBSYSTEM_DEF(language)
	name = "Language"
	init_order = INIT_ORDER_LANGUAGE
	flags = SS_NO_FIRE
	var/list/languages_by_name = list()

/datum/controller/subsystem/language/Initialize(timeofday)
	for(var/L in subtypesof(/datum/language))
		var/datum/language/language = L
		if(!initial(language.key))
			continue

		GLOB.all_languages += language

		var/datum/language/instance = new language

		GLOB.language_datum_instances[language] = instance

		languages_by_name[initial(language.name)] = new language

	return ..()

/datum/controller/subsystem/language/proc/AssignLanguage(mob/living/user, client/cli, spawn_effects, roundstart = FALSE, datum/job/job, silent = FALSE, mob/to_chat_target)
	var/list/my_lang = cli.prefs.language
	if(isnull(my_lang))
		return
	for(var/I in GLOB.all_languages)
		var/datum/language/L = I
		var/datum/language/cool = new L
		if(my_lang == cool.name)
			if(!cool.restricted || (cool.name in cli.prefs.pref_species.languagewhitelist))
				user.grant_language(cool.type)
				to_chat(user, "<span class='notice'>You are able to speak in [my_lang]. If you're actually good at it or not, is up to you.</span>")
			else
				for(var/datum/quirk/Q in cli.prefs.all_quirks)
					if(cool.name in Q.languagewhitelist)
						user.grant_language(cool)
						to_chat(user, "<span class='notice'>You are able to speak in [my_lang]. If you're actually good at it or not, is up to you.</span>")
						return
				to_chat(user, "<span class='warning'>Uh oh. [my_lang] is a restricted language, and couldn't be assigned!</span>")
				to_chat(user, "<span class='warning'>This probably shouldn't be happening. Scream at Bob on #main-dev.</span>")
		else
			continue
