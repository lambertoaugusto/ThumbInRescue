if (musica == 'menu'){ 
    if(musicPlaying != -1){
        audio_stop_sound(musicPlaying);
        musicPlaying = audio_play_sound(musicamenu,1,false);
    }
    else{        
        musicPlaying = audio_play_sound(musicamenu,1,false);                
        audio_sound_gain(musicPlaying, 0, 0);        
        audio_sound_gain(musicPlaying, 0.75, 1000);        
    }    
    musica = 'menuPlaying';
}
else if (musica == 'jogo'){
    audio_stop_sound(musicPlaying);            
    randomize();
    m = irandom(2);
    if(m == 0){        
        musicPlaying = audio_play_sound(musicatema1,1,false);
    }
    else if(m == 1){        
        musicPlaying = audio_play_sound(musicatema2,1,false);
    }
    else{
        musicPlaying = audio_play_sound(musicatema3,1,false);
    }        
    musica = 'jogoPlaying';
}
else if(musica == 'menuFading'){
    audio_sound_gain(musicPlaying, 1, 0);
    audio_sound_gain(musicPlaying, 0, 1000);
    fadingTime = get_timer();
    musica = 'fadingOut';
}
else if(musica == 'fadingOut'){
    if(get_timer()-fadingTime >= 1*segundo){
        musica = 'jogo';    
    }
}

if(!audio_is_playing(musicPlaying)){
    if(musica == 'menuPlaying'){    
        musica = 'menu';
    }
    else if (musica == 'jogoPlaying'){
        musica = 'jogo';
    }
}
