import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import mods.prodigytech.primordialisreactor;
import mods.prodigytech.rotarygrinder;
import mods.prodigytech.solderer;
import mods.prodigytech.magneticreassembler;
import mods.prodigytech.orerefinery;
import mods.prodigytech.atomicreshaper;

val itemsToRemove = [
	<prodigytech:coal_dust>,
	<prodigytech:emerald_dust>,
	<prodigytech:gold_dust>,
	<prodigytech:iron_dust>,
	<prodigytech:quartz_dust>,
	<prodigytech:flour>,
	<prodigytech:diamond_dust>,
	<prodigytech:iron_dust_tiny>,
	<prodigytech:zorrasteel_handbow>,
	<prodigytech:ore_refinery>,
	<prodigytech:ferramic_handbow>
] as IItemStack[];

for item in itemsToRemove {
	recipes.remove(item);
	JEI.hide(item);
}

<prodigytech:gold_dust_tiny>.displayName = "Tiny Pile of Octine Dust";
recipes.remove(<prodigytech:gold_dust_tiny>);


furnace.addRecipe(<contenttweaker:carbon_dust>, <minecraft:gunpowder>);

recipes.replaceAllOccurences(<ore:dustCoal>, <ore:dustSulfur>, <prodigytech:inferno_fuel>);
recipes.replaceAllOccurences(<ore:dustCoal>, <ore:dustSulfur>, <prodigytech:enriched_fuel>);
recipes.replaceAllOccurences(<ore:dustCoal>, <ore:dustCarbon>, <prodigytech:carbon_plate>);
recipes.replaceAllOccurences(<minecraft:netherrack>, <minecraft:netherbrick>, <prodigytech:tartaric_aeroheater>);
recipes.replaceAllOccurences(<minecraft:brick_block>, <thebetweenlands:betweenstone_bricks>, <prodigytech:ash_bricks>);
recipes.replaceAllOccurences(<ore:dustDiamond>, <ore:dustValonite>, <prodigytech:energion_dust>);
recipes.replaceAllOccurences(<ore:dustEmerald>, <ore:dustSyrmorite>, <prodigytech:energion_dust>);
recipes.replaceAllOccurences(<ore:dustQuartz>, <ore:dustFerramic>, <prodigytech:energion_dust>);

<ore:listGeneratesHeat>.addAll(<ore:blockOctine>);
<ore:listGeneratesHeat>.add(<thebetweenlands:octine_block>);

// Primordialis Reactor
primordialisreactor.removeInput(<minecraft:carrot>);
primordialisreactor.removeInput(<minecraft:potato>);
primordialisreactor.removeInput(<minecraft:cactus>);
primordialisreactor.removeInput(<minecraft:nether_wart>);
primordialisreactor.removeInput(<minecraft:wheat>);
primordialisreactor.removeInput(<minecraft:beetroot>);
primordialisreactor.removeInput(<minecraft:pumpkin_seeds>);
primordialisreactor.removeInput(<minecraft:brown_mushroom>);
primordialisreactor.removeInput(<minecraft:beetroot_seeds>);
primordialisreactor.removeInput(<minecraft:wheat_seeds>);
primordialisreactor.removeInput(<minecraft:melon_seeds>);
primordialisreactor.removeInput(<minecraft:melon>);
primordialisreactor.removeInput(<minecraft:pumpkin>);
primordialisreactor.removeInput(<minecraft:dye:3>);
primordialisreactor.removeInput(<minecraft:red_mushroom>);

primordialisreactor.addInput(<contenttweaker:bananas>);
primordialisreactor.addInput(<ore:herbRustic>);


// Explosion Furnace
mods.prodigytech.explosionfurnace.recipes.removeAll();
mods.prodigytech.explosionfurnace.recipes.addRecipe(<thebetweenlands:items_misc:11>.withAmount(1), <prodigytech:ferramic_ingot>.withAmount(1), 360, <rustic:beeswax>, 4);
mods.prodigytech.explosionfurnace.recipes.addRecipe(<thebetweenlands:items_misc:41>.withAmount(9), <prodigytech:ferramic_nugget>.withAmount(9), 360, <rustic:beeswax>, 4);
mods.prodigytech.explosionfurnace.recipes.addRecipe(<ore:ingotRawZorrasteel>, <prodigytech:zorrasteel_ingot>, 1440, <ore:dustCarbon>, 1);
mods.prodigytech.explosionfurnace.recipes.addRecipe(<ore:stone>, <prodigytech:charred_cobblestone>, 45);
mods.prodigytech.explosionfurnace.recipes.addRecipe(<ore:stoneCharred>, <prodigytech:charred_cobblestone>, 45);
mods.prodigytech.explosionfurnace.recipes.addRecipe(<ore:cobblestone>, <thebetweenlands:silt>, 45);
mods.prodigytech.explosionfurnace.recipes.addRecipe(<ore:cobblestoneCharred>, <thebetweenlands:silt>, 45);

// Solderer
solderer.removeRecipe(<prodigytech:pattern_circuit_perfected>, <minecraft:diamond>);
solderer.removeRecipe(<prodigytech:pattern_circuit_refined>, <minecraft:iron_ingot>);
solderer.addRecipe(<prodigytech:pattern_circuit_refined>, <contenttweaker:syrmorite_dust>, <prodigytech:circuit_refined>, 6);
solderer.addRecipe(<prodigytech:pattern_circuit_perfected>, <contenttweaker:valonite_dust>, <prodigytech:circuit_perfected>, 9);

// Magnetic Reassembler
magneticreassembler.removeAll();
magneticreassembler.addRecipe(<ore:dustSulfur>, <thebetweenlands:items_misc:18>);
magneticreassembler.addRecipe(<ore:dustValonite>, <thebetweenlands:items_misc:19>);
magneticreassembler.addRecipe(<ore:dustSyrmorite>, <thebetweenlands:items_misc:11>);
magneticreassembler.addRecipe(<rustic:dust_tiny_iron>, <thebetweenlands:items_misc:41>);
magneticreassembler.addRecipe(<ore:dustOctine>, <thebetweenlands:octine_ingot>);
magneticreassembler.addRecipe(<prodigytech:gold_dust_tiny>, <thebetweenlands:items_misc:42>);
magneticreassembler.addRecipe(<ore:dustCarbon>, <minecraft:gunpowder>);
magneticreassembler.addRecipe(<ore:dustFerramic>, <prodigytech:ferramic_ingot>);
magneticreassembler.addRecipe(<prodigytech:ferramic_dust_tiny>, <prodigytech:ferramic_nugget>);
magneticreassembler.addRecipe(<prodigytech:energion_dust>, <prodigytech:energion_crystal_seed>);
magneticreassembler.addRecipe(<prodigytech:inferno_fuel>, <prodigytech:inferno_crystal>);
magneticreassembler.addRecipe(<ore:cobblestoneCharred>, <prodigytech:charred_stone>);
magneticreassembler.addRecipe(<ore:stoneCharred>, <prodigytech:charred_stonebricks>);
magneticreassembler.addRecipe(<ore:cobblestone>, <thebetweenlands:smooth_betweenstone>);
magneticreassembler.addRecipe(<thebetweenlands:cragrock>, <thebetweenlands:smooth_cragrock>);
magneticreassembler.addRecipe(<thebetweenlands:pitstone>, <thebetweenlands:smooth_pitstone>);
magneticreassembler.addRecipe(<minecraft:sugar>, <prodigytech:sugar_cube>);

//Rotary Grinder
rotarygrinder.removeAll();
rotarygrinder.addRecipe(<ore:logWood>, <prodigytech:sawdust>*4);
rotarygrinder.addRecipe(<ore:plankWood>, <prodigytech:sawdust>);

rotarygrinder.addRecipe(<ore:stone>, <thebetweenlands:betweenstone>);
rotarygrinder.addRecipe(<ore:cobblestone>, <thebetweenlands:silt>);
rotarygrinder.addRecipe(<ore:cobblestoneCharred>, <thebetweenlands:silt>);
rotarygrinder.addRecipe(<ore:stoneCharred>, <prodigytech:charred_cobblestone>);
rotarygrinder.addRecipe(<prodigytech:charred_stonebricks>, <prodigytech:charred_cobblestone>);

rotarygrinder.addRecipe(<ore:oreSyrmorite>, <contenttweaker:syrmorite_dust>*2);
rotarygrinder.addRecipe(<ore:blockSyrmorite>, <contenttweaker:syrmorite_dust>*9);
rotarygrinder.addRecipe(<ore:ingotSyrmorite>, <contenttweaker:syrmorite_dust>);

rotarygrinder.addRecipe(<ore:blockSulfur>, <contenttweaker:sulfur_dust>*9);
rotarygrinder.addRecipe(<thebetweenlands:items_misc:18>, <contenttweaker:sulfur_dust>);

rotarygrinder.addRecipe(<ore:oreOctine>, <contenttweaker:octine_dust>*2);
rotarygrinder.addRecipe(<ore:blockOctine>, <contenttweaker:octine_dust>*9);
rotarygrinder.addRecipe(<ore:ingotOctine>, <contenttweaker:octine_dust>);
rotarygrinder.addRecipe(<ore:nuggetOctine>, <prodigytech:gold_dust_tiny>);

rotarygrinder.addRecipe(<ore:oreValonite>, <thebetweenlands:items_misc:19>*2);
rotarygrinder.addRecipe(<ore:gemValonite>, <contenttweaker:valonite_dust>);
rotarygrinder.addRecipe(<ore:blockValonite>, <contenttweaker:valonite_dust>*9);

rotarygrinder.addRecipe(<ore:oreBone>, <thebetweenlands:items_misc:14>*3);

rotarygrinder.addRecipe(<ore:blockFerramic>, <prodigytech:ferramic_dust>*9);
rotarygrinder.addRecipe(<ore:ingotFerramic>, <prodigytech:ferramic_dust>);
rotarygrinder.addRecipe(<ore:nuggetFerramic>, <prodigytech:ferramic_dust_tiny>);
rotarygrinder.addRecipe(<prodigytech:ferramic_gear>, <prodigytech:ferramic_dust_tiny>*32);

rotarygrinder.addRecipe(<ore:gemEnergion>, <prodigytech:energion_dust>*2);
rotarygrinder.addRecipe(<prodigytech:inferno_crystal>, <prodigytech:inferno_fuel>*2);
rotarygrinder.addRecipe(<ore:oreScabyst>, <thebetweenlands:items_misc:39>*2);
rotarygrinder.addRecipe(<ore:oreAquaMiddleGem>, <thebetweenlands:aqua_middle_gem>*2);
rotarygrinder.addRecipe(<ore:oreCrimsonMiddleGem>, <thebetweenlands:crimson_middle_gem>*2);
rotarygrinder.addRecipe(<ore:oreGreenMiddleGem>, <thebetweenlands:green_middle_gem>*2);
rotarygrinder.addRecipe(<ore:oreLifeCrystal>, <thebetweenlands:life_crystal>*2);

rotarygrinder.addRecipe(<ore:meatRaw>, <prodigytech:meat_ground>);

rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:0>, <thebetweenlands:items_crushed:0>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:13>, <thebetweenlands:items_crushed:1>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:28>, <thebetweenlands:items_crushed:2>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:24>, <thebetweenlands:items_crushed:3>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:2>, <thebetweenlands:items_crushed:4>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:11>, <thebetweenlands:items_crushed:5>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:18>, <thebetweenlands:items_crushed:6>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:23>, <thebetweenlands:items_crushed:7>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:26>, <thebetweenlands:items_crushed:8>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:19>, <thebetweenlands:items_crushed:9>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:31>, <thebetweenlands:items_crushed:10>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:4>, <thebetweenlands:items_crushed:11>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:15>, <thebetweenlands:items_crushed:12>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:3>, <thebetweenlands:items_crushed:13>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:8>, <thebetweenlands:items_crushed:14>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:9>, <thebetweenlands:items_crushed:15>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_misc:13>, <thebetweenlands:items_crushed:16>*2);
rotarygrinder.addRecipe(<thebetweenlands:log_weedwood:*>, <thebetweenlands:items_crushed:16>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_misc:6>, <thebetweenlands:items_crushed:17>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:1>, <thebetweenlands:items_crushed:18>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_misc:21>, <thebetweenlands:items_crushed:19>*2);
rotarygrinder.addRecipe(<thebetweenlands:black_hat_mushroom_item>, <thebetweenlands:items_crushed:20>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_misc:0>, <thebetweenlands:items_crushed:21>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:7>, <thebetweenlands:items_crushed:22>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:10>, <thebetweenlands:items_crushed:23>*2);
rotarygrinder.addRecipe(<thebetweenlands:bulb_capped_mushroom_item>, <thebetweenlands:items_crushed:24>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:12>, <thebetweenlands:items_crushed:25>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:14>, <thebetweenlands:items_crushed:26>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:29>, <thebetweenlands:items_crushed:27>*2);
rotarygrinder.addRecipe(<thebetweenlands:crimson_middle_gem>, <thebetweenlands:items_crushed:28>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:6>, <thebetweenlands:items_crushed:29>*2);
rotarygrinder.addRecipe(<thebetweenlands:flat_head_mushroom_item>, <thebetweenlands:items_crushed:30>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:16>, <thebetweenlands:items_crushed:31>*2);
rotarygrinder.addRecipe(<thebetweenlands:green_middle_gem>, <thebetweenlands:items_crushed:32>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:32>, <thebetweenlands:items_crushed:33>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:17>, <thebetweenlands:items_crushed:34>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:20>, <thebetweenlands:items_crushed:35>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:5>, <thebetweenlands:items_crushed:36>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_misc:1>, <thebetweenlands:items_crushed:37>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:30>, <thebetweenlands:items_crushed:38>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:21>, <thebetweenlands:items_crushed:39>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:22>, <thebetweenlands:items_crushed:40>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:25>, <thebetweenlands:items_crushed:41>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:27>, <thebetweenlands:items_crushed:42>*2);
rotarygrinder.addRecipe(<thebetweenlands:swamp_kelp_item>, <thebetweenlands:items_crushed:43>*2);
rotarygrinder.addRecipe(<thebetweenlands:tangled_root>, <thebetweenlands:items_crushed:44>*2);
rotarygrinder.addRecipe(<thebetweenlands:giant_root>, <thebetweenlands:items_crushed:44>*2);
rotarygrinder.addRecipe(<thebetweenlands:aqua_middle_gem>, <thebetweenlands:items_crushed:45>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:33>, <thebetweenlands:items_crushed:46>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:34>, <thebetweenlands:items_crushed:47>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:35>, <thebetweenlands:items_crushed:48>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:36>, <thebetweenlands:items_crushed:49>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:37>, <thebetweenlands:items_crushed:50>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:38>, <thebetweenlands:items_crushed:51>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:40>, <thebetweenlands:items_crushed:52>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:39>, <thebetweenlands:items_crushed:53>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:41>, <thebetweenlands:items_crushed:54>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:42>, <thebetweenlands:items_crushed:55>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:43>, <thebetweenlands:items_crushed:56>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:44>, <thebetweenlands:items_crushed:57>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:45>, <thebetweenlands:items_crushed:58>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:46>, <thebetweenlands:items_crushed:59>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_plant_drop:47>, <thebetweenlands:items_crushed:60>*2);
rotarygrinder.addRecipe(<thebetweenlands:items_misc:50>, <thebetweenlands:items_crushed:61>*2*2);

rotarygrinder.addRecipe(<thebetweenlands:limestone>, <thebetweenlands:items_misc:27>*4);
rotarygrinder.addRecipe(<thebetweenlands:polished_limestone>, <thebetweenlands:items_misc:27>*4);

rotarygrinder.addRecipe(<rustic:marsh_mallow>, <minecraft:sugar>*3);

// Ore Refinery
orerefinery.removeAll();

// Atomic Reshaper

val ores = [
	<thebetweenlands:sulfur_ore>,
	<thebetweenlands:slimy_bone_ore>,
	<thebetweenlands:syrmorite_ore>,
	<thebetweenlands:octine_ore>, 
	<thebetweenlands:scabyst_ore>,
	<thebetweenlands:aqua_middle_gem_ore>,
	<thebetweenlands:crimson_middle_gem_ore>,
	<thebetweenlands:green_middle_gem_ore>,
	<thebetweenlands:valonite_ore>
] as IItemStack[];

val weigths = [9, 8, 7, 6, 5, 4, 3, 2, 1] as int[];

atomicreshaper.removeRecipe(<ore:stone>);
atomicreshaper.removeRecipe(<thebetweenlands:smooth_betweenstone>);
atomicreshaper.removeRecipe(<ore:dirt>);
atomicreshaper.removeRecipe(<ore:sand>);
atomicreshaper.removeRecipe(<minecraft:paper>);
atomicreshaper.addRecipeMulti(<thebetweenlands:smooth_betweenstone>, 20, 100, ores, weigths);
atomicreshaper.addRecipe(<ore:stoneCharred>, <rustic:slate>, 2);
atomicreshaper.addRecipe(<thebetweenlands:items_misc:46>, <thebetweenlands:angry_pebble>, 10);