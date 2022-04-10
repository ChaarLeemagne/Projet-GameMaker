///chance pour avoir un power up qui sort de la brique 1/5 chance 
if(irandom(5) == 0){
	instance_create_layer(x,y,"Instances", Obj_power);
}