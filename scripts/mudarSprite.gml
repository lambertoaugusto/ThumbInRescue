nome_player=argument0;//sprite de quem vai mudar
tipo = argument1;//0 = normal; 1 = dir; 2 = esq; 3 = bat_dir; 4 = bat_esq; 5 = bat_frente; 6 = girando_dir; 7 =girando_esq; 8 = dying; 9 = morto; 

if global.nivelDash == 0{
    if tipo == 0{
        nome_player.sprite_index = player_spr;
        nome_player.image_xscale = 1;            
    }
    else if tipo == 1{
        nome_player.sprite_index = player_dir;
        nome_player.image_xscale = 1;
    }
    else if tipo == 2{
        nome_player.sprite_index = player_dir;
        nome_player.image_xscale = -1;
    }
    else if tipo == 3{
        nome_player.sprite_index = player_bat_dir;
        nome_player.image_xscale = 1;                
    }
    else if tipo == 4{
        nome_player.sprite_index = player_bat_dir;
        nome_player.image_xscale = -1;                
    }
    else if tipo == 5{
        nome_player.sprite_index = player_bat;               
        nome_player.image_xscale = 1;                        
    }                
    else if tipo == 6{
        nome_player.sprite_index = player_gir_dir;               
        nome_player.image_xscale = 1;                
    }
    else if tipo == 7{
        nome_player.sprite_index = player_gir_dir;               
        nome_player.image_xscale = -1;                
    }
    else if tipo == 8{
        nome_player.sprite_index = player_dying;               
        nome_player.image_xscale = 1;                
    }
    else if tipo == 9{
        nome_player.sprite_index = player_morto;               
        nome_player.image_xscale = 1;                
    }
}
else if (global.nivelDash == 1 && !global.dashFlag){    
    if tipo == 0{
        if global.multiplicador == 1{
            nome_player.sprite_index = player_jet1;               
            nome_player.image_xscale = 1;                                        
        }
        else if global.multiplicador == 2{   
            nome_player.sprite_index = player_jet12x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 3{
            nome_player.sprite_index = player_jet13x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 4{
            nome_player.sprite_index = player_jet14x;               
            nome_player.image_xscale = 1;
        }
    }
    else if tipo == 1{                
        if global.multiplicador == 1{
            nome_player.sprite_index = player_dir_jet1;               
            nome_player.image_xscale = 1;
        }
        else if global.multiplicador == 2{
            nome_player.sprite_index = player_dir_jet12x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 3{
            nome_player.sprite_index = player_dir_jet13x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 4{
            nome_player.sprite_index = player_dir_jet14x;               
            nome_player.image_xscale = 1;
        }
    }
    else if tipo == 2{
        if global.multiplicador == 1{
            nome_player.sprite_index = player_dir_jet1;               
            nome_player.image_xscale = -1;
        }
        else if global.multiplicador == 2{
            nome_player.sprite_index = player_dir_jet12x;               
            nome_player.image_xscale = -1;                     
        }
        else if global.multiplicador == 3{
            nome_player.sprite_index = player_dir_jet13x;
            nome_player.image_xscale = -1;                     
        }
        else if global.multiplicador == 4{         
            nome_player.sprite_index = player_dir_jet14x;               
            nome_player.image_xscale = -1;
        }
    }
    else if tipo == 3{
        nome_player.sprite_index = player_bat_dir_jet1;               
        nome_player.image_xscale = 1;                        
    }
    else if tipo == 4{
        nome_player.sprite_index = player_bat_dir_jet1;               
        nome_player.image_xscale = -1;                        
    }
    else if tipo == 5{
        nome_player.sprite_index = player_bat_jet1;               
        nome_player.image_xscale = 1;                        
    }
    else if tipo == 6{                    
        nome_player.sprite_index = player_gir_dir_jet;               
        nome_player.image_xscale = 1;                
    }
    else if tipo == 7{
        nome_player.sprite_index = player_gir_dir_jet;               
        nome_player.image_xscale = -1;                
    }
    else if tipo == 8{
        ex = instance_create(playerEndless_obj.x,playerEndless_obj.y,obj_jet_exploding);
        ex.sprite_index = jet1_explosion;            
        nome_player.sprite_index = player_dying;               
        nome_player.image_xscale = 1;                
    }
    else if tipo == 9{
        nome_player.sprite_index = player_morto;               
        nome_player.image_xscale = 1;                
    }
}
else if (global.nivelDash == 2 && !global.dashFlag){    
    if tipo == 0{
        if global.multiplicador == 1{
            nome_player.sprite_index = player_jet2;               
            nome_player.image_xscale = 1;                                        
        }
        else if global.multiplicador == 2{   
            nome_player.sprite_index = player_jet22x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 3{
            nome_player.sprite_index = player_jet23x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 4{
            nome_player.sprite_index = player_jet24x;               
            nome_player.image_xscale = 1;
        }
    }
    else if tipo == 1{                
        if global.multiplicador == 1{
            nome_player.sprite_index = player_dir_jet2;               
            nome_player.image_xscale = 1;
        }
        else if global.multiplicador == 2{
            nome_player.sprite_index = player_dir_jet22x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 3{
            nome_player.sprite_index = player_dir_jet23x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 4{
            nome_player.sprite_index = player_dir_jet24x;               
            nome_player.image_xscale = 1;
        }
    }
    else if tipo == 2{
        if global.multiplicador == 1{
            nome_player.sprite_index = player_dir_jet2;               
            nome_player.image_xscale = -1;
        }
        else if global.multiplicador == 2{
            nome_player.sprite_index = player_dir_jet22x;               
            nome_player.image_xscale = -1;                     
        }
        else if global.multiplicador == 3{
            nome_player.sprite_index = player_dir_jet23x;
            nome_player.image_xscale = -1;                     
        }
        else if global.multiplicador == 4{         
            nome_player.sprite_index = player_dir_jet24x;               
            nome_player.image_xscale = -1;
        }
    }
    else if tipo == 3{
        nome_player.sprite_index = player_bat_dir_jet2;               
        nome_player.image_xscale = 1;                        
    }
    else if tipo == 4{
        nome_player.sprite_index = player_bat_dir_jet2;               
        nome_player.image_xscale = -1;                        
    }
    else if tipo == 5{
        nome_player.sprite_index = player_bat_jet2;               
        nome_player.image_xscale = 1;                        
    }
    else if tipo == 6{                    
        nome_player.sprite_index = player_gir_dir_jet;               
        nome_player.image_xscale = 1;                
    }
    else if tipo == 7{
        nome_player.sprite_index = player_gir_dir_jet;               
        nome_player.image_xscale = -1;                
    }
    else if tipo == 8{
        ex = instance_create(playerEndless_obj.x,playerEndless_obj.y,obj_jet_exploding);
        ex.sprite_index = jet2_explosion;
        nome_player.sprite_index = player_dying;               
        nome_player.image_xscale = 1;                
    }
    else if tipo == 9{
        nome_player.sprite_index = player_morto;               
        nome_player.image_xscale = 1;                
    }
}
else if (global.nivelDash == 3 && !global.dashFlag){    
    if tipo == 0{
        if global.multiplicador == 1{
            nome_player.sprite_index = player_jet3;               
            nome_player.image_xscale = 1;                                        
        }
        else if global.multiplicador == 2{   
            nome_player.sprite_index = player_jet32x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 3{
            nome_player.sprite_index = player_jet33x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 4{
            nome_player.sprite_index = player_jet34x;               
            nome_player.image_xscale = 1;
        }
    }
    else if tipo == 1{                
        if global.multiplicador == 1{
            nome_player.sprite_index = player_dir_jet3;               
            nome_player.image_xscale = 1;
        }
        else if global.multiplicador == 2{
            nome_player.sprite_index = player_dir_jet32x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 3{
            nome_player.sprite_index = player_dir_jet33x;               
            nome_player.image_xscale = 1;                     
        }
        else if global.multiplicador == 4{
            nome_player.sprite_index = player_dir_jet34x;               
            nome_player.image_xscale = 1;
        }
    }
    else if tipo == 2{
        if global.multiplicador == 1{
            nome_player.sprite_index = player_dir_jet3;               
            nome_player.image_xscale = -1;
        }
        else if global.multiplicador == 2{
            nome_player.sprite_index = player_dir_jet32x;               
            nome_player.image_xscale = -1;                     
        }
        else if global.multiplicador == 3{
            nome_player.sprite_index = player_dir_jet33x;
            nome_player.image_xscale = -1;                     
        }
        else if global.multiplicador == 4{         
            nome_player.sprite_index = player_dir_jet34x;               
            nome_player.image_xscale = -1;
        }
    }
    else if tipo == 3{
        nome_player.sprite_index = player_bat_dir_jet3;               
        nome_player.image_xscale = 1;                        
    }
    else if tipo == 4{
        nome_player.sprite_index = player_bat_dir_jet3;              
        nome_player.image_xscale = -1;                        
    }
    else if tipo == 5{
        nome_player.sprite_index = player_bat_jet3;               
        nome_player.image_xscale = 1;                        
    }
    else if tipo == 6{                    
        nome_player.sprite_index = player_gir_dir_jet;               
        nome_player.image_xscale = 1;                
    }
    else if tipo == 7{
        nome_player.sprite_index = player_gir_dir_jet;               
        nome_player.image_xscale = -1;                
    }
    else if tipo == 8{
        ex = instance_create(playerEndless_obj.x,playerEndless_obj.y,obj_jet_exploding);
        ex.sprite_index = jet3_explosion;
        nome_player.sprite_index = player_dying;               
        nome_player.image_xscale = 1;                
    }
    else if tipo == 9{
        nome_player.sprite_index = player_morto;               
        nome_player.image_xscale = 1;                
    }
}
else if(global.dashFlag){
    if(global.nivelDash == 1){
        if(tipo == 9){
            nome_player.sprite_index = player_morto;                           
            nome_player.image_xscale = 1;                
        }
        else if (tipo == 8){
            ex = instance_create(playerEndless_obj.x,playerEndless_obj.y,obj_jet_exploding);
            ex.sprite_index = jet1_explosion;
            nome_player.sprite_index = player_dying;               
            //acrescentar explosão jetpack
            nome_player.image_xscale = 1;                
        }
        else{
            nome_player.sprite_index = player_dash1;               
            nome_player.image_xscale = 1;   
        }
    }
    else if(global.nivelDash == 2){
        if(tipo == 9){
           nome_player.sprite_index = player_morto;                           
            nome_player.image_xscale = 1;                
        }
        else if (tipo == 8){
            ex = instance_create(playerEndless_obj.x,playerEndless_obj.y,obj_jet_exploding);
            ex.sprite_index = jet2_explosion;
            nome_player.sprite_index = player_dying;               
            //acrescentar explosão jetpack
            nome_player.image_xscale = 1;                
        }
        else{
            nome_player.sprite_index = player_dash2;               
            nome_player.image_xscale = 1;   
        }
    }
    else if(global.nivelDash == 3){
        if(tipo == 9){            
            nome_player.sprite_index = player_morto;                           
            nome_player.image_xscale = 1;                
        }
        else if (tipo == 8){
            ex = instance_create(playerEndless_obj.x,playerEndless_obj.y,obj_jet_exploding);
            ex.sprite_index = jet3_explosion;
            nome_player.sprite_index = player_dying;               
            //acrescentar explosão jetpack
            nome_player.image_xscale = 1;                
        }
        else{
            nome_player.sprite_index = player_dash3;               
            nome_player.image_xscale = 1;   
        }
    }
}
