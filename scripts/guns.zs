import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.recipes.IFurnaceRecipe;


val pipegun = <archaicguns:pipegun>.withTag({Gun: {general: {rate: 30}}, AdditionalDamage: -6.0 as float, SmokeRight: 0.5 as float, AmmoCount: 0, SmokeSpeed: 0.03, SmokeForward: 1.7 as float, SmokeType: "smoke", SmokeUp: 1.35 as float, Backblast: 0.3 as float, BlastBreaking: 0.31 as float, SmokeCount: 8});
val musket = <archaicguns:musket>.withTag({Gun: {general: {rate: 30}}, AdditionalDamage: -5.0 as float, SmokeRight: 0.5 as float, AmmoCount: 0, SmokeSpeed: 0.03, SmokeForward: 1.9 as float, SmokeType: "smoke", SmokeUp: 1.38 as float, Backblast: 0.3 as float, BlastBreaking: 0.31 as float, SmokeCount: 8});
val blunderbuss = <archaicguns:blunderbuss>.withTag({Gun: {general: {rate: 30}}, AdditionalDamage: -15.0 as float, SmokeRight: 0.53 as float, AmmoCount: 0, SmokeSpeed: 0.04, SmokeForward: 1.5 as float, SmokeType: "smoke", SmokeUp: 1.38 as float, Backblast: 0.06 as float, BlastBreaking: 0.31 as float, SmokeCount: 2});
val slagger = <archaicguns:slagger>.withTag({Gun: {general: {rate: 4}}, AdditionalDamage: -4.0 as float, SmokeRight: 0.53 as float, AmmoCount: 0, SmokeSpeed: 0.05, SmokeForward: 1.4 as float, SmokeType: "smoke", SmokeUp: 1.29 as float, Backblast: 0.03 as float, BlastBreaking: 0.31 as float, SmokeCount: 1});
val rotatingboltlauncher = <archaicguns:rotatingboltlauncher>.withTag({Gun: {general: {rate: 3}}, AdditionalDamage: -3.0 as float, SmokeRight: 0.5 as float, AmmoCount: 0, SmokeSpeed: 0.03, SmokeForward: 1.3 as float, SmokeType: "smoke", SmokeUp: 1.1 as float, Backblast: 0.1 as float, BlastBreaking: 0.31 as float, SmokeCount: 5});
val rifle = <archaicguns:rifle>.withTag({Gun: {general: {rate: 40}}, AdditionalDamage: -20.0 as float, SmokeRight: 0.55 as float, AmmoCount: 0, SmokeSpeed: 0.03, SmokeForward: 2.1 as float, SmokeType: "smoke", SmokeUp: 1.38 as float, Backblast: 0.4 as float, BlastBreaking: 0.31 as float, SmokeCount: 10});
val repeater = <archaicguns:repeater>.withTag({Gun: {general: {rate: 10}}, AdditionalDamage: -5.0 as float, SmokeRight: 0.5 as float, AmmoCount: 0, SmokeSpeed: 0.03, SmokeForward: 1.9 as float, SmokeType: "smoke", SmokeUp: 1.38 as float, Backblast: 0.2 as float, BlastBreaking: 0.31 as float, SmokeCount: 8});
val repeateralt = <archaicguns:repeateralt>.withTag({Gun: {general: {rate: 10}}, AdditionalDamage: -5.0 as float, SmokeRight: 0.5 as float, AmmoCount: 0, SmokeSpeed: 0.03, SmokeForward: 1.9 as float, SmokeType: "smoke", SmokeUp: 1.38 as float, Backblast: 0.2 as float, BlastBreaking: 0.31 as float, SmokeCount: 8});
val coachgun = <archaicguns:coachgun>.withTag({Gun: {general: {rate: 6}}, AdditionalDamage: -18.0 as float, SmokeRight: 0.62 as float, AmmoCount: 0, SmokeSpeed: 0.04, SmokeForward: 1.7 as float, SmokeType: "smoke", SmokeUp: 1.3 as float, Backblast: 0.06 as float, BlastBreaking: 0.31 as float, SmokeCount: 2});
val boomstick = <archaicguns:boomstick>.withTag({Gun: {general: {rate: 40}}, AdditionalDamage: -25.0 as float, SmokeRight: 0.55 as float, AmmoCount: 0, ExplosionStrength: 1.65 as float, SmokeSpeed: 0.06, SmokeForward: 1.7 as float, SmokeType: "largesmoke", SmokeUp: 1.32 as float, Backblast: 0.8 as float, BlastBreaking: 3.0 as float, SmokeCount: 10});
val boomstickalt = <archaicguns:boomstickalt>.withTag({Gun: {general: {rate: 30}}, AdditionalDamage: -25.0 as float, SmokeRight: 0.62 as float, AmmoCount: 0, ExplosionStrength: 1.0 as float, SmokeSpeed: 0.05, SmokeForward: 1.6 as float, SmokeType: "smoke", SmokeUp: 1.34 as float, Backblast: 0.4 as float, BlastBreaking: 3.0 as float, SmokeCount: 20});
val pistol = <archaicguns:pistol>.withTag({AdditionalDamage: -5.0 as float, AmmoCount: 0});

val guns = [
	pipegun,
	musket,
	blunderbuss,
	pistol,
	slagger,
	rotatingboltlauncher,
	rifle,
	repeater,
	repeateralt,
	coachgun,
	boomstick,
	boomstickalt
] as IItemStack[];

val itemsToKeep = [
	<archaicguns:cartridge>,
	<archaicguns:pistol>,
	<archaicguns:pipegun>,
	<archaicguns:musket>,
	<archaicguns:blunderbuss>,
	<archaicguns:slagger>,
	<archaicguns:rotatingboltlauncher>,
	<archaicguns:rifle>,
	<archaicguns:repeater>,
	<archaicguns:repeateralt>,
	<archaicguns:coachgun>,
	<archaicguns:boomstick>,
	<archaicguns:boomstickalt>
] as IItemStack[];

recipes.addShaped("ct_cartridge", <archaicguns:cartridge>*8, [
	[<thebetweenlands:items_misc:18>],
	[<ore:blockSyrmorite>]
]);

recipes.addShapedMirrored("ct_pistol", pistol, [
	[<ore:gemValonite>, <rustic:iron_lattice>, null],
	[<ore:blockSyrmorite>, <vampirism:blood_infused_iron_ingot>, <vampirism:blood_infused_iron_ingot>],
	[<ore:logWood>, <ore:nuggetSyrmorite>, null]
]);

recipes.addShapedMirrored("ct_pipegun", pipegun, [
	[pistol, <vampirism:blood_infused_iron_ingot>, <vampirism:blood_infused_iron_ingot>]
]);

recipes.addShapedMirrored("ct_musket", musket, [
	[<ore:gemValonite>, <rustic:iron_lattice>, null],
	[<ore:blockSyrmorite>, <ore:blockSyrmorite>, <vampirism:blood_infused_iron_ingot>],
	[<ore:logWood>, <ore:nuggetSyrmorite>, <ore:stickWood>]
]);

recipes.addShapedMirrored("ct_rifle", rifle, [
	[musket, <vampirism:blood_infused_iron_ingot>, <vampirism:blood_infused_iron_ingot>],
	[<ore:blockSyrmorite>, null, null]
]);

recipes.addShapedMirrored("ct_rotatingboltlauncher", rotatingboltlauncher, [
	[<ore:gemValonite>, <rustic:iron_lattice>, null],
	[<ore:blockSyrmorite>, <ore:blockSyrmorite>, <thebetweenlands:syrmorite_barrel>],
	[<ore:logWood>, <ore:nuggetSyrmorite>, <vampirism:blood_infused_iron_ingot>]
]);

recipes.addShapeless("ct_slagger", slagger, [
	rotatingboltlauncher,
	rotatingboltlauncher,
	<vampirism:blood_infused_iron_ingot>
]);

recipes.addShapedMirrored("ct_blunderbuss", blunderbuss, [
	[<ore:gemValonite>, <rustic:iron_lattice>, null],
	[<ore:blockSyrmorite>, <ore:blockSyrmorite>, <ore:blockSyrmorite>],
	[<ore:logWood>, <ore:nuggetSyrmorite>, <vampirism:blood_infused_iron_ingot>]
]);

recipes.addShapeless("ct_coachgun", coachgun, [
	blunderbuss,
	blunderbuss,
	<vampirism:blood_infused_iron_ingot>
]);

for item in loadedMods["cgm"].items {
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

for item in loadedMods["archaicguns"].items {
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

for gun in itemsToKeep {
	JEI.addDescription(gun, "Damage values can be different (see in recipe).");
}