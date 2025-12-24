local slope_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

local peak_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.25},
	}
}

local long_peak_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 1.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 1.25},
	}
}

local slope_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -1.5,  0.5, -0.375, 0.5},
		{-0.5, -0.375, -1.25, 0.5, -0.25,  0.5},
		{-0.5, -0.25,  -1,    0.5, -0.125, 0.5},
		{-0.5, -0.125, -0.75, 0.5,  0,     0.5},
		{-0.5,  0,     -0.5,  0.5,  0.125, 0.5},
		{-0.5,  0.125, -0.25, 0.5,  0.25,  0.5},
		{-0.5,  0.25,   0,    0.5,  0.375, 0.5},
		{-0.5,  0.375,  0.25, 0.5,  0.5,   0.5},
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

local icorner_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, -1.5, -0.25, 0.5, 0.5},
		{-0.5, -0.5, 0.25, 1.5, 0.5, 0.5},
		{-0.5, -0.5, 0, 1.5, 0.375, 0.5},
		{-0.5, -0.5, -1.5, 0, 0.375, 0.5},
		{-0.5, -0.5, -1.5, 0.25, 0.25, 0.5},
		{-0.5, -0.5, -1.5, 0.5, 0.125, 0.5},
		{-0.5, -0.5, -1.5, 0.75, 0, 0.5},
		{-0.5, -0.5, -1.5, 1, -0.125, 0.5},
		{-0.5, -0.5, -1.5, 1.25, -0.25, 0.5},
		{-0.5, -0.5, -1.5, 1.5, -0.375, 0.5},
		{-0.5, -0.5, -0.25, 1.5, 0.25, 0.5},
		{-0.5, -0.5, -0.5, 1.5, 0.125, 0.5}, 
		{-0.5, -0.5, -0.75, 1.5, 0, 0.5},
		{-0.5, -0.5, -1, 1.5, -0.125, 0.5},
		{-0.5, -0.5, -1.25, 1.5, -0.25, 0.5},
	}
}

local ocorner_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5, 0.25, -0.25, 0.5, 0.5},
		{-0.5, -0.5, 0, 0, 0.375, 0.5},
		{-0.5, -0.5, -0.25, 0.25, 0.25, 0.5},
		{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5}, 
		{-0.5, -0.5, -0.75, 0.75, 0, 0.5}, 
		{-0.5, -0.5, -1, 1, -0.125, 0.5}, 
		{-0.5, -0.5, -1.25, 1.25, -0.25, 0.5}, 
		{-0.5, -0.5, -1.5, 1.5, -0.375, 0.5},
	}
}

local asphalt_slope = { --desc, color, img
	{"Grey", "grey"},
	{"Dark Grey", "dark_grey"},
	{"Red", "red"},
	{"Green", "green"},
--	{"Grey Round", "grey_round"},
--	{"Dark Grey Round", "dark_grey_round"},
}
for i in ipairs (asphalt_slope) do
	local desc = asphalt_slope[i][1]
	local color = asphalt_slope[i][2]


