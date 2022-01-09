import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val itemsToKeep = [
	<ironchest:wood_iron_chest_upgrade>,
	<ironchest:iron_gold_chest_upgrade>,
	<ironchest:gold_diamond_chest_upgrade>,
	<ironchest:diamond_crystal_chest_upgrade>,
	<ironchest:iron_chest:0>,
	<ironchest:iron_chest:1>,
	<ironchest:iron_chest:2>,
	<ironchest:iron_chest:5>,
] as IItemStack[];

for item in loadedMods["ironchest"].items {
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

<ironchest:iron_chest:0>.displayName = "Syrmorite Chest";
<ironchest:iron_chest:1>.displayName = "Octine Chest";
<ironchest:iron_chest:2>.displayName = "Valonite Chest";
<ironchest:iron_chest:5>.displayName = "Valonite Crystal Chest";

<ironchest:wood_iron_chest_upgrade>.displayName = "Wood to Syrmorite Chest Upgrade";
<ironchest:iron_gold_chest_upgrade>.displayName = "Syrmorite to Octine Chest Upgrade";
<ironchest:gold_diamond_chest_upgrade>.displayName = "Octine to Valonite Chest Upgrade";
<ironchest:diamond_crystal_chest_upgrade>.displayName = "Valonite to Valonite Crystal Chest Upgrade";

recipes.removeByRecipeName("crafttweaker:ironchest_chest/diamond/silver_diamond_chest_modified");
recipes.removeByRecipeName("ironchest:chest/diamond/silver_diamond_chest");
recipes.removeByRecipeName("crafttweaker:ironchest_chest/gold/silver_gold_chest_modified");
recipes.removeByRecipeName("ironchest:chest/gold/silver_gold_chest");
recipes.removeByRecipeName("crafttweaker:ironchest_chest/iron/copper_iron_chest_modified");
recipes.removeByRecipeName("ironchest:chest/iron/copper_iron_chest");