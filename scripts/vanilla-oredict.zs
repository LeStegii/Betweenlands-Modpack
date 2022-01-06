import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.recipes.IFurnaceRecipe;

// Disable Vanilla items
val itemsToKeep = [
	<minecraft:golden_rail>,
	<minecraft:glass_bottle>,
	<minecraft:potion>.withTag({Potion: "minecraft:water"}),
	<minecraft:brewing_stand>,
	<minecraft:blaze_powder>,
	<minecraft:detector_rail>,
	<minecraft:dispenser>,
	<minecraft:sticky_piston>,
	<minecraft:redstone>,
	<minecraft:redstone_torch>,
	<minecraft:redstone_block>,
	<minecraft:repeater>,
	<minecraft:comparator>,
	<minecraft:redstone_lamp>,
	<minecraft:piston>,
	<minecraft:observer>,
	<minecraft:dropper>,
	<minecraft:lead>,
	<minecraft:armor_stand>,
	<minecraft:minecart>,
	<minecraft:chest_minecart>,
	<minecraft:hopper_minecart>,
	<minecraft:iron_bars>,
	<minecraft:trapped_chest>,
	<minecraft:item_frame>,
	<minecraft:activator_rail>,
	<minecraft:soul_sand>,
	<minecraft:rail>,
	<minecraft:flint_and_steel>,
	<minecraft:tripwire_hook>,
	<minecraft:string>,
	<minecraft:slime>,
	<minecraft:slime_ball>,
	<minecraft:noteblock>,
	<minecraft:book>,
	<minecraft:writable_book>,
	<minecraft:bookshelf>,
	<minecraft:wool:*>,
	<minecraft:banner:*>,
	<minecraft:painting>,
	<minecraft:netherbrick>,
	<minecraft:sugar>
] as IItemStack[];

for item in loadedMods["minecraft"].items {
	var skip = false;

    for wlItem in itemsToKeep {
    	if(wlItem.matches(item)) {
            skip = true;
            break;
        }
    }

    if(!skip) {
    	JEI.hide(item);
    	recipes.remove(item);
    	furnace.remove(item);
    	brewing.removeRecipe(item);
    }
}

