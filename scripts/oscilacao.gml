
// ajusta a posição vertical do player na view.
//if(getObjectYView(obj_player) < 50){
//y = 50;
//}

// executa o retorno do dash para a posição y = 100;
    if(global.dashFlag){
       
        y-=15;
        
        if(y < 150){
        
        friction = 0;
        global.dashFlag = false;
        mudarSprite(playerEndless_obj,0);
        //selectState("flutuando");
        global.contadorDeFlutuacao = 0;
        flutuandoAcima = false;
        y = 150;
           
        }
            
    }
    
    // se não estiver executando o dash.
    if(!global.dashFlag){
        
        // estabilizando na posição 100.
    
    
        if(!global.estabilizado){
    
          y -= 5;    
          if(y <= 150)
            global.estabilizado = true;
    
        }
    
            
        if(flutuandoAcima == false && global.contadorDeFlutuacao <= 20 && global.estabilizado){
            global.contadorDeFlutuacao += 0.2;
            vspeed = 0.2;
    
            if(global.contadorDeFlutuacao > 20)
                flutuandoAcima = true;
    
        }else if(flutuandoAcima == true && global.contadorDeFlutuacao >= 0 && global.estabilizado){
        
        
            global.contadorDeFlutuacao -= 0.2;
            vspeed = -0.2;
        
        
            if(global.contadorDeFlutuacao < 0)
                flutuandoAcima = false;
        
        }
    
    }// fim do if mais externo.

