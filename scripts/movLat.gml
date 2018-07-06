//verifica o movimento para a direita
if (global.vivo==1){
    if (keyboard_check(vk_right) && !girandoDir && !girandoEsq && !batDir && !batEsq)
    {    
        if(tempoXLiberado){
            tempoX = get_timer();
            tempoXLiberado = false;
        }
        velMov = (5+(acelH*((get_timer()-tempoX)/1000000)));
        if(velMov < 30){
            //sprite_index = player_dir;
            if(!batFrente){
                mudarSprite(self,1);
            }
            x += velMov;
        }
        else{
            //sprite_index = player_dir;
            if(!batFrente){
                mudarSprite(self,1);
            }
            x += 30;
        }
    }

    //verifica o movimento para a esquerda
    if (keyboard_check(vk_left) && !girandoDir && !girandoEsq && !batDir && !batEsq)
    {   
        if(tempoXLiberado){
            tempoX = get_timer();
            tempoXLiberado = false;
        }
        velMov = 5+(acelH*((get_timer()-tempoX)/1000000));
        if(velMov < 30){
            //sprite_index = player_esq;
            if(!batFrente){
                mudarSprite(self,2);
            }
            x -= velMov;
        }
        else{
            //sprite_index = player_esq;
            if(!batFrente){
                mudarSprite(self,2);
            }
            x -= 30;
        }
    }

    //verifica a esquiva para a direita
    
    if (get_timer()-esquivaDir > tempoEsquiva){
        quantDir = 0;
    }
    
    if(keyboard_check_pressed(vk_right) && !girandoDir){
        if(quantDir <= 1){
            esquivaDir = get_timer();
            quantDir += 1;        
        }
    }
    
    if ((quantDir > 1 || girandoDir) && !girandoEsq && !batDir && !batEsq)
    {     
       if(get_timer()-esquivaDir <= tempoDeGiro)
       {
            //if (!global.esq_ok){
                girandoDir = true;
                //sprite_index = player_gir_dir;
                mudarSprite(self,6);            
                if(!esquivou){
                    audio_sound_gain(audio_play_sound(esquiva_sound,1,false),0.8,0);
                    esquivou = true;
                }
                image_speed = 1.75;
                x += velEsquiva;
                //global.esq_ok = true;
            //}       
       }
       else
       {
            //global.esq_ok = false;
            esquivou = false;
            girandoDir = false
            quantDir = 0;
            //sprite_index = player_spr;
            mudarSprite(self,0);
            image_speed = 1*global.tempo_jogo;
       }
    }
    
    //verifica a esquiva para a esquerda
    if (get_timer()-esquivaEsq > tempoEsquiva){
        quantEsq = 0;
    }
    
    if(keyboard_check_pressed(vk_left) && !girandoEsq){
        if(quantEsq <= 1){
            esquivaEsq = get_timer();
            quantEsq += 1;        
        }
    }
    
    if ((quantEsq > 1 || girandoEsq) && !girandoDir && !batDir && !batEsq)
    {     
       if(get_timer()-esquivaEsq <= tempoDeGiro)
       {
            //if (!global.esq_ok){
                girandoEsq = true;
                //sprite_index = player_gir_esq;
                mudarSprite(self,7);
                if(!esquivou){
                    audio_sound_gain(audio_play_sound(esquiva_sound,1,false),0.8,0);
                    esquivou = true;
                }
                image_speed = 1.75;
                x -= velEsquiva;
              //  global.esq_ok = true;
           // }        
       }
       else
       {
            //global.esq_ok = false;
            girandoEsq = false
            quantEsq = 0;
            //sprite_index = player_spr;
            esquivou = false;
            mudarSprite(self,0);
            image_speed = 1*global.tempo_jogo;   
       }
    }
    
    if (keyboard_check_released(vk_right) || keyboard_check_released(vk_left))
    {
        if(!girandoEsq && !girandoDir && !batDir && !batEsq){
            //sprite_index = player_spr;        
            esquivou = false;
            mudarSprite(self,0);
            image_speed = 1*global.tempo_jogo;
        }
        tempoXLiberado = true;
    }
}
