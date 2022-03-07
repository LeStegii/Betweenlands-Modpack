val bottle = <minecraft:glass_bottle>;
val water = <liquid:swamp_water>;

val extender = <rustic:horsetail>;
val purifier = <rustic:marsh_mallow>;

// Slate
recipes.addShaped(<rustic:slate>, [
	[<ore:stone>, <ore:stone>, <ore:stone>],
	[<ore:stone>, <ore:dyeBlack>, <ore:stone>],
	[<ore:stone>, <ore:stone>, <ore:stone>]
]);

// Apple Sapling
recipes.addShapeless(<rustic:sapling_apple>, [
	<ore:treeSapling>,
	<rustic:apple_seeds>
]);

// Cabinet
recipes.replaceAllOccurences(<minecraft:trapdoor>, <ore:trapdoorWood>, <rustic:cabinet>);

// Crushing Tub
mods.rustic.CrushingTub.removeRecipe(<minecraft:reeds>);
mods.rustic.CrushingTub.addRecipe(water*25, <minecraft:rotten_flesh>, <thebetweenlands:snail_flesh_raw>);
mods.rustic.CrushingTub.addRecipe(water*25, <minecraft:rotten_flesh>, <thebetweenlands:anadia_meat_raw>);
mods.rustic.CrushingTub.addRecipe(water*25, <minecraft:rotten_flesh>, <thebetweenlands:frog_legs_raw>);
mods.rustic.CrushingTub.addRecipe(water*25, <minecraft:rotten_flesh>, <thebetweenlands:barnacle>);
mods.rustic.CrushingTub.addRecipe(water*25, <minecraft:rotten_flesh>, <thebetweenlands:crab_stick>);

mods.rustic.CrushingTub.addRecipe(water*125, <thebetweenlands:swamp_dirt>, <thebetweenlands:mud>);

// Nether Brick
mods.rustic.Condenser.addRecipe(<minecraft:netherbrick>*2, [<thebetweenlands:items_misc:10>], null, <minecraft:redstone>, water*10);

// Ale Worth
recipes.removeByRecipeName("rustic:ale_wort");
mods.rustic.Condenser.addRecipe(<thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "alewort", Amount: 1000}}), [<prodigytech:sugar_cube>, <rustic:mooncap_mushroom>], null, <thebetweenlands:bl_bucket>, water*1000);
mods.rustic.Condenser.addRecipe(<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "alewort", Amount: 1000}}), [<prodigytech:sugar_cube>, <rustic:mooncap_mushroom>], null, <thebetweenlands:bl_bucket:1>, water*1000);

// Potions
val instant_health = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]});
val instant_health_2 = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 1}]});
val blazing_trail = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 3600, Amplifier: 0}]});
val blazing_trail_extended = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 9600, Amplifier: 0}]});
val feather = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:feather", Duration: 3600, Amplifier: 0}]});
val feather_extended = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:feather", Duration: 9600, Amplifier: 0}]});
val ironskin = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 3600, Amplifier: 0}]});
val ironskin_2 = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 1800, Amplifier: 1}]});
val ironskin_extended = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 9600, Amplifier: 0}]});
val strength = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 3600, Amplifier: 0}]});
val strength_2 = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 1800, Amplifier: 1}]});
val strength_extended = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 9600, Amplifier: 0}]});
val haste = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 3600, Amplifier: 0}]});
val haste_2 = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 1800, Amplifier: 1}]});
val haste_extended = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 9600, Amplifier: 0}]});
val fire_resistance = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:fire_resistance", Duration: 3600, Amplifier: 0}]});
val fire_resistance_extended = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:fire_resistance", Duration: 9600, Amplifier: 0}]});
val night_vision = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]});
val night_vision_extended = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 9600, Amplifier: 0}]});
val health_boost = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 3600, Amplifier: 0}]});
val health_boost_extended = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 9600, Amplifier: 0}]});
val health_boost_2 = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 1800, Amplifier: 1}]});
val speed = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 3600, Amplifier: 0}]});
val speed_extended = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 9600, Amplifier: 0}]});
val speed_2 = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 1800, Amplifier: 1}]});
val wither = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 900, Amplifier: 0}]});
val wither_extended = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 1800, Amplifier: 0}]});
val wither_2 = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 450, Amplifier: 1}]});
val regeneration = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]});
val regeneration_extended = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 1800, Amplifier: 0}]});
val regeneration_2 = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 450, Amplifier: 1}]});

mods.rustic.Condenser.removeRecipe(instant_health);
mods.rustic.Condenser.removeRecipe(instant_health_2);
mods.rustic.Condenser.removeRecipe(blazing_trail);
mods.rustic.Condenser.removeRecipe(blazing_trail_extended);
mods.rustic.Condenser.removeRecipe(feather);
mods.rustic.Condenser.removeRecipe(feather_extended);
mods.rustic.Condenser.removeRecipe(ironskin);
mods.rustic.Condenser.removeRecipe(ironskin_2);
mods.rustic.Condenser.removeRecipe(ironskin_extended);
mods.rustic.Condenser.removeRecipe(strength);
mods.rustic.Condenser.removeRecipe(strength_2);
mods.rustic.Condenser.removeRecipe(strength_extended);
mods.rustic.Condenser.removeRecipe(haste);
mods.rustic.Condenser.removeRecipe(haste_2);
mods.rustic.Condenser.removeRecipe(haste_extended);
mods.rustic.Condenser.removeRecipe(speed);
mods.rustic.Condenser.removeRecipe(speed_2);
mods.rustic.Condenser.removeRecipe(speed_extended);
mods.rustic.Condenser.removeRecipe(health_boost);
mods.rustic.Condenser.removeRecipe(health_boost_2);
mods.rustic.Condenser.removeRecipe(health_boost_extended);
mods.rustic.Condenser.removeRecipe(wither);
mods.rustic.Condenser.removeRecipe(wither_2);
mods.rustic.Condenser.removeRecipe(wither_extended);
mods.rustic.Condenser.removeRecipe(regeneration);
mods.rustic.Condenser.removeRecipe(regeneration_2);
mods.rustic.Condenser.removeRecipe(regeneration_extended);
mods.rustic.Condenser.removeRecipe(fire_resistance);
mods.rustic.Condenser.removeRecipe(fire_resistance_extended);
mods.rustic.Condenser.removeRecipe(night_vision);
mods.rustic.Condenser.removeRecipe(night_vision_extended);

mods.rustic.Condenser.addRecipe(instant_health, [<thebetweenlands:snail_flesh_raw>, <rustic:chamomile>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(instant_health_2, [<thebetweenlands:snail_flesh_raw>, <rustic:chamomile>], purifier, bottle, water*125);
mods.rustic.Condenser.addRecipe(blazing_trail, [<thebetweenlands:octine_ingot>, <rustic:chili_pepper>, <minecraft:blaze_powder>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(blazing_trail_extended, [<thebetweenlands:octine_ingot>, <rustic:chili_pepper>, <minecraft:blaze_powder>], extender, bottle, water*125);
mods.rustic.Condenser.addRecipe(feather, [<thebetweenlands:items_misc:32>, <rustic:cloudsbluff>, <thebetweenlands:items_misc:3>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(feather_extended, [<thebetweenlands:items_misc:32>, <rustic:cloudsbluff>, <thebetweenlands:items_misc:3>], extender, bottle, water*125);
mods.rustic.Condenser.addRecipe(ironskin, [<thebetweenlands:items_misc:4>, <rustic:ironberries>, <thebetweenlands:items_misc:1>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(ironskin_extended, [<thebetweenlands:items_misc:4>, <rustic:ironberries>, <thebetweenlands:items_misc:1>], extender, bottle, water*125);
mods.rustic.Condenser.addRecipe(ironskin_2, [<thebetweenlands:items_misc:4>, <rustic:ironberries>, <thebetweenlands:items_misc:1>], purifier, bottle, water*125);
mods.rustic.Condenser.addRecipe(strength, [<thebetweenlands:items_misc:14>, <rustic:ginseng>, <thebetweenlands:items_misc:18>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(strength_extended, [<thebetweenlands:items_misc:14>, <rustic:ginseng>, <thebetweenlands:items_misc:18>], extender, bottle, water*125);
mods.rustic.Condenser.addRecipe(strength_2, [<thebetweenlands:items_misc:14>, <rustic:ginseng>, <thebetweenlands:items_misc:18>], purifier, bottle, water*125);
mods.rustic.Condenser.addRecipe(haste, [<minecraft:redstone>, <thebetweenlands:items_misc:41>, <rustic:core_root>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(haste_extended, [<minecraft:redstone>, <thebetweenlands:items_misc:42>, <rustic:core_root>], extender, bottle, water*125);
mods.rustic.Condenser.addRecipe(haste_2, [<minecraft:redstone>, <thebetweenlands:items_misc:42>, <rustic:core_root>], purifier, bottle, water*125);
mods.rustic.Condenser.addRecipe(fire_resistance, [<minecraft:netherbrick>, <thebetweenlands:items_misc:18>, <rustic:aloe_vera>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(fire_resistance_extended, [<minecraft:netherbrick>, <thebetweenlands:items_misc:18>, <rustic:aloe_vera>], extender, bottle, water*125);
mods.rustic.Condenser.addRecipe(night_vision, [<thebetweenlands:items_misc:41>, <rustic:mooncap_mushroom>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(night_vision_extended, [<thebetweenlands:items_misc:41>, <rustic:mooncap_mushroom>], extender, bottle, water*125);
mods.rustic.Condenser.addRecipe(regeneration, [<rustic:honeycomb>, <rustic:cohosh>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(regeneration_extended, [<rustic:honeycomb>, <rustic:cohosh>], extender, bottle, water*125);
mods.rustic.Condenser.addRecipe(regeneration_2, [<rustic:honeycomb>, <rustic:cohosh>], purifier, bottle, water*125);
mods.rustic.Condenser.addRecipe(wither, [<minecraft:soul_sand>, <rustic:deathstalk_mushroom>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(wither_extended, [<minecraft:soul_sand>, <rustic:deathstalk_mushroom>], extender, bottle, water*125);
mods.rustic.Condenser.addRecipe(wither_2, [<minecraft:soul_sand>, <rustic:deathstalk_mushroom>], purifier, bottle, water*125);
mods.rustic.Condenser.addRecipe(speed, [<rustic:wind_thistle>, <prodigytech:sugar_cube>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(speed, [<rustic:wind_thistle>, <prodigytech:sugar_cube>], extender, bottle, water*125);
mods.rustic.Condenser.addRecipe(speed, [<rustic:wind_thistle>, <prodigytech:sugar_cube>], purifier, bottle, water*125);
mods.rustic.Condenser.addRecipe(health_boost, [<rustic:tomato>, <rustic:blood_orchid>], null, bottle, water*125);
mods.rustic.Condenser.addRecipe(health_boost_extended, [<rustic:tomato>, <rustic:blood_orchid>], extender, bottle, water*125);
mods.rustic.Condenser.addRecipe(health_boost_2, [<rustic:tomato>, <rustic:blood_orchid>], purifier, bottle, water*125);


// Syrmorite Ingot
furnace.addRecipe(<thebetweenlands:items_misc:41>, <rustic:dust_tiny_iron>);

<rustic:planks:1>.displayName = "Syrmoritewood Planks";
<rustic:ironwood_slab_item>.displayName = "Syrmoritewood Slab";
<rustic:stairs_ironwood>.displayName = "Syrmoritewood Stairs";
<rustic:log:1>.displayName = "Syrmoritewood Log";
<rustic:leaves:1>.displayName = "Syrmoritewood Leaves";
<rustic:sapling:1>.displayName = "Syrmoritewood Sapling";
<rustic:fence_ironwood>.displayName = "Syrmoritewood Fence";
<rustic:fence_gate_ironwood>.displayName = "Syrmoritewood Fence Gate";
<rustic:ironwood_door>.displayName = "Syrmoritewood Door";
<rustic:ironwood_door>.displayName = "Syrmoritewood Door";

<rustic:ironberries>.displayName = "Syrmoriteberries";
<rustic:dust_tiny_iron>.displayName = "Tiny Pile of Syrmorite Dust";
game.setLocalization("tile.rustic.ironberry_juice.name", "Syrmoriteberry Juice");
game.setLocalization("fluid.ironberryjuice", "Syrmoriteberry Juice");
game.setLocalization("fluid.ironwine", "Syrmorite Wine");
game.setLocalization("effect.ironskin", "Syrmorite Skin");
game.setLocalization("book.rustic.entry.ironwood_trees", "Syrmoritewood Trees");
game.setLocalization("book.rustic.text.ironwood_trees", "Syrmoritewood Trees grow naturally in the Betweenlands. The logs can be crafted into syrmoritewood planks, which can be used to make syrmoritewood variants of many wood blocks. Syrmoritewood leaves drop syrmoritewood saplings and syrmoriteberries.");
game.setLocalization("book.rustic.text.ironberry_juice", "Syrmoriteberry Juice come from crushing syrmoriteberries in a crushing tub. It can be drank, if stored in a bottle, but doing so paralyzes the consumer. Syrmoriteberry juice is better used for brewing Syrmorite wine, or for getting Syrmorite dust.");
game.setLocalization("book.rustic.text.iron_dust", "Leaving syrmoriteberry juice in a drying basin will slowly produce tiny piles of syrmorite dust. These piles can be smelted into syrmorite nuggets.");
game.setLocalization("book.rustic.text.iron_wine", "Syrmorite wine grants the drinker absorption hearts with no time limit, up to ten extra hearts.");

<rustic:chain>.displayName = "Syrmorite Chain";
<rustic:candle>.displayName = "Syrmorite Candle";
<rustic:candle_lever>.displayName = "Syrmorite Candle Lever";
<rustic:chandelier>.displayName = "Syrmorite Chandelier Ring";
<rustic:iron_lattice>.displayName = "Syrmorite Lattice";
<rustic:iron_lantern>.displayName = "Syrmorite Lantern";

<rustic:chain_gold>.displayName = "Octine Chain";
<rustic:candle_gold>.displayName = "Octine Candle";
<rustic:candle_lever_gold>.displayName = "Octine Candle Lever";
<rustic:chandelier_gold>.displayName = "Octine Chandelier Ring";
<rustic:golden_lantern>.displayName = "Octine Lantern";