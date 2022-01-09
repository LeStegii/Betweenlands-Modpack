import mods.jei.JEI;

// Wrench
JEI.removeAndHide(<burlapsack:burlap_fabric>);

//
recipes.remove(<burlapsack:burlap_sack>);
recipes.addShapeless("ct_burlap_sack", <burlapsack:burlap_sack>, [
	<thebetweenlands:lurker_skin_pouch>,
	<ore:gemValonite>
]);