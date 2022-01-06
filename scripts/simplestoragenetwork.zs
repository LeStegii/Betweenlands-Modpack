// Crafting Terminal
recipes.replaceAllOccurences(<minecraft:gold_ingot>, <ore:ingotOctine>, <storagenetwork:request>);
recipes.replaceAllOccurences(<minecraft:crafting_table>, <thebetweenlands:weedwood_workbench>, <storagenetwork:request>);

// Inventory Terminal
recipes.replaceAllOccurences(<minecraft:iron_nugget>, <ore:nuggetSyrmorite>, <storagenetwork:inventory>);
recipes.replaceAllOccurences(<minecraft:dropper>, <thebetweenlands:weedwood_chest>, <storagenetwork:inventory>);

// Master
recipes.replaceAllOccurences(<minecraft:diamond>, <ore:gemValonite>, <storagenetwork:master>);
recipes.replaceAllOccurences(<minecraft:quartz_block>, <thebetweenlands:betweenstone_bricks>, <storagenetwork:master>);

// Controller
recipes.replaceAllOccurences(<minecraft:lapis_block>, <ore:blockSulfur>, <storagenetwork:controller>);
recipes.replaceAllOccurences(<minecraft:obsidian>, <thebetweenlands:tar_solid>, <storagenetwork:controller>);

// Cable
recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:ingotSyrmorite>, <storagenetwork:kabel>);
recipes.replaceAllOccurences(<minecraft:stone_slab>, <thebetweenlands:smooth_betweenstone_slab>, <storagenetwork:kabel>);

// Link Cable
recipes.replaceAllOccurences(<minecraft:chest>, <thebetweenlands:weedwood_chest>, <storagenetwork:storage_kabel>);

// Export Cable
recipes.replaceAllOccurences(<minecraft:piston>, <thebetweenlands:sulfur_furnace>, <storagenetwork:ex_kabel>);

// Import Cable
recipes.replaceAllOccurences(<minecraft:hopper>, <thebetweenlands:syrmorite_hopper>, <storagenetwork:im_kabel>);

// Processing Cable
recipes.replaceAllOccurences(<minecraft:observer>, <thebetweenlands:sulfur_furnace_dual>, <storagenetwork:process_kabel>);
recipes.replaceAllOccurences(<minecraft:gold_nugget>, <ore:nuggetOctine>, <storagenetwork:process_kabel>);

// Remote
recipes.replaceAllOccurences(<minecraft:gold_ingot>, <ore:ingotOctine>, <storagenetwork:remote:0>);

// Simple Remote
recipes.replaceAllOccurences(<minecraft:slime_ball>, <thebetweenlands:sap_ball>, <storagenetwork:remote:3>);
recipes.replaceAllOccurences(<minecraft:glowstone>, <thebetweenlands:scabyst_block>, <storagenetwork:remote:3>);
recipes.replaceAllOccurences(<minecraft:gold_ingot>, <ore:ingotOctine>, <storagenetwork:remote:3>);

// Upgraded Remote
recipes.replaceAllOccurences(<minecraft:gold_ingot>, <ore:ingotOctine>, <storagenetwork:remote:2>);
recipes.replaceAllOccurences(<minecraft:glowstone>, <thebetweenlands:scabyst_block>, <storagenetwork:remote:2>);
recipes.replaceAllOccurences(<minecraft:magma>, <ore:blockOctine>, <storagenetwork:remote:2>);
recipes.replaceAllOccurences(<minecraft:ender_pearl>, <thebetweenlands:wight_heart>, <storagenetwork:remote:2>);

// Advanced Remote
recipes.replaceAllOccurences(<minecraft:ender_pearl>, <thebetweenlands:wight_heart>, <storagenetwork:remote:1>);
recipes.replaceAllOccurences(<minecraft:nether_star>, <thebetweenlands:items_misc:25>, <storagenetwork:remote:1>);
recipes.replaceAllOccurences(<minecraft:blaze_rod>, <thebetweenlands:items_misc:14>, <storagenetwork:remote:1>);
recipes.replaceAllOccurences(<minecraft:purpur_block>, <thebetweenlands:items_misc:4>, <storagenetwork:remote:1>);
recipes.replaceAllOccurences(<minecraft:magma>, <ore:blockOctine>, <storagenetwork:remote:1>);

// Speed Upgrade
recipes.remove(<storagenetwork:upgrade:0>);
recipes.addShaped(<storagenetwork:upgrade:0>*4, [
	[<thebetweenlands:smooth_betweenstone>, <ore:ingotOctine>, <thebetweenlands:smooth_betweenstone>],
	[<ore:ingotOctine>, <storagenetwork:kabel>, <ore:ingotOctine>],
	[<thebetweenlands:smooth_betweenstone>, <ore:ingotOctine>, <thebetweenlands:smooth_betweenstone>]
]);

// Operation Upgrade
recipes.remove(<storagenetwork:upgrade:1>);
recipes.addShaped(<storagenetwork:upgrade:1>*4, [
	[<thebetweenlands:smooth_betweenstone>, <thebetweenlands:sulfur_torch>, <thebetweenlands:smooth_betweenstone>],
	[<thebetweenlands:sulfur_furnace>, <storagenetwork:kabel>, <thebetweenlands:sulfur_furnace>],
	[<thebetweenlands:smooth_betweenstone>, <thebetweenlands:sulfur_torch>, <thebetweenlands:smooth_betweenstone>]
]);

// Stack Upgrade
recipes.remove(<storagenetwork:upgrade:2>);
recipes.addShaped(<storagenetwork:upgrade:2>*4, [
	[<thebetweenlands:smooth_betweenstone>, <ore:ingotSyrmorite>, <thebetweenlands:smooth_betweenstone>],
	[<ore:ingotSyrmorite>, <storagenetwork:kabel>, <ore:ingotSyrmorite>],
	[<thebetweenlands:smooth_betweenstone>, <ore:ingotSyrmorite>, <thebetweenlands:smooth_betweenstone>]
]);

// Stock Upgrade
recipes.remove(<storagenetwork:upgrade:3>);
recipes.addShaped(<storagenetwork:upgrade:3>*4, [
	[<thebetweenlands:smooth_betweenstone>, <thebetweenlands:weedwood_chest>, <thebetweenlands:smooth_betweenstone>],
	[<thebetweenlands:weedwood_chest>, <storagenetwork:kabel>, <thebetweenlands:weedwood_chest>],
	[<thebetweenlands:smooth_betweenstone>, <thebetweenlands:weedwood_chest>, <thebetweenlands:smooth_betweenstone>]
]);