--Slope
core.register_node("myroofs:asphalt_shingle_"..color, {
	description = desc.." Asphalt Shingle",
	drawtype = "mesh",
	mesh = "twelve-twelve.obj",
	tiles = {"myroofs_asphalt_shingle_"..color..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})

--Peak
core.register_node("myroofs:asphalt_shingle_peak_"..color, {
	description = desc.." Asphalt Shingle Peak",
	drawtype = "mesh",
	mesh = "myroofs_peak.obj",
	tiles = {"myroofs_asphalt_shingle_"..color..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = peak_cbox,
	selection_box = peak_cbox
})

--Outside Corner
core.register_node("myroofs:asphalt_shingle_"..color.."_ocorner", {
	description = desc.." Asphalt Shingle Outside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-oc.obj",
	tiles = {"myroofs_asphalt_shingle_"..color..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})

--Inside Corner
core.register_node("myroofs:asphalt_shingle_"..color.."_icorner", {
	description = desc.." Asphalt Shingle Inside Corner",
	drawtype = "mesh",
	mesh = "twelve-twelve-ic.obj",
	tiles = {"myroofs_asphalt_shingle_"..color..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
end
local asphalt_lslope = { --desc, color, img
	{"Grey", "grey"},
	{"Dark Grey", "dark_grey"},
	{"Red", "red"},
	{"Green", "green"},
	{"Grey Round", "grey_round"},
	{"Dark Grey Round", "dark_grey_round"},
}
for i in ipairs (asphalt_lslope) do
	local desc = asphalt_lslope[i][1]
	local color = asphalt_lslope[i][2]

--Long slope
core.register_node("myroofs:asphalt_shingle_"..color.."_long", {
	description = desc.." Asphalt Shingle Long",
	drawtype = "mesh",
	mesh = "six-twelve_slope.obj",
	tiles = {"myroofs_asphalt_shingle_"..color..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})

--Long peak
core.register_node("myroofs:asphalt_shingle_"..color.."_long_peak", {
	description = desc.." Asphalt Shingle Long Peak",
	drawtype = "mesh",
	mesh = "myroofs_long_peak.obj",
	tiles = {"myroofs_asphalt_shingle_"..color..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = long_peak_cbox,
	selection_box = long_peak_cbox
})

--Long Inside Corner
core.register_node("myroofs:asphalt_shingle_"..color.."_long_icorner", {
	description = desc.." Asphalt Shingle Long Inside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-ic.obj",
	tiles = {"myroofs_asphalt_shingle_"..color..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = icorner_cbox_long,
	selection_box = icorner_cbox_long
})

--Long Outside Corner
core.register_node("myroofs:asphalt_shingle_"..color.."_long_ocorner", {
	description = desc.." Asphalt Shingle Long Outside Corner",
	drawtype = "mesh",
	mesh = "six-twelve_slope-oc.obj",
	tiles = {"myroofs_asphalt_shingle_"..color..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = ocorner_cbox_long,
	selection_box = ocorner_cbox_long
})

end

-----------------------------------------------------------------------------
--Crafts
-----------------------------------------------------------------------------
local craft_slope = { --desc, color, img
	{"Grey", "grey"},
	{"Dark Grey", "dark_grey"},
	{"Red", "red"},
	{"Green", "green"},
--	{"Grey Round", "grey_round"},
--	{"Dark Grey Round", "dark_grey_round"},
}
for i in ipairs (craft_slope) do
	local desc = craft_slope[i][1]
	local color = craft_slope[i][2]

--Slope
core.register_craft({
	output = "myroofs:asphalt_shingle_"..color.." 2",
	recipe = {
		{"", "",""},
		{"", "","myroofs:asphalt_shingle_"..color.."_bundle"},
		{"", "myroofs:asphalt_shingle_"..color.."_bundle","myroofs:asphalt_shingle_"..color.."_bundle"},
	}
})

--Inside Corner
core.register_craft({
	output = "myroofs:asphalt_shingle_"..color.."_icorner 3",
	recipe = {
		{"", "",""},
		{"myroofs:asphalt_shingle_"..color.."_bundle", "",""},
		{"myroofs:asphalt_shingle_"..color.."_bundle", "myroofs:asphalt_shingle_"..color.."_bundle",""},
	}
})
--Outside Corner
core.register_craft({
	output = "myroofs:asphalt_shingle_"..color.."_ocorner 3",
	recipe = {
		{"", "", ""},
		{"", "myroofs:asphalt_shingle_"..color.."_bundle", ""},
		{"myroofs:asphalt_shingle_"..color.."_bundle", "", "myroofs:asphalt_shingle_"..color.."_bundle"},
	}
})
end

local craft_lslope = { --desc, color, img
	{"Grey", "grey"},
	{"Dark Grey", "dark_grey"},
	{"Red", "red"},
	{"Green", "green"},
	{"Grey Round", "grey_round"},
	{"Dark Grey Round", "dark_grey_round"},
}
for i in ipairs (craft_lslope) do
	local desc = craft_lslope[i][1]
	local color = craft_lslope[i][2]

--Long Slope
core.register_craft({
	output = "myroofs:asphalt_shingle_"..color.."_long 3",
	recipe = {
		{"", "",""},
		{"", "myroofs:asphalt_shingle_"..color.."_bundle","myroofs:asphalt_shingle_"..color.."_bundle"},
		{"myroofs:asphalt_shingle_"..color.."_bundle", "myroofs:asphalt_shingle_"..color.."_bundle","myroofs:asphalt_shingle_"..color.."_bundle"},
	}
})
--Long Inside Corner
core.register_craft({
	output = "myroofs:asphalt_shingle_"..color.."_long_icorner 2",
	recipe = {
		{"", "","myroofs:asphalt_shingle_"..color.."_bundle"},
		{"", "","myroofs:asphalt_shingle_"..color.."_bundle"},
		{"myroofs:asphalt_shingle_"..color.."_bundle", "myroofs:asphalt_shingle_"..color.."_bundle","myroofs:asphalt_shingle_"..color.."_bundle"},
	}
})
--Long Outside Corner
core.register_craft({
	output = "myroofs:asphalt_shingle_"..color.."_long_ocorner 2",
	recipe = {
		{"","myroofs:asphalt_shingle_"..color.."_bundle", ""},
		{"", "myroofs:asphalt_shingle_"..color.."_bundle", ""},
		{"myroofs:asphalt_shingle_"..color.."_bundle", "myroofs:asphalt_shingle_"..color.."_bundle","myroofs:asphalt_shingle_"..color.."_bundle"},
	}
})

end
