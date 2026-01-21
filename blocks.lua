local asphalt_shingles = { --desc, color, dye
	{"Grey",            "grey",           "grey"},
	{"Dark Grey",       "dark_grey",      "dark_grey"},
	{"Red",             "red",            "red"},
	{"Green",           "green",          "green"},
}
for i in ipairs (asphalt_shingles) do
	local desc = asphalt_shingles[i][1]
	local color = asphalt_shingles[i][2]
	local dyes = asphalt_shingles[i][3]


if core.get_modpath("mystreets") then
	core.register_craft({
		output = "myroofs:asphalt_shingle_"..color.."_bundle 4",
		recipe = {
			{"default:gravel", "mystreets:tar","dye:"..dyes},
			{"", "",""},
			{"", "",""},
		}
	})
end

-- Asphalt Bundle
core.register_node("myroofs:asphalt_shingle_"..color.."_bundle", {
	description = desc.." Asphalt Shingle bundle",
	drawtype = "normal",
	tiles = {"myroofs_asphalt_shingle_"..color..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
})
--Craft
core.register_craft({
	output = "myroofs:asphalt_shingle_"..color.."_bundle 4",
	recipe = {
		{"default:gravel", "default:coal_lump","default:gravel"},
		{"default:coal_lump", "default:coal_lump","default:coal_lump"},
		{"default:gravel", "default:gravel","dye:"..dyes},
	}
})

if core.get_modpath("lucky_block") then
	lucky_block:add_blocks({
		{"dro", {"myroofs:asphalt_shingle_"..color.."_bundle"}, 15},
	})
end
end

--Grey Round Asphalt
core.register_node("myroofs:asphalt_shingle_grey_round_bundle", {
	description = "Grey Round Asphalt Shingle bundle",
	drawtype = "normal",
	tiles = {"myroofs_asphalt_shingle_grey_round.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
--	on_place = core.rotate_node,
})
--Craft
core.register_craft({
	output = "myroofs:asphalt_shingle_grey_round_bundle 4",
	recipe = {
		{"", "myroofs:asphalt_shingle_grey_bundle",""},
		{"myroofs:asphalt_shingle_grey_bundle", "","myroofs:asphalt_shingle_grey_bundle"},
		{"", "myroofs:asphalt_shingle_grey_bundle",""},
	}
})
--Dark Grey Round Asphalt
core.register_node("myroofs:asphalt_shingle_dark_grey_round_bundle", {
	description = "Dark Grey Round Asphalt Shingle bundle",
	drawtype = "normal",
	tiles = {"myroofs_asphalt_shingle_dark_grey_round.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
})
core.register_craft({
	output = "myroofs:asphalt_shingle_dark_grey_round_bundle 4",
	recipe = {
		{"", "myroofs:asphalt_shingle_dark_grey_bundle",""},
		{"myroofs:asphalt_shingle_dark_grey_bundle", "","myroofs:asphalt_shingle_dark_grey_bundle"},
		{"", "myroofs:asphalt_shingle_dark_grey_bundle",""},
	}
})
--Dark straw
core.register_node("myroofs:straw_dark", {
	description = "Dark Straw",
	drawtype = "normal",
	tiles = {"myroofs_straw_dark.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
})
--Craft
core.register_craft({
	output = "myroofs:straw_dark 1",
	recipe = {
		{"farming:straw", "dye:black",""},
		{"", "",""},
		{"", "",""},
	}
})
--Reet
core.register_node("myroofs:reet", {
	description = "Reet",
	drawtype = "normal",
	tiles = {"myroofs_reet.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
})
--Craft
core.register_craft({
	output = "myroofs:reet 1",
	recipe = {
		{"farming:straw", "dye:brown",""},
		{"", "",""},
		{"", "",""},
	}
})
core.register_node("myroofs:copper_roofing", {
	description = "Copper Roofing",
	drawtype = "normal",
	tiles = {"myroofs_copper.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
})
core.register_node("myroofs:green_copper_roofing", {
	description = "Green Copper Roofing",
	drawtype = "normal",
	tiles = {"myroofs_green_copper.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
})
core.register_craft({
	output = "myroofs:copper_roofing",
	recipe = {
		{"default:copper_ingot", "",""},
		{"default:copper_ingot", "",""},
		{"default:copper_ingot", "",""},
	}
})
core.register_craft({
	output = "myroofs:green_copper_roofing",
	recipe = {
		{"default:copper_ingot", "dye:green",""},
		{"default:copper_ingot", "",""},
		{"default:copper_ingot", "",""},
	}
})

if core.get_modpath("lucky_block") then
	lucky_block:add_blocks({
		{"dro", {"myroofs:asphalt_shingle_grey_round_bundle"}, 15},
		{"dro", {"myroofs:asphalt_shingle_dark_grey_round_bundle"}, 15},
		{"dro", {"myroofs:straw_dark"}, 15},
		{"dro", {"myroofs:reet"}, 15},
		{"dro", {"myroofs:copper_roofing"}, 15},
		{"dro", {"myroofs:green_copper_roofing"}, 15},
	})
end
