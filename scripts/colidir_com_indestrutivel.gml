nome_obj=argument0;//por o nome do deste obj
nome_player=argument1;
if ((global.vivo==1)||(global.vivo==-1)){
 
    //colisão frontal com morte
    if(position_meeting(nome_player.x,nome_player.y+26,nome_obj)){        
        if(global.gameOver == -1){
            if(!global.batSolido2){
                //nome_player.sprite_index = player_dying;
                //nome_player.image_speed = 0.5;
                //global.tempoBatSolido2 = get_timer() + (3*segundo);
                //global.tempoBatMorto2 = get_timer() + (0.72*segundo); 
                audio_sound_gain(audio_play_sound(morte_sound,1,false),1,0);               
                global.batSolido2 = true;
                global.vidas=0;
                global.vivo=0;
                global.gameOver = 0;            
            }  
        }
        else if(global.gameOver != 0){
            global.gameOver = 0;   
            global.velocidadeRoom = 0;
            playerEndless_obj.vspeed = 0;            
            global.fazendoAnimacao = false;       
        }
    }
    
    //colisão lateral a direita
    if (position_meeting(nome_player.x+20,nome_player.y+33,nome_obj)){
        if(global.gameOver == -1){
            if(global.batEsq){
                global.batEsq=false;
            }
            if(!global.batDir){
                global.multiplicador = 1;
                //global.scoreCounter = 0;
                obj_multiplicador.sprite_index = mult1x;
                obj_multiplicador.image_speed = 0.25;
                //nome_player.sprite_index = player_bat_dir;
                mudarSprite(nome_player,3);
                audio_sound_gain(audio_play_sound(batendo_sound,1,false),1,0);
                global.tempoBatDir = get_timer() + (0.25*segundo);
                global.batDir = true;
                if (global.vidas>1){
                    global.vidas--;
                }
                else{
                    global.vidas--;
                    global.vivo = -1;
                    global.gameOver = 2;
                }   
                //colidiu_lateral=1;                
            }
        }
        else if(global.gameOver == 1 && global.gameOver == 3){
            global.gameOver = 2;
            global.fazendoAnimacao = false;   
        }
    }    
    
    //colisão lateral esquerda
    if (position_meeting(nome_player.x-20,nome_player.y+33,nome_obj)){
        if(global.gameOver == -1){
            if(global.batDir){
                global.batDir=false;
            }
            if(!global.batEsq){
                global.multiplicador = 1;
                //global.scoreCounter = 0;
                obj_multiplicador.sprite_index = mult1x;
                obj_multiplicador.image_speed = 0.25;
                //nome_player.sprite_index = player_bat_dir;
                mudarSprite(nome_player,3);
                audio_sound_gain(audio_play_sound(batendo_sound,1,false),1,0);
                global.tempoBatEsq = get_timer() + (0.25*segundo);
                global.batEsq = true;
                if (global.vidas>1){
                    global.vidas--;
                }
                else{
                    global.vivo = -1;
                    global.gameOver = 1;
                } 
                //colidiu_lateral=1;                
            }
        }
        else if(global.gameOver == 2 && global.gameOver == 3){
            global.gameOver = 1;
            global.fazendoAnimacao = false;   
        }
    }    
}