// Replace Vanilla Items with Betweenlands Items
for mod in loadedMods {
	if (!(mod.name has "betweenlands")) {
		for item in mod.items {			
			recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:ingotSyrmorite>, item);
			recipes.replaceAllOccurences(<minecraft:gold_ingot>, <ore:ingotOctine>, item);
			recipes.replaceAllOccurences(<minecraft:iron_block>, <ore:blockSyrmorite>, item);
			recipes.replaceAllOccurences(<minecraft:gold_block>, <ore:blockOctine>, item);
			recipes.replaceAllOccurences(<minecraft:iron_nugget>, <ore:nuggetSyrmorite>, item);
			recipes.replaceAllOccurences(<minecraft:gold_nugget>, <ore:nuggetOctine>, item);
			recipes.replaceAllOccurences(<minecraft:coal_block>, <ore:blockSulfur>, item);
			recipes.replaceAllOccurences(<minecraft:coal:0>, <thebetweenlands:items_misc:18>, item);
			recipes.replaceAllOccurences(<minecraft:coal:1>, <thebetweenlands:items_misc:18>, item);
			recipes.replaceAllOccurences(<minecraft:diamond>, <ore:gemValonite>, item);
			recipes.replaceAllOccurences(<minecraft:emerald>, <ore:gemGreenMiddleGem>, item);
			
			recipes.replaceAllOccurences(<minecraft:bucket>, <thebetweenlands:bl_bucket:1>, item);
			recipes.replaceAllOccurences(<minecraft:bow>, <thebetweenlands:weedwood_bow>, item);
			recipes.replaceAllOccurences(<minecraft:stick>, <ore:stickWood>, item);
			recipes.replaceAllOccurences(<minecraft:glass_bottle>, <thebetweenlands:dentrothyst_vial>, item);
			recipes.replaceAllOccurences(<minecraft:flint>, <thebetweenlands:items_misc:47>, item);
			recipes.replaceAllOccurences(<minecraft:brick>, <thebetweenlands:items_misc:10>, item);
			recipes.replaceAllOccurences(<minecraft:paper>, <thebetweenlands:items_misc:32>, item);
			
			recipes.replaceAllOccurences(<minecraft:blaze_rod>, <ore:ingotOctine>, item);
			recipes.replaceAllOccurences(<minecraft:rotten_flesh>, <thebetweenlands:snail_flesh_raw>, item);
			recipes.replaceAllOccurences(<minecraft:ender_pearl>, <thebetweenlands:items_misc:17>, item);
			recipes.replaceAllOccurences(<minecraft:dye:15>, <thebetweenlands:items_misc:14>, item);
			recipes.replaceAllOccurences(<minecraft:feather>, <thebetweenlands:items_misc:3>, item);
			recipes.replaceAllOccurences(<minecraft:leather>, <thebetweenlands:items_misc:4>, item);

			recipes.replaceAllOccurences(<minecraft:glass>, <ore:glassSilt>, item);
			recipes.replaceAllOccurences(<minecraft:glass_pane>, <ore:paneGlassSilt>, item);
			recipes.replaceAllOccurences(<minecraft:hopper>, <thebetweenlands:syrmorite_hopper>, item);
			recipes.replaceAllOccurences(<minecraft:cauldron>, <thebetweenlands:syrmorite_barrel>, item);
			recipes.replaceAllOccurences(<minecraft:stone_pressure_plate>, <thebetweenlands:betweenstone_pressure_plate>, item);
			recipes.replaceAllOccurences(<minecraft:wooden_pressure_plate>, <thebetweenlands:weedwood_plank_pressure_plate>, item);
			recipes.replaceAllOccurences(<minecraft:trapdoor>, <ore:trapdoorWood>, item);
			recipes.replaceAllOccurences(<minecraft:torch>, <thebetweenlands:sulfur_torch>, item);
			recipes.replaceAllOccurences(<minecraft:sand>, <thebetweenlands:silt>, item);
			recipes.replaceAllOccurences(<minecraft:dirt>, <ore:dirt>, item);
			recipes.replaceAllOccurences(<minecraft:gravel>, <thebetweenlands:cragrock>, item);
			recipes.replaceAllOccurences(<minecraft:obsidian>, <thebetweenlands:tar_solid>, item);
			recipes.replaceAllOccurences(<minecraft:quartz_block>, <thebetweenlands:polished_limestone>, item);
			recipes.replaceAllOccurences(<minecraft:quartz>, <thebetweenlands:items_misc:27>, item);
			recipes.replaceAllOccurences(<minecraft:log>, <ore:logWood>, item);
			recipes.replaceAllOccurences(<minecraft:stonebrick>, <thebetweenlands:betweenstone_bricks>, item);
			recipes.replaceAllOccurences(<minecraft:stone>, <thebetweenlands:smooth_betweenstone>, item);
			recipes.replaceAllOccurences(<minecraft:stone_slab>, <thebetweenlands:smooth_betweenstone_slab>, item);
			recipes.replaceAllOccurences(<minecraft:dirt>, <thebetweenlands:swamp_dirt>, item);
			recipes.replaceAllOccurences(<minecraft:cobblestone>, <ore:cobblestone>, item);
			recipes.replaceAllOccurences(<minecraft:stained_hardened_clay:0>, <thebetweenlands:limestone>, item);
			recipes.replaceAllOccurences(<minecraft:hardened_clay>, <thebetweenlands:mud_bricks>, item);
			recipes.replaceAllOccurences(<minecraft:glowstone>, <ore:blockSulfur>, item);
		}
	}
}

// Manually edit/disable/hide some items
JEI.hideCategory("minecraft.anvil");
JEI.hide(<forge:bucketfilled:*>);
JEI.hide(<minecraft:barrier>);
JEI.hide(<minecraft:filled_map>);
JEI.hide(<minecraft:command_block>);
JEI.hide(<minecraft:repeating_command_block>);
JEI.hide(<minecraft:chain_command_block>);
JEI.hide(<minecraft:command_block_minecart>);
JEI.hide(<minecraft:structure_void>);
JEI.hide(<minecraft:structure_block>);
JEI.hide(<minecraft:red_mushroom_block>);
JEI.hide(<minecraft:brown_mushroom_block>);
JEI.hide(<minecraft:farmland>);
JEI.hide(<minecraft:grass_path>);
JEI.hide(<minecraft:knowledge_book>);
JEI.hide(<minecraft:fireworks>);
furnace.remove(<minecraft:netherbrick>);
furnace.remove(<minecraft:sugar>);
furnace.remove(<minecraft:redstone>);
recipes.remove(<minecraft:blaze_powder>);
recipes.remove(<minecraft:flint_and_steel>);
recipes.remove(<minecraft:sugar>);
recipes.removeByRecipeName("crafttweaker:minecraft_flint_and_steel_modified");

recipes.addShapeless("flint_and_steel", <minecraft:flint_and_steel>, [
	<thebetweenlands:items_misc:47>,
	<ore:ingotOctine>
]);

recipes.addShapeless(<minecraft:redstone>*3, [
	<rustic:dust_tiny_iron>,
	<rustic:dust_tiny_iron>,
	<ore:dyeRed>
]);

recipes.addShapeless(<minecraft:soul_sand>*2, [
	<thebetweenlands:silt>,
	<thebetweenlands:silt>,
	<rustic:deathstalk_mushroom>
]);

// Change some item names 
<minecraft:iron_bars>.displayName = "Syrmorite Bars";

// Oredict Stuff
<ore:cobblestone>.remove(<minecraft:cobblestone>);
<ore:dirt>.remove(<minecraft:dirt>);
<ore:stone>.remove(<minecraft:stone>);
<ore:stickWood>.remove(<minecraft:stick>);
<ore:logWood>.remove(<minecraft:log:*>);
<ore:logWood>.remove(<minecraft:log2:*>);
<ore:slabWood>.remove(<minecraft:wooden_slab:*>);
<ore:plankWood>.remove(<minecraft:planks:*>);
<ore:treeSapling>.remove(<minecraft:sapling:*>);

