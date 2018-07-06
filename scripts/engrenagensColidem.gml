var colidiu = false;// variável de teste para a colisão com as laterais.

// verificando se colidiu com o objBlocoLateralEsquerda
colidiu = collision_rectangle(argument0,argument1,argument2,argument3,obj_blocoEsq,true,false);
    
// se não colidiu com a lateral esquerda,
// verifica se colidiu com o objLateralDireita.
if(!colidiu){
    colidiu = collision_rectangle(argument0,argument1,argument2,argument3,obj_blocoDir,true,false);
}
    
// se não colidiu com as laterais,
// verifica se colidiu com o objObstaculo.
if(!colidiu){
    colidiu = collision_rectangle(argument0,argument1,argument2,argument3,obj_obstaculo,true,false);
}

// se não colidiu com os objetos destrutíveis,
// verifica se colidiu com o objObstDest.
if(!colidiu){
    colidiu = collision_rectangle(argument0,argument1,argument2,argument3,obj_obsDest,true,false);
}            

if(colidiu == noone){
// se o ponto estiver livre de colisão retorna false.
return false;
}else{
return true;
}
