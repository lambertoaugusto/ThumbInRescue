if (!subindo && y < 680){//alturaTela-40){    
    y += 12;
    //global.distancia = y;
    if(global.velocidadeRoom >= -36.6){
        global.velocidadeRoom -= 1.2;
    }
}
else if (get_timer() <= (global.tempoEntrada+(4*segundo))){
    subindo = true;
}
else if(y > 150){    
    y -= 10;    
}
else{        
    global.entrada = 0;
    global.movimentoLiberado = true;   
    global.entradaTela = false;   
}
/*
switch(parteEntrada){
    case 0:
        y += 12;
        if(global.velocidadeRoom >= -36.6){
            global.velocidadeRoom -= 1.2;
        }
        if(y >= alturaTela-40){
            parteEntrada = 1;
        }
        break;
    case 1:
        if (get_timer() > (global.tempoEntrada+(4*segundo))){
            parteEntrada = 2;   
        }
        break;
    case 2:
        if(y > 95 ){    
            y -= 10;
        }
        else{
            parteEntrada = 3;
        }
        break;
    case 3:
        global.entrada = 0;
        global.movimentoLiberado = true;   
        global.entradaTela = false;
        parteEntrada = 4;
        break;
}*/
