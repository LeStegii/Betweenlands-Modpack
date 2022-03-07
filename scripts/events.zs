import mods.contenttweaker.Commands;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.PlayerLeftClickBlockEvent;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlock;

val hunter = <entity:vampirism:vampire_hunter>;
val villager = <entity:minecraft:villager>;

<ore:logWood>.add(<thebetweenlands:log_rotten_bark>);

events.onPlayerInteractEntity(function(event as crafttweaker.event.PlayerInteractEntityEvent){
	// Is the event executed on the server and is the clicked entity a hunter?
	if (event.world.remote || event.target.definition.id != hunter.id || event.player.currentItem.name != <contenttweaker:trainer_card>.name) {
		return;
	}
	// Cancel the event and kill the entity
	event.cancel();
	event.target.setDead();
	// Remove item from the player
	event.player.currentItem.mutable().shrink(1);
	// Spawn a hunter trainer
	<entity:vampirism:hunter_trainer>.spawnEntity(event.world, event.position);
});

events.onPlayerInteractEntity(function(event as crafttweaker.event.PlayerInteractEntityEvent){
	// Is the event executed on the server and is the clicked entity a villager?
	if (event.world.remote || event.target.definition.id != villager.id || event.target.displayName has "BYPASS") {
		return;
	}
	// Cancel the event
	event.cancel();
	event.player.sendStatusMessage("It seems like they don't want to trade...", true);
});

// UNUSED
//Commands.call("summon vampirism:hunter_trainer " + event.position.x + " " + event.position.y + " " + event.position.z, event.player, event.world, false, true);


events.onPlayerLeftClickBlock(function(event as crafttweaker.event.PlayerLeftClickBlockEvent){
	// Is the event executed on the server, is the player in survival, does the player break a log using an axe?
	var item = event.player.currentItem;
	if (event.world.remote || event.player.creative ||!isInOredict(event.block, <ore:logWood>) || (!isNull(item) && item.toolClasses has "axe")) {
		return;
	}
	event.player.sendStatusMessage("This wood seems to be pretty hard. You might want to use an axe.", true);
});

function isInOredict(block as IBlock, ore as IOreDictEntry) as bool {
	for item in ore.items {
		if (item.asBlock().definition.id == block.definition.id) {
			return true;
		}
	}
	return false;
}