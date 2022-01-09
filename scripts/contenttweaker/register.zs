#loader contenttweaker

// Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemDestroyedBlock;

// Crude Handle Item
var crudehandleItem = VanillaFactory.createItem("crude_handle");
crudehandleItem.maxStackSize = 16;
crudehandleItem.rarity = "COMMON";
crudehandleItem.register();

// Crude Tool Head Item
var crudetoolheadItem = VanillaFactory.createItem("crude_tool_head");
crudetoolheadItem.maxStackSize = 1;
crudetoolheadItem.rarity = "COMMON";
crudetoolheadItem.register();

// Crude Axe Item
var crudeaxeItem = VanillaFactory.createItem("crude_axe");
crudeaxeItem.maxStackSize = 1;
crudeaxeItem.rarity = "COMMON";
crudeaxeItem.toolClass = "axe";
crudeaxeItem.toolLevel = 1;
crudeaxeItem.maxDamage = 10;
crudeaxeItem.itemDestroyedBlock = function(stack, world, blockState, pos, player) {
	stack.damage(1, player);
	return true;
};
crudeaxeItem.register();

// Bananas
var bananas = VanillaFactory.createItemFood("bananas", 25);
bananas.maxStackSize = 16;
bananas.saturation = 12;
crudeaxeItem.rarity = "COMMON";
bananas.register();