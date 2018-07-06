// executando o dash se a tecla seta pra baixo for pressionada e dashFlag for false.
if(keyboard_check_pressed(vk_down) && !global.dashFlag && nivelDash > 0){    
    keyboard_check_released(vk_down);
    global.dashFlag = true;
    mudarSprite(playerEndless_obj,0);
    audio_sound_gain(audio_play_sound(dash_sound,1,false),0.9,0);
    direction = 270;
    speed = 40;
    friction = 2;
    hspeed = 0;
    //selectState("dash");           
}
