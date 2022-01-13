// SET THIS TO TRUE IF YOU WANT TO CRAFT WEEDWOOD STICKS/TOOLS FROM ALL WOODTYPES
val enableWoodOreDict = false;

// Leather
furnace.addRecipe(<minecraft:leather>, <thebetweenlands:items_misc:4>);

// Swamp Talisman
recipes.remove(<thebetweenlands:swamp_talisman>);

// String
recipes.addShapeless(<minecraft:string>, [
	<thebetweenlands:items_misc:6>,
	<thebetweenlands:items_misc:6>,
	<thebetweenlands:items_misc:6>
]);

if (enableWoodOreDict) {
	for item in loadedMods["thebetweenlands"].items {
		recipes.replaceAllOccurences(<thebetweenlands:weedwood_planks>, <ore:plankWood>, item);
	}
}