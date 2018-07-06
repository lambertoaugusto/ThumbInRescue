//game over batendo de frente indestrutivel
if(gameOver == 0){
    if(!global.fazendoAnimacao){
        global.velocidadeRoom = 0;
        playerEndless_obj.vspeed = 0;        
        //playerEndless_obj.sprite_index = player_dying;
        mudarSprite(playerEndless_obj,8)
        playerEndless_obj.image_speed = 0.5;
        global.fazendoAnimacao = true; 
        //tempoGO = get_timer();       
    }    
    else{
        if(playerEndless_obj.image_index>19){
            gameOver = 5;   
        }
    }
}
//game over batendo esquerda e perdendo todas as vidas
else if(gameOver == 1){
    if(!global.fazendoAnimacao){
        //playerEndless_obj.sprite_index = player_bat_dir;        
        mudarSprite(playerEndless_obj,3);
        playerEndless_obj.vspeed = 0;
        playerEndless_obj.image_speed = 1;
        global.fazendoAnimacao = true;
        tempoGO = get_timer();       
    }
    else{        
        playerEndless_obj.x = playerEndless_obj.x + 1.5;        
        if(get_timer()-tempoGO > 2*segundo){
            gameOver = 4;   
        }
    }    
}
//game over batendo direita e perdendo todas as vidas
else if(gameOver == 2){
    if(!global.fazendoAnimacao){
        //playerEndless_obj.sprite_index = player_bat_dir;        
        mudarSprite(playerEndless_obj,3);
        playerEndless_obj.vspeed = 0;
        playerEndless_obj.image_speed = 1;
        global.fazendoAnimacao = true;
        tempoGO = get_timer();       
    }
    else{        
        playerEndless_obj.x = playerEndless_obj.x - 1.5;        
        if(get_timer()-tempoGO > 2*segundo){
            gameOver = 4;   
        }
    }
}
//game over batendo e perdendo todas as vidas no destrutível
else if(gameOver == 3){
    if(!global.fazendoAnimacao){
        //playerEndless_obj.sprite_index = player_bat;        
        mudarSprite(playerEndless_obj,5);
        playerEndless_obj.vspeed = 0;
        playerEndless_obj.image_speed = 1;
        global.fazendoAnimacao = true;
        tempoGO = get_timer();       
    }
    else{             
        if(get_timer()-tempoGO > 2*segundo){
            gameOver = 4;   
        }
    }
}
else if(gameOver == 4){
    //mostrar score, gravar o nome!!!
    a = instance_create(room_width/2,room_height/2,obj_gameOver);    
    gameOver = 6;
}
else if(gameOver == 5){    
    mudarSprite(playerEndless_obj,9);
    gameOver = 4;
}
