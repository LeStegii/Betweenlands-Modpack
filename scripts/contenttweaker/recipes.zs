// Variables
val pebble = <thebetweenlands:items_misc:50>;

// Tooltips
<contenttweaker:bananas>.addTooltip(format.yellow("Safety-Bananas!"));
<contenttweaker:bananas>.addShiftTooltip(format.yellow("Extremely rare Sap Tree Leaves drop."));
<contenttweaker:crude_axe>.addTooltip(format.gold("A very weak axe for getting some logs"));
pebble.addTooltip(format.green("Could be used to craft an axe"));

// Recipes
recipes.addShaped("ct_crude_axe", <contenttweaker:crude_axe>,[
	[<contenttweaker:crude_tool_head>],
	[<thebetweenlands:items_misc:7>],
	[<contenttweaker:crude_handle>]
]);

recipes.addShaped("ct_crude_handle", <contenttweaker:crude_handle>, [
	[<ore:stickWood>],
	[<ore:stickWood>]
]);

recipes.addShaped("ct_crude_tool_head", <contenttweaker:crude_tool_head>, [
	[pebble, pebble]
]);