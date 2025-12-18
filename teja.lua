local slope_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

local icorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.5, -0.25, 0.5, 0, 0.5},
		{-0.5, -0.5, -0.5, 0.25, 0, 0.5},
		{-0.5, 0, -0.5, 0, 0.25, 0.5},
		{-0.5, 0, 0, 0.5, 0.25, 0.5},
		{-0.5, 0.25, 0.25, 0.5, 0.5, 0.5},
		{-0.5, 0.25, -0.5, -0.25, 0.5, 0.5},
	}
}

local ocorner_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5,   0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25,  0.25,     0, 0.5},
		{-0.5,     0,     0,     0,  0.25, 0.5},
		{-0.5,  0.25,  0.25, -0.25,   0.5, 0.5}
	}
}
local eve_cbox = {
	type = "fixed",
	fixed = {
			{-0.5, 0.25, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0, -0.25, 0.5, 0.25, 0.5},
			{-0.5, -0.25, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, 0.25, 0.5, -0.25, 0.5},
	}
}


--Slope
core.register_node("myroofs:teja_roof", {
	description = "Teja Roof",
	drawtype = "mesh",
	mesh = "myroofs_teja.obj",
	tiles = {"myroofs_teja.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})

--Outside Corner
core.register_node("myroofs:teja_roof_ocorner", {
	description = "Teja Roof Outside Corner",
	drawtype = "mesh",
	mesh = "myroofs_teja_ocorner.obj",
	tiles = {"myroofs_teja.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})

--Inner Corner
core.register_node("myroofs:teja_roof_icorner", {
	description = "Teja Roof Inside Corner",
	drawtype = "mesh",
	mesh = "myroofs_teja_icorner.obj",
	tiles = {"myroofs_teja.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--Eve Corner
core.register_node("myroofs:teja_roof_eve", {
	description = "Teja Roof eve",
	drawtype = "mesh",
	mesh = "myroofs_teja_eve.obj",
	tiles = {"myroofs_teja.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = eve_cbox,
	selection_box = eve_cbox
})

------------------------------------------------------------------------------------
--Crafts
------------------------------------------------------------------------------------

--Slope
core.register_craft({
	output = "myroofs:teja_roof 6",
	recipe = {
		{"","",""},
		{"","","default:brick"},
		{"","default:brick","default:brick"},
	}
})

--Outside Corner
core.register_craft({
	output = "myroofs:teja_roof_ocorner 5",
	recipe = {
		{"", "", ""},
		{"", "default:brick", ""},
		{"default:brick", "", "default:brick"},
	}
})



--Inside Corner
core.register_craft({
	output = "myroofs:teja_roof_icorner 8",
	recipe = {
		{"","",""},
		{"default:brick","",""},
		{"default:brick","default:brick",""},
	}
})

