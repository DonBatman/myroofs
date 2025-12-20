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

local shingles = {
	{"black",		"Black"},
	{"green",		"Green"},
	{"red",			"Red"},
	}
for i in ipairs(shingles) do
	local col = shingles[i][1]
	local des = shingles[i][2]

--Slope
core.register_node("myroofs:shingle_roof_"..col, {
	description = des.." Shingle Roof",
	drawtype = "mesh",
	mesh = "myroofs_shingles.obj",
	tiles = {"myroofs_shingles_"..col..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})

--Outside Corner
core.register_node("myroofs:shingle_roof_ocorner_"..col, {
	description = des.." Shingle Roof Outside Corner",
	drawtype = "mesh",
	mesh = "myroofs_shingles_ocorner.obj",
	tiles = {"myroofs_shingles_"..col..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = ocorner_cbox,
	selection_box = ocorner_cbox
})

--Inner Corner
core.register_node("myroofs:shingle_roof_icorner_"..col, {
	description = des.." Shingle Roof Inside Corner",
	drawtype = "mesh",
	mesh = "myroofs_shingles_icorner.obj",
	tiles = {"myroofs_shingles_"..col..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
	collision_box = icorner_cbox,
	selection_box = icorner_cbox
})
--Eve Corner
core.register_node("myroofs:shingle_roof_eve_"..col, {
	description = des.." Shingle Roof eve",
	drawtype = "mesh",
	mesh = "myroofs_teja_eve.obj",
	tiles = {"myroofs_shingles_"..col..".png"},
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
	output = "myroofs:shingle_roof_"..col.." 3",
	recipe = {
		{"default:gravel","default:clay","dye:"..col},
		{"","",""},
		{"","",""},
	}
})

--Outside Corner
core.register_craft({
	output = "myroofs:shingle_roof_ocorner_"..col.." 3",
	recipe = {
		{"", "", ""},
		{"", "myroofs:shingle_roof_"..col, ""},
		{"myroofs:shingle_roof_"..col, "", "myroofs:shingle_roof_"..col},
	}
})



--Inside Corner
core.register_craft({
	output = "myroofs:shingle_roof_icorner_"..col.." 3",
	recipe = {
		{"","",""},
		{"myroofs:shingle_roof_"..col,"",""},
		{"myroofs:shingle_roof_"..col,"myroofs:shingle_roof_"..col,""},
	}
})
--Eve block
core.register_craft({
	output = "myroofs:shingle_roof_eve_"..col.." 3",
	recipe = {
		{"myroofs:shingle_roof_"..col,"myroofs:shingle_roof_"..col,""},
		{"myroofs:shingle_roof_"..col,"",""},
		{"","",""},
	}
})

end
