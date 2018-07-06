//argument0 = true para verificar os objetos indestrutíveis ou false caso contrário
//argument1 = espaço mínimo para o player

//variavel que retorna se a posicao para criar é válida
retorno = false;

if(collision_rectangle(x-argument1,y-argument1,x+sprite_width,y+sprite_height,obj_blocoEsq,true,false) == noone){
    if(collision_rectangle(x,y,x+sprite_width,y+sprite_height,obj_blocoDir,true,false) == noone){        
        if(argument0){
            if(collision_rectangle(x,y,x+sprite_width,y+sprite_height,obj_obstaculo,true,false) == noone){
                retorno = true;
            }
        }
        else{
            retorno = true;
        }
    }
}
else if(collision_rectangle(x,y,x+sprite_width,y+sprite_height,obj_blocoEsq,true,false) == noone){
    if(collision_rectangle(x,y,x+sprite_width+argument1,y+sprite_height+argument1,obj_blocoDir,true,false) == noone){        
        if(argument0){
            if(collision_rectangle(x,y,x+sprite_width,y+sprite_height,obj_obstaculo,true,false) == noone){
                retorno = true;
            }
        }
        else{
            retorno = true;
        }
    }    
}

return retorno;
