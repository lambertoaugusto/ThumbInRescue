//inidica o tema atual do jogo
temajogo = argument0;
//indica qual backgroud mudar 
back = argument1;

if(temajogo == 'cristais'){
    if(back == 0){
        sprite_index= cristal1_bg0;
    }
    else{
        sprite_index = cristal1_bg1;
    }    
}
else if(temajogo == 'mina'){
    if(back == 0){
        sprite_index= mina1_bg0;
    }
    else{
        sprite_index = mina1_bg1;
    }    
}
else if(temajogo == 'ruinas'){
    if(back == 0){
        sprite_index= ruina1_bg0;
    }
    else{
        sprite_index = ruina1_bg1;
    }
}
else if(temajogo == 'vulcao'){
    if(back == 0){
        sprite_index= vulcao1_bg0;
    }
    else{
        sprite_index = vulcao1_bg1;
    }
}
