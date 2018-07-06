// executando o slow se a tecla UP for pressionada e slowFlag for false.
if(keyboard_check_pressed(vk_up) && global.slowFlag == false){
    keyboard_key_release(vk_up);
    audio_sound_gain(audio_play_sound(slow_sound,1,false),1,0);
    global.slowFlag = true;
    global.velocidadeRoom  = -5;
    //velocidadeDeAnimacao = 0.2;
    alarm[0] = 60;
}
