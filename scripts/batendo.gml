nome_player=argument0;

if(global.gameOver == -1 && (global.batDir)&&(!global.batSolido2)&&(!global.batEsq)){    
    if(get_timer() < global.tempoBatDir){    
        nome_player.x -= 5;
    }
    else{
        global.batDir = false;            
        //nome_player.sprite_index = player_spr;        
        mudarSprite(nome_player,0);
        global.movimentoLiberado = true;
    }
}
else if(global.gameOver == -1 && (global.batEsq)&&(!global.batSolido2)&&(!global.batDir)){    
    if(get_timer() < global.tempoBatEsq){    
        nome_player.x += 5;
    }
    else{
        global.batEsq = false;    
        mudarSprite(nome_player,0);
        global.movimentoLiberado = true;
    }
}
else if(global.gameOver == -1 && (global.batFrente)&&!(global.batSolido2)){    
    if(!(get_timer() < global.tempoBatFrente)){    
        global.batFrente = false;    
        mudarSprite(nome_player,0);        
    }    
}
