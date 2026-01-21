--Chimney
core.register_node("myroofs:brick_chimney", {
		description = "Brick Chimney",
		tiles = {
			"default_brick.png",
			},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.3125},
			{0.3125, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.3125, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.3125, 0.5, 0.5},
		}
	}
})
--Chimney
core.register_node("myroofs:stone_chimney", {
		description = "Stone Brick Chimney",
		tiles = {
			"default_stone_brick.png",
			},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.3125},
			{0.3125, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.3125, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.3125, 0.5, 0.5},
		}
	}
})
--Chimney Top
core.register_node("myroofs:chimney_top", {
		description = "Chimney Top",
		tiles = {
			"default_stone_brick.png",
			},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5625, 0.5625, -0.25, -0.3125},
			{0.3125, -0.5, -0.5625, 0.5625, -0.25, 0.5625},
			{-0.5625, -0.5, 0.3125, 0.5625, -0.25, 0.5625},
			{-0.5625, -0.5, -0.5625, -0.3125, -0.25, 0.5},
		}
	}
})
--Chimney Top 2
core.register_node("myroofs:chimney_top2", {
		description = "Chimney Top 2",
		tiles = {
			"default_clay.png",
			},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5625, 0.5625, -0.25, -0.3125},
			{0.3125, -0.5, -0.5625, 0.5625, -0.25, 0.5625},
			{-0.5625, -0.5, 0.3125, 0.5625, -0.25, 0.5625},
			{-0.5625, -0.5, -0.5625, -0.3125, -0.25, 0.5},
		}
	}
})
--Craft
core.register_craft({
	output = "myroofs:brick_chimney 6",
	recipe ={
			{"default:brick","","default:brick"},
			{"default:brick","","default:brick"},
			{"default:brick","","default:brick"},
			}
})
core.register_craft({
	output = "myroofs:stone_chimney 6",
	recipe ={
			{"default:stonebrick","","default:stonebrick"},
			{"default:stonebrick","","default:stonebrick"},
			{"default:stonebrick","","default:stonebrick"},
			}
})
core.register_craft({
	output = "myroofs:chimney_top 6",
	recipe ={
			{"","",""},
			{"","",""},
			{"default:stonebrick","","default:stonebrick"},
			}
})
core.register_craft({
	output = "myroofs:chimney_top2 6",
	recipe ={
			{"","",""},
			{"","",""},
			{"default:stone","","default:stone"},
			}
})

if core.get_modpath("lucky_block") then
	lucky_block:add_blocks({
		{"dro", {"myroofs:brick_chimney"}, 5},
		{"dro", {"myroofs:stone_chimney"}, 5},
	})
end
