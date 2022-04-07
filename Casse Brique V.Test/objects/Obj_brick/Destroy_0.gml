///chance pour avoir un power up qui sort de la brique
if(irandom(2) == 0){
	instance_create_layer(x,y,"Instances", Obj_power);
}