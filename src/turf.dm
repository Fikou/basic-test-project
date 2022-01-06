/turf/floor
    icon = 'icons/turfs.dmi'
    icon_state = "floor"

/turf/floor/super/New(loc)
	. = ..()
	color = "#ff0000"
	layer++
	transform = transform.Scale(5)

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