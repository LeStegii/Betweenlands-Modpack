#loader contenttweaker
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.VanillaFactory;

var bananas = VanillaFactory.createItemFood("bananas", 25);
bananas.maxStackSize = 16;
bananas.saturation = 12;
bananas.register();