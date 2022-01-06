// Hide JEI recipes
// We need to make recipes for all the weapon table items since you cant edit them in 1.12
mods.jei.JEI.hideCategory("vampirism.hunter_weapon");
mods.jei.JEI.removeAndHide(<vampirism:weapon_table>);
mods.jei.JEI.removeAndHide(<vampirism:garlic_bread>);

recipes.removeByRecipeName("vampirism:general/castle_block_0_2");
recipes.removeByRecipeName("vampirism:general/castle_block_1");

// Fangs
recipes.addShaped(<vampirism:vampire_fang>, [
	[<thebetweenlands:items_misc:14>, <thebetweenlands:items_misc:14>, <thebetweenlands:items_misc:14>],
	[<thebetweenlands:items_misc:21>, <vampirism:vampirism_flower>, <thebetweenlands:items_misc:21>],
	[<ore:dyeRed>, null, <ore:dyeRed>]
]);

// Dark Castle Brick
recipes.addShapeless(<vampirism:castle_block>*8, [
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<thebetweenlands:items_crushed:20>
]);

// Castle Brick
recipes.addShapeless(<vampirism:castle_block:1>*8, [
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:castle_block:3>,
	<vampirism:vampirism_flower>
]);

// Crossbows
recipes.addShaped(<vampirism:basic_crossbow>, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>],
	[<thebetweenlands:items_misc:7>, <ore:plankWood>, <thebetweenlands:items_misc:7>],
	[null, <ore:plankWood>, null]
]);

recipes.addShapeless(<vampirism:basic_double_crossbow>, [
	<vampirism:basic_crossbow>, 
	<vampirism:basic_crossbow>
]);

recipes.addShaped(<vampirism:enhanced_crossbow>, [
	[<ore:ingotSyrmorite>, <ore:blockSyrmorite>, <ore:ingotSyrmorite>],
	[<thebetweenlands:items_misc:7>, <ore:blockSyrmorite>, <thebetweenlands:items_misc:7>],
	[null, <ore:ingotSyrmorite>, null]
]);

recipes.addShapeless(<vampirism:enhanced_double_crossbow>, [
	<vampirism:enhanced_crossbow>, 
	<vampirism:enhanced_crossbow>
]);

recipes.addShaped(<vampirism:basic_tech_crossbow>, [
	[<vampirism:blood_infused_iron_ingot>, <ore:blockSyrmorite>, <vampirism:blood_infused_iron_ingot>],
	[<thebetweenlands:items_misc:7>, <ore:blockSyrmorite>, <thebetweenlands:items_misc:7>],
	[null, <ore:ingotOctine>, null]
]);

recipes.addShapeless(<vampirism:enhanced_tech_crossbow>, [
	<vampirism:basic_tech_crossbow>, 
	<vampirism:basic_tech_crossbow>
]);

// Pitchfork
recipes.addShaped(<vampirism:pitchfork>, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>],
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
	[null, <ore:stickWood>, null]
]);

// Vampire Killer Arrow
recipes.addShaped(<vampirism:crossbow_arrow>.withTag({type: "vampire_killer"})*3, [
	[null, <vampirism:item_garlic>, null],
	[<vampirism:item_garlic>, <ore:ingotOctine>, <vampirism:item_garlic>],
	[null, <thebetweenlands:items_misc:3>, null]
]);

// Spitfire Arrow
recipes.addShapeless(<vampirism:crossbow_arrow>.withTag({type: "spitfire"})*3, [
	<vampirism:crossbow_arrow>,
	<vampirism:crossbow_arrow>,
	<vampirism:crossbow_arrow>,
	<vampirism:item_alchemical_fire>
]);

// Arrow Clip
recipes.addShaped(<vampirism:tech_crossbow_ammo_package>, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:plankWood>],
	[<ore:stickWood>, <ore:stickWood>, <thebetweenlands:items_misc:7>]
]);

// Swiftness Armor
recipes.addShapeless(<vampirism:armor_of_swiftness_head>.withTag({tier: "NORMAL"}), [
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
	<thebetweenlands:lurker_skin_helmet>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>
]);

recipes.addShapeless(<vampirism:armor_of_swiftness_head>.withTag({tier: "ENHANCED"}), [
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
	<thebetweenlands:lurker_skin_helmet>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>,
	<ore:ingotOctine>,
	<ore:ingotOctine>
]);

recipes.addShapeless(<vampirism:armor_of_swiftness_chest>.withTag({tier: "NORMAL"}), [
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
	<thebetweenlands:lurker_skin_chestplate>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>
]);

recipes.addShapeless(<vampirism:armor_of_swiftness_chest>.withTag({tier: "ENHANCED"}), [
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
	<thebetweenlands:lurker_skin_chestplate>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>,
	<ore:ingotOctine>,
	<ore:ingotOctine>
]);

recipes.addShapeless(<vampirism:armor_of_swiftness_legs>.withTag({tier: "NORMAL"}), [
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
	<thebetweenlands:lurker_skin_leggings>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>
]);

recipes.addShapeless(<vampirism:armor_of_swiftness_legs>.withTag({tier: "ENHANCED"}), [
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
	<thebetweenlands:lurker_skin_leggings>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>,
	<ore:ingotOctine>,
	<ore:ingotOctine>
]);

recipes.addShapeless(<vampirism:armor_of_swiftness_feet>.withTag({tier: "NORMAL"}), [
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
	<thebetweenlands:lurker_skin_boots>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>
]);

recipes.addShapeless(<vampirism:armor_of_swiftness_feet>.withTag({tier: "ENHANCED"}), [
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
	<thebetweenlands:lurker_skin_boots>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>,
	<ore:ingotOctine>,
	<ore:ingotOctine>
]);

// Hunter Hat
recipes.addShaped(<vampirism:hunter_hat0_head>, [
	[null, <thebetweenlands:tar_solid>, null],
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>]
]);

// Hunter Hat 1
recipes.addShaped(<vampirism:hunter_hat1_head>, [
	[null, <thebetweenlands:tar_solid>, null],
	[null, <thebetweenlands:tar_solid>, null],
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>]
]);

// Hunter Axe
recipes.addShapedMirrored(<vampirism:hunter_axe>.withTag({ench: [{lvl: 2 as short, id: 19 as short}], tier: "NORMAL"}), [
	[<ore:ingotSyrmorite>, <ore:blockSyrmorite>, null],
	[<ore:ingotSyrmorite>, <ore:stickWood>, null],
	[null, <ore:stickWood>, null]
]);

// Hunter Axe 1
recipes.addShapedMirrored(<vampirism:hunter_axe>.withTag({ench: [{lvl: 3 as short, id: 19 as short}], tier: "ENHANCED"}), [
	[<ore:ingotSyrmorite>, <ore:gemValonite>, null],
	[<ore:ingotSyrmorite>, <ore:stickWood>, null],
	[null, <ore:stickWood>, null]
]);


// Coat Armor
recipes.addShapeless(<vampirism:hunter_coat_head>.withTag({tier: "NORMAL"}), [
	<ore:gemValonite>,
	<thebetweenlands:lurker_skin_helmet>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>
]);

recipes.addShapeless(<vampirism:hunter_coat_head>.withTag({tier: "ENHANCED"}), [
	<ore:gemValonite>,
	<thebetweenlands:lurker_skin_helmet>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>,
	<ore:ingotOctine>,
	<ore:ingotOctine>
]);

recipes.addShapeless(<vampirism:hunter_coat_chest>.withTag({tier: "NORMAL"}), [
	<ore:gemValonite>,
	<thebetweenlands:lurker_skin_chestplate>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>
]);

recipes.addShapeless(<vampirism:hunter_coat_chest>.withTag({tier: "ENHANCED"}), [
	<ore:gemValonite>,
	<thebetweenlands:lurker_skin_chestplate>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>,
	<ore:ingotOctine>,
	<ore:ingotOctine>
]);

recipes.addShapeless(<vampirism:hunter_coat_legs>.withTag({tier: "NORMAL"}), [
	<ore:gemValonite>,
	<thebetweenlands:lurker_skin_leggings>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>
]);

recipes.addShapeless(<vampirism:hunter_coat_legs>.withTag({tier: "ENHANCED"}), [
	<ore:gemValonite>,
	<thebetweenlands:lurker_skin_leggings>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>,
	<ore:ingotOctine>,
	<ore:ingotOctine>
]);

recipes.addShapeless(<vampirism:hunter_coat_feet>.withTag({tier: "NORMAL"}), [
	<ore:gemValonite>,
	<thebetweenlands:lurker_skin_boots>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>
]);

recipes.addShapeless(<vampirism:hunter_coat_feet>.withTag({tier: "ENHANCED"}), [
	<ore:gemValonite>,
	<thebetweenlands:lurker_skin_boots>,
	<vampirism:item_garlic>,
	<vampirism:item_garlic>,
	<ore:ingotOctine>,
	<ore:ingotOctine>
]);

<vampirism:blood_infused_iron_ingot>.displayName = "Blood Infused Syrmorite Ingot";
<vampirism:blood_infused_enhanced_iron_ingot>.displayName = "Enhanced Blood Infused Syrmorite Ingot";