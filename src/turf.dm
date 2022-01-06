/turf/floor
    icon = 'icons/turfs.dmi'
    icon_state = "floor"

/turf/floor/super/New(loc)
	. = ..()
	color = "#ff0000"
	layer++
	transform = transform.Translate(10, 10)

/turf/floor/super2/New(loc)
	. = ..()
	color = "#00ff00"
	layer++
	transform = transform.Scale(3)

/turf/floor/super3/New(loc)
	. = ..()
	color = "#0000ff"
	layer++
	transform = transform.Turn(70)


/turf/floor/super4/New(loc)
	. = ..()
	color = "#ffff00"
	layer++
	transform = transform.Scale(2, 4)

/turf/floor/super5/New(loc)
	. = ..()
	color = "#ff00ff"
	layer++
	transform = transform.Translate(20, 5)

/turf/floor/super6/New(loc)
	. = ..()
	color = "#00ffff"
	layer++
	transform = transform.Turn(-70)

/turf/wall
    icon = 'icons/turfs.dmi'
    icon_state = "wall"
    density = 1

/turf/floor/Click(location, control, params)
	var/list/modifiers = params2list(params)
	var/x_slashed = text2num(modifiers["icon-x"])
	if(!isnull(modifiers["vis-x"]))
		x_slashed = text2num(modifiers["vis-x"])
	var/y_slashed = text2num(modifiers["icon-y"])
	if(!isnull(modifiers["vis-y"]))
		y_slashed = text2num(modifiers["vis-y"])
	new /obj/slash(src, src, x_slashed, y_slashed)

/obj/slash
	icon = 'icons/obj.dmi'
	icon_state = "slash"

/obj/slash/New(loc, atom/target, x_slashed, y_slashed)
	. = ..()
	pixel_x = x_slashed + target.pixel_x - world.icon_size/2
	pixel_y = y_slashed + target.pixel_y - world.icon_size/2