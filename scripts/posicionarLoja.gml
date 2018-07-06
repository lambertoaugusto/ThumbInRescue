if(larguraAtual != global.larguraView){
    larguraAtual = global.larguraView;
    //x = room_width/2;
    //y = room_height/2;
    image_xscale = 1.4;
    image_yscale = 1.4;
    jet.image_xscale = 0.85;
    jet.image_yscale = 0.85;
    jet_tick.image_xscale = 1;
    jet_tick.image_yscale = 1;
    m.image_xscale = 0.85;
    m.image_yscale = 0.85;
    mult_tick.image_xscale = 1;
    mult_tick.image_yscale = 1;
    v.image_xscale = 0.85;
    v.image_yscale = 0.85;
    vidas_tick.image_xscale = 1;
    vidas_tick.image_yscale = 1;
    t.image_xscale = 0.85;
    t.image_yscale = 0.85;
    tema_tick.image_xscale = 1;
    tema_tick.image_yscale = 1;
    a.image_xscale = 0.85;
    a.image_yscale = 0.85;
    atrair_tick.image_xscale = 1;
    atrair_tick.image_yscale = 1;
    if(global.alturaTela == 1080){
        if(view_wview[0] < sprite_width){            
            with(obj_opaco){
                x = room_width/2;
                y = room_height/2;
            }
            x = room_width/2;
            y = room_height/2;
            taxa = (view_wview[0]*1.4)/sprite_width;            
            image_xscale = taxa;
            image_yscale = taxa;
            taxa_imagens = (sprite_width/larguraInicial)*0.85;
            jet.image_xscale = taxa_imagens;
            jet.image_yscale = taxa_imagens;
            jet.y = y - 2*sprite_height/6;
            jet.x = x+sprite_width*0.25;
            jet_tick.image_xscale = taxa_imagens;
            jet_tick.image_yscale = taxa_imagens;
            jet_tick.y = y - 2*sprite_height/6;
            jet_tick.x = jet.x;
            m.image_xscale = taxa_imagens;
            m.image_yscale = taxa_imagens;
            m.y = y - sprite_height/6;
            m.x = jet.x;
            mult_tick.image_xscale = taxa_imagens;
            mult_tick.image_yscale = taxa_imagens;
            mult_tick.y = y - sprite_height/6;
            mult_tick.x = jet.x;
            v.image_xscale = taxa_imagens;
            v.image_yscale = taxa_imagens;
            v.y = y;
            v.x = jet.x;
            vidas_tick.image_xscale = taxa_imagens;
            vidas_tick.image_yscale = taxa_imagens;
            vidas_tick.y = y;
            vidas_tick.x = jet.x;
            t.image_xscale = taxa_imagens;
            t.image_yscale = taxa_imagens;
            t.y = y + sprite_height/6;
            t.x = jet.x;
            tema_tick.image_xscale = taxa_imagens;
            tema_tick.image_yscale = taxa_imagens;
            tema_tick.y = y + sprite_height/6;
            tema_tick.x = jet.x;
            a.image_xscale = taxa_imagens;
            a.image_yscale = taxa_imagens;
            a.y = y + 2*sprite_height/6;
            a.x = jet.x;
            atrair_tick.image_xscale = taxa_imagens;                            
            atrair_tick.image_yscale = taxa_imagens;                            
            atrair_tick.y = y + 2*sprite_height/6;
            atrair_tick.x = jet.x;                        
            if(taxa_imagens<0.8){
                fec.image_xscale = taxa_imagens+0.2;
                fec.image_yscale = taxa_imagens+0.2;
                fec.x = x+sprite_xoffset-(45);
                fec.y = y-sprite_yoffset+(10);
            }
            else{
                fec.image_xscale = taxa_imagens;
                fec.image_yscale = taxa_imagens;
                fec.x = x+sprite_xoffset-(25*taxa_imagens);
                fec.y = y-sprite_yoffset+(25*taxa_imagens);
            }            
        }
        else{
            with(obj_opaco){
                x = room_width/2;
                y = room_height/2;
            }
            x = room_width/2;
            y = room_height/2;
            image_xscale = 1.4;
            image_yscale = 1.4;
            jet.image_xscale = 0.85;
            jet.image_yscale = 0.85;
            jet.y = global.alturaTela/6;
            jet.x = x+sprite_width*0.25;
            jet_tick.image_xscale = 0.85;
            jet_tick.image_yscale = 0.85;
            jet_tick.y = jet.y;
            jet_tick.x = jet.x;
            m.image_xscale = 0.85;
            m.image_yscale = 0.85;
            m.y = jet.y + global.alturaTela/6;
            m.x = jet.x;
            mult_tick.image_xscale = 0.85;
            mult_tick.image_yscale = 0.85;
            mult_tick.y = m.y;
            mult_tick.x = jet.x;
            v.image_xscale = 0.85;
            v.image_yscale = 0.85;
            v.y = m.y + global.alturaTela/6;
            v.x = jet.x;
            vidas_tick.image_xscale = 0.85;
            vidas_tick.image_yscale = 0.85;
            vidas_tick.y = v.y;
            vidas_tick.x = jet.x;
            t.image_xscale = 0.85;
            t.image_yscale = 0.85;
            t.y = v.y + global.alturaTela/6;
            t.x = jet.x;
            tema_tick.image_xscale = 0.85;
            tema_tick.image_yscale = 0.85;
            tema_tick.y = t.y;
            tema_tick.x = jet.x;
            a.image_xscale = 0.85;
            a.image_yscale = 0.85;
            a.y = t.y + global.alturaTela/6;
            a.x = jet.x;
            atrair_tick.image_xscale = 0.85;                            
            atrair_tick.image_yscale = 0.85;                            
            atrair_tick.y = a.y;
            atrair_tick.x = jet.x;                        
            fec.image_xscale = 1;
            fec.image_yscale = 1;
            fec.x = x+sprite_xoffset-(25);
            fec.y = y-sprite_yoffset+(25);
        }   
    }
    else{
        //if(view_wview[0] < sprite_width){            
            with(obj_opaco){
                x = room_width/2;
                y = view_hview[0]/2;
            }
            x = room_width/2;
            y = (view_hview[0]/2)+20;
            taxa = ((view_hview[0]-40)*1.4)/sprite_height;
            if(taxa*sprite_width > view_wview[0]){
                taxa = (view_wview[0]*1.4)/sprite_width;                
            }            
            taxa_imagens = taxa*0.85/1.4;
            image_xscale = taxa;
            image_yscale = taxa;         
                        
            jet.image_xscale = taxa_imagens;
            jet.image_yscale = taxa_imagens;
            jet.y = y - 2*sprite_height/6;
            jet.x = x+sprite_width*0.25;
            jet_tick.image_xscale = taxa_imagens;
            jet_tick.image_yscale = taxa_imagens;
            jet_tick.y = y - 2*sprite_height/6;
            jet_tick.x = jet.x;
            m.image_xscale = taxa_imagens;
            m.image_yscale = taxa_imagens;
            m.y = y - sprite_height/6;
            m.x = jet.x;
            mult_tick.image_xscale = taxa_imagens;
            mult_tick.image_yscale = taxa_imagens;
            mult_tick.y = y - sprite_height/6;
            mult_tick.x = jet.x;
            v.image_xscale = taxa_imagens;
            v.image_yscale = taxa_imagens;
            v.y = y;
            v.x = jet.x;
            vidas_tick.image_xscale = taxa_imagens;
            vidas_tick.image_yscale = taxa_imagens;
            vidas_tick.y = y;
            vidas_tick.x = jet.x;
            t.image_xscale = taxa_imagens;
            t.image_yscale = taxa_imagens;
            t.y = y + sprite_height/6;
            t.x = jet.x;
            tema_tick.image_xscale = taxa_imagens;
            tema_tick.image_yscale = taxa_imagens;
            tema_tick.y = y + sprite_height/6;
            tema_tick.x = jet.x;
            a.image_xscale = taxa_imagens;
            a.image_yscale = taxa_imagens;
            a.y = y + 2*sprite_height/6;
            a.x = jet.x;
            atrair_tick.image_xscale = taxa_imagens;                            
            atrair_tick.image_yscale = taxa_imagens;                            
            atrair_tick.y = y + 2*sprite_height/6;
            atrair_tick.x = jet.x;                        
            if(taxa_imagens<0.8){
                fec.image_xscale = taxa_imagens+0.2;
                fec.image_yscale = taxa_imagens+0.2;
                fec.x = x+sprite_xoffset-(45);
                fec.y = y-sprite_yoffset+(10);
            }
            else{
                fec.image_xscale = taxa_imagens;
                fec.image_yscale = taxa_imagens;
                fec.x = x+sprite_xoffset-(25*taxa_imagens);
                fec.y = y-sprite_yoffset+(25*taxa_imagens);
            }            
    }        
}
