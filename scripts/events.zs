import mods.contenttweaker.Commands;
import crafttweaker.event.PlayerInteractEntityEvent;

val hunter = <entity:vampirism:vampire_hunter>;

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

// UNUSED
//Commands.call("summon vampirism:hunter_trainer " + event.position.x + " " + event.position.y + " " + event.position.z, event.player, event.world, false, true);