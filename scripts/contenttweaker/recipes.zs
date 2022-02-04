import crafttweaker.oredict.IOreDictEntry;

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
	[<contenttweaker:crude_handle>]
]);

recipes.addShaped("ct_crude_handle", <contenttweaker:crude_handle>, [
	[<ore:stickWood>],
	[<ore:stickWood>]
]);

recipes.addShaped("ct_crude_tool_head", <contenttweaker:crude_tool_head>, [
	[pebble, pebble]
]);

furnace.addRecipe(<minecraft:gunpowder>, <contenttweaker:sulfur_dust>);

// OreDict
<ore:dustSulfur>.add(<contenttweaker:sulfur_dust>);
<ore:dustSyrmorite>.add(<contenttweaker:syrmorite_dust>);
<ore:dustOctine>.add(<contenttweaker:octine_dust>);
<ore:dustValonite>.add(<contenttweaker:valonite_dust>);
<ore:dustCarbon>.add(<contenttweaker:carbon_dust>);

// Syrmorite Dust
recipes.addShapeless(<contenttweaker:syrmorite_dust>, [
	<rustic:dust_tiny_iron>,
	<rustic:dust_tiny_iron>,
	<rustic:dust_tiny_iron>,
	<rustic:dust_tiny_iron>,
	<rustic:dust_tiny_iron>,
	<rustic:dust_tiny_iron>,
	<rustic:dust_tiny_iron>,
	<rustic:dust_tiny_iron>,
	<rustic:dust_tiny_iron>
]);

recipes.addShapeless(<rustic:dust_tiny_iron>*9, [
	<ore:dustSyrmorite>
]);

furnace.addRecipe(<thebetweenlands:items_misc:11>, <ore:dustSyrmorite>);
furnace.addRecipe(<thebetweenlands:items_misc:41>, <rustic:dust_tiny_iron>);

// Octine Dust
recipes.addShapeless(<contenttweaker:octine_dust>, [
	<prodigytech:gold_dust_tiny>,
	<prodigytech:gold_dust_tiny>,
	<prodigytech:gold_dust_tiny>,
	<prodigytech:gold_dust_tiny>,
	<prodigytech:gold_dust_tiny>,
	<prodigytech:gold_dust_tiny>,
	<prodigytech:gold_dust_tiny>,
	<prodigytech:gold_dust_tiny>,
	<prodigytech:gold_dust_tiny>
]);

recipes.addShapeless(<prodigytech:gold_dust_tiny>*9, [
	<ore:dustOctine>
]);

furnace.addRecipe(<thebetweenlands:octine_ingot>, <ore:dustOctine>);
furnace.addRecipe(<thebetweenlands:items_misc:42>, <prodigytech:gold_dust_tiny>);


<contenttweaker:trainer_card>.addTooltip("Rightclick any hunter to make him a Trainer.");
recipes.addShaped("trainer_card", <contenttweaker:trainer_card>, [
	[<ore:dustFerramic>, <ore:dustSyrmorite>, <ore:dustFerramic>],
	[<ore:dustSyrmorite>, <thebetweenlands:items_misc:32>, <ore:dustSyrmorite>],
	[<ore:dustFerramic>, <ore:dustSyrmorite>, <ore:dustFerramic>]
]);