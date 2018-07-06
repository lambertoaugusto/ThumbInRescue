// Adaptando o jogo para diversas telas de acorco com o aspecto.

var displayW = display_get_width();//armazena a largura do display do jogador
var displayH = display_get_height();//armazena a altura do display do jogador

globalvar aspectoTelaAnterior;//armazena as proporcoes da tela para verificar se houve mudanca de orientacao
global.aspectoTelaAnterior = (displayW/displayH)

globalvar alturaTela;// tamanho vertical visível para o player
global.alturaTela = 1080;

window_set_fullscreen(true);//o jogo rodará fullscreen em todas as plataformas

globalvar larguraView;
global. larguraView =0;

//seta a altura da tela dependendo da resolucao do aparelho utilizado
       if (displayH <= 720){ 
                    global.alturaTela = 720;
                    }
////ativa a vizualização da view///////////////
view_enabled = true;
view_visible[0] = true;  
///////posiciona a tela de maneira centralizada no display//////////////////
global.larguraView = ((displayW/displayH)*global.alturaTela);
view_xview[0] = (room_width/2) - (global.larguraView/2);

//////////seta a largura da view para manter as porporcoes do desenho e completar a tela///////////////
view_wview[0] =((displayW/displayH)*global.alturaTela);
/*if (displayW > 480 && displayH >= alturaTela && (displayW/displayH) < 1 ){
    view_wview[0] = 480*displayH/alturaTela;
      }
//else{
  //  view_wview[0] = displayW;
    //}*/

/////// a altura da view sera sempre a altura da tela pois é a base de calculo da largura da view//////////////
view_hview[0] = global.alturaTela;

/////// define a largura que a vire será desenhada na tela do jogador//////////////////////
view_wport[0] = displayW;
view_hport[0] = displayH; 

view_xport[0] = 0;
view_yport[0] = 0;