<ore:dyeBlack>.remove(<minecraft:dye:0>);
<ore:dyeRed>.remove(<minecraft:dye:1>);
<ore:dyeGreen>.remove(<minecraft:dye:2>);
<ore:dyeBrown>.remove(<minecraft:dye:3>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:dyePurple>.remove(<minecraft:dye:5>);
<ore:dyeCyan>.remove(<minecraft:dye:6>);
<ore:dyeLightGray>.remove(<minecraft:dye:7>);
<ore:dyeLightGray>.remove(<rustic:ironberries>);
<ore:dyeGray>.remove(<minecraft:dye:8>);
<ore:dyePink>.remove(<minecraft:dye:9>);
<ore:dyeLime>.remove(<minecraft:dye:10>);
<ore:dyeYellow>.remove(<minecraft:dye:11>);
<ore:dyeLightBlue>.remove(<minecraft:dye:12>);
<ore:dyeMagenta>.remove(<minecraft:dye:13>);
<ore:dyeOrange>.remove(<minecraft:dye:14>);
<ore:dyeWhite>.remove(<minecraft:dye:15>);

<ore:dyeBlack>.add(<thebetweenlands:items_crushed:20>);
<ore:dyeBlack>.add(<thebetweenlands:items_crushed:54>);

<ore:dyeRed>.add(<thebetweenlands:items_crushed:25>);
<ore:dyeRed>.add(<thebetweenlands:items_crushed:21>);

<ore:dyeGreen>.add(<thebetweenlands:items_crushed:2>);
<ore:dyeGreen>.add(<thebetweenlands:items_crushed:38>);
<ore:dyeGreen>.add(<thebetweenlands:items_crushed:39>);
<ore:dyeGreen>.add(<thebetweenlands:items_crushed:0>);
<ore:dyeGreen>.add(<thebetweenlands:items_crushed:8>);
<ore:dyeGreen>.add(<thebetweenlands:items_crushed:32>);
<ore:dyeGreen>.add(<thebetweenlands:items_crushed:33>);

<ore:dyeBrown>.add(<thebetweenlands:items_crushed:23>);
<ore:dyeBrown>.add(<thebetweenlands:items_crushed:1>);
<ore:dyeBrown>.add(<thebetweenlands:items_crushed:44>);
<ore:dyeBrown>.add(<thebetweenlands:items_crushed:16>);
<ore:dyeBrown>.add(<thebetweenlands:items_crushed:17>);
<ore:dyeBrown>.add(<thebetweenlands:items_crushed:40>);
<ore:dyeBrown>.add(<thebetweenlands:items_crushed:41>);
<ore:dyeBrown>.add(<thebetweenlands:items_crushed:1>);

<ore:dyeBlue>.add(<thebetweenlands:items_crushed:45>);
<ore:dyeBlue>.add(<thebetweenlands:items_crushed:11>);
<ore:dyeBlue>.add(<thebetweenlands:items_crushed:13>);

<ore:dyePurple>.add(<thebetweenlands:items_crushed:7>);

<ore:dyeCyan>.add(<thebetweenlands:items_crushed:29>);

<ore:dyeLightGray>.add(<thebetweenlands:items_crushed:22>);
<ore:dyeLightGray>.add(<thebetweenlands:items_crushed:19>);
<ore:dyeLightGray>.add(<thebetweenlands:items_crushed:5>);
<ore:dyeLightGray>.add(<thebetweenlands:items_crushed:58>);

<ore:dyeGray>.add(<thebetweenlands:items_crushed:15>);
<ore:dyeGray>.add(<thebetweenlands:items_crushed:30>);

<ore:dyePink>.add(<thebetweenlands:items_crushed:6>);
<ore:dyePink>.add(<thebetweenlands:items_crushed:52>);

<ore:dyeLime>.add(<thebetweenlands:items_crushed:42>);
<ore:dyeLime>.add(<thebetweenlands:items_crushed:18>);
<ore:dyeLime>.add(<thebetweenlands:items_crushed:47>);
<ore:dyeLime>.add(<thebetweenlands:items_crushed:43>);

<ore:dyeYellow>.add(<thebetweenlands:items_crushed:35>);

<ore:dyeLightBlue>.add(<thebetweenlands:items_crushed:24>);

<ore:dyeMagenta>.add(<thebetweenlands:items_crushed:10>);
<ore:dyeMagenta>.add(<thebetweenlands:items_crushed:28>);

<ore:dyeOrange>.add(<thebetweenlands:items_crushed:31>);
<ore:dyeOrange>.add(<thebetweenlands:items_crushed:12>);
<ore:dyeOrange>.add(<thebetweenlands:items_crushed:36>);

<ore:dyeWhite>.add(<thebetweenlands:items_crushed:14>);
<ore:dyeWhite>.add(<thebetweenlands:items_crushed:9>);
<ore:dyeWhite>.add(<thebetweenlands:items_crushed:34>);

<ore:hopper>.add(<thebetweenlands:syrmorite_hopper>);

<ore:glassSilt>.add(<thebetweenlands:silt_glass>);
<ore:glassSilt>.add(<thebetweenlands:filtered_silt_glass>);
<ore:paneGlassSilt>.add(<thebetweenlands:silt_glass_pane>);
<ore:paneGlassSilt>.add(<thebetweenlands:filtered_silt_glass_pane>);

<ore:trapdoorWood>.add(<thebetweenlands:weedwood_trapdoor>);
<ore:trapdoorWood>.add(<thebetweenlands:rubber_tree_plank_trapdoor>);
<ore:trapdoorWood>.add(<thebetweenlands:giant_root_plank_trapdoor>);
<ore:trapdoorWood>.add(<thebetweenlands:hearthgrove_plank_trapdoor>);
<ore:trapdoorWood>.add(<thebetweenlands:nibbletwig_plank_trapdoor>);

<ore:meatRaw>.add(<thebetweenlands:snail_flesh_raw>);
<ore:meatRaw>.add(<thebetweenlands:anadia_meat_raw>);
<ore:meatRaw>.add(<thebetweenlands:frog_legs_raw>);
<ore:meatRaw>.add(<thebetweenlands:barnacle>);
<ore:meatRaw>.add(<thebetweenlands:crab_stick>);