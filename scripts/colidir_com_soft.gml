nome_obj=argument0;
nome_player=argument1;
if(((position_meeting(nome_player.x,nome_player.y+26,nome_obj))||
  (position_meeting(nome_player.x+20,nome_player.y+33,nome_obj))||
  (position_meeting(nome_player.x-20,nome_player.y+33,nome_obj)))){
    if(global.gameOver == -1){
        if(!global.dashFlag){
            //nome_player.sprite_index = player_bat;            
            global.tempoBatFrente = get_timer() + (0.5*segundo);
            global.batFrente = true;
            global.multiplicador = 1;
            //global.scoreCounter = 0;
            obj_multiplicador.sprite_index = mult1x;
            obj_multiplicador.image_speed = 0.25;
            mudarSprite(nome_player,5);
            if (global.vidas>1){
                global.vidas--;
            }
            else{
                global.vidas--;
                global.vivo = -1;
                global.gameOver = 3;
            }
        }                
    }
    else if(global.gameOver == 1 && global.gameOver == 2){
        global.gameOver = 3;   
        global.fazendoAnimacao = false;
    }
    
            //inserindo o som
            if(tema[temaAtual]=='cristais'){
                audio_sound_gain(audio_play_sound(quebrar_cristal_sound,1,false),1,0);
            }
            else if(tema[temaAtual]=='ruinas'){
                ind = nome_obj.sprite_index
                if (ind == desruina11){
                    audio_sound_gain(audio_play_sound(quebrar_cristal_sound,1,false),1,0);
                }
                else if (ind == desruina12 || ind == desruina15 || ind == desruina24){
                    audio_sound_gain(audio_play_sound(quebrar_madeira_sound,1,false),1,0);
                }
                else if(ind == desruina14 ||ind == desruina13 || ind == desruina21){
                    audio_sound_gain(audio_play_sound(quebrar_pedra_fina_sound,1,false),1,0);
                }
                else{
                    audio_sound_gain(audio_play_sound(quebrar_pedra_densa_sound,1,false),1,0);
                }
            }    
    instance_destroy();    
}
