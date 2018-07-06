if(global.scoreCounter >= 20 and global.scoreCounter < 40){
    global.multiplicador = 2;
    global.velocidadeRoom = -18;
    obj_multiplaier.sprite_index = mult2x;
}
else if(global.scoreCounter >= 40 and global.scoreCounter < 100){
    global.multiplicador = 3;
    global.velocidadeRoom = -21;
    obj_multiplaier.sprite_index = mult3x;
}
else if(global.scoreCounter >= 100){
    global.multiplicador = 4;
    global.velocidadeRoom = -25;
    obj_multiplaier.sprite_index = mult4x;
}
