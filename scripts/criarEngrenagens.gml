/*criarEngrenagem(y)
* padrao: 0 -> losango
*         1 -> retangulo (4X3)
*         2 -> retangulo (2X7)
*         3 -> retangulo (4X7)
*/

count = 0;

var larguraEngrenagem = sprite_get_width(engrenagem_spr);
var alturaEngrenagem = sprite_get_height(engrenagem_spr);

// pegando os pontos da area de colisão das engrenagens.
do{    
    randomize();
    //escolha do padrao
    padrao = irandom(3);
    //calcula a posição se o padrão escolhido foi o 0 -> padrão losango
    if(padrao==0){
        posTopLeftX = irandom_range(LimiteEsq,LimiteDir -(5*larguraEngrenagem));            
        posTopLeftY = irandom_range(argument0-global.alturaTela,argument0-(5*alturaEngrenagem));
        posBottomRightX = posTopLeftX + (5*larguraEngrenagem);
        posBottomRightY = posTopLeftY + (5*alturaEngrenagem);
        //verifica se colide, caso negativo cria as engrenagens
        if(!engrenagensColidem(posTopLeftX,posTopLeftY,posBottomRightX,posBottomRightY)){
            instance_create(posTopLeftX+(2*larguraEngrenagem),posTopLeftY,obj_engrenagem);
            var i = 1;
            for(i = 1;i < 4; i++){
                instance_create(posTopLeftX+(i*larguraEngrenagem),posTopLeftY+alturaEngrenagem,obj_engrenagem);                
            }
            for(i = 0;i < 5; i++){
                instance_create(posTopLeftX+(i*larguraEngrenagem),posTopLeftY+(2*alturaEngrenagem),obj_engrenagem);                
            }
            for(i = 1;i < 4; i++){
                instance_create(posTopLeftX+(i*larguraEngrenagem),posTopLeftY+(3*alturaEngrenagem),obj_engrenagem);                
            }
            instance_create(posTopLeftX+(2*larguraEngrenagem),posTopLeftY+(4*alturaEngrenagem),obj_engrenagem);
            count = 3;
        }// fim do if.
    }
    //calcula a posição se o padrão escolhido foi o 1 -> padrão retângulo (4X3)
    else if(padrao==1){
        posTopLeftX = irandom_range(LimiteEsq,LimiteDir-(4*larguraEngrenagem));            
        posTopLeftY = irandom_range(argument0-global.alturaTela,argument0-(3*alturaEngrenagem));
        posBottomRightX = posTopLeftX + (4*larguraEngrenagem);
        posBottomRightY = posTopLeftY + (3*alturaEngrenagem);
        var i = 0;
        var j = 0;
        //verifica se colide, caso negativo cria as engrenagens
        if(!engrenagensColidem(posTopLeftX,posTopLeftY,posBottomRightX,posBottomRightY)){
            for(i = 0; i < 4; i++){
                for(j = 0; j < 3; j++){
                    instance_create(posTopLeftX+(i*larguraEngrenagem),posTopLeftY+(j*alturaEngrenagem),obj_engrenagem);    
                }
            }
            count = 3;
        }
    }
    //calcula a posição se o padrão escolhido foi o 1 -> padrão retângulo (2X7)
    else if(padrao==2){
        posTopLeftX = irandom_range(LimiteEsq,LimiteDir-(2*larguraEngrenagem));            
        posTopLeftY = irandom_range(argument0-global.alturaTela,argument0-(7*alturaEngrenagem));
        posBottomRightX = posTopLeftX + (2*larguraEngrenagem);
        posBottomRightY = posTopLeftY + (7*alturaEngrenagem);
        var i = 0;
        var j = 0;
        //verifica se colide, caso negativo cria as engrenagens
        if(!engrenagensColidem(posTopLeftX,posTopLeftY,posBottomRightX,posBottomRightY)){
            for(i = 0; i < 2; i++){
                for(j = 0; j < 7; j++){
                    instance_create(posTopLeftX+(i*larguraEngrenagem),posTopLeftY+(j*alturaEngrenagem),obj_engrenagem);    
                }
            }
            count = 3;
        }
    }
    //calcula a posição se o padrão escolhido foi o 1 -> padrão retângulo (4X7)
    else{
        posTopLeftX = irandom_range(LimiteEsq,LimiteDir-(4*larguraEngrenagem));            
        posTopLeftY = irandom_range(argument0-global.alturaTela,argument0-(7*alturaEngrenagem));
        posBottomRightX = posTopLeftX + (4*larguraEngrenagem);
        posBottomRightY = posTopLeftY + (7*alturaEngrenagem);
        var i = 0;
        var j = 0;
        //verifica se colide, caso negativo cria as engrenagens
        if(!engrenagensColidem(posTopLeftX,posTopLeftY,posBottomRightX,posBottomRightY)){
            for(i = 0; i < 4; i++){
                for(j = 0; j < 7; j++){
                    instance_create(posTopLeftX+(i*larguraEngrenagem),posTopLeftY+(j*alturaEngrenagem),obj_engrenagem);    
                }
            }
            count = 3;
        }
    }        
    count++;
    global.tempoTeste = get_timer() - global.tempoTeste;    
}until(count >= 3);    
