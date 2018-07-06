//tema representa qual lista deverá ser carregada (cristais, mina, ruinas, vulcao)

temaJogo = argument0;

globalvar listaObstaculos;

if(temaJogo == 'cristais'){
    listaObstaculos[0] = indescristal1;
    listaObstaculos[1] = false;
    listaObstaculos[2] = indescristal2;
    listaObstaculos[3] = false;
    listaObstaculos[4] = indescristal3;
    listaObstaculos[5] = false;
    listaObstaculos[6] = indescristal4;
    listaObstaculos[7] = false;
    listaObstaculos[8] = indescristal5;
    listaObstaculos[9] = false;
}
else if(temaJogo == 'mina'){
    listaObstaculos[0] = indesmina1;
    listaObstaculos[1] = false;
    listaObstaculos[2] = indesmina2;
    listaObstaculos[3] = false;
    listaObstaculos[4] = indesmina3;
    listaObstaculos[5] = false;
    listaObstaculos[6] = indesmina4;
    listaObstaculos[7] = false;
    listaObstaculos[8] = indesmina5;
    listaObstaculos[9] = false;
}
else if(temaJogo == 'ruinas'){
    listaObstaculos[0] = indesruina1;
    listaObstaculos[1] = false;
    listaObstaculos[2] = indesruina2;
    listaObstaculos[3] = false;
    listaObstaculos[4] = indesruina3;
    listaObstaculos[5] = false;
    listaObstaculos[6] = indesruina4;
    listaObstaculos[7] = false;
    listaObstaculos[8] = indesruina5;
    listaObstaculos[9] = false;
}
else if(temaJogo == 'vulcao'){
    listaObstaculos[0] = indesvulcao1;
    listaObstaculos[1] = false;
    listaObstaculos[2] = indesvulcao2;
    listaObstaculos[3] = false;
    listaObstaculos[4] = indesvulcao3;
    listaObstaculos[5] = false;
    listaObstaculos[6] = indesvulcao4;
    listaObstaculos[7] = false;
    listaObstaculos[8] = indesvulcao5;
    listaObstaculos[9] = false;
}
else {
    listaObstaculos[0] = indestrans1;
    listaObstaculos[1] = false;
    listaObstaculos[2] = indestrans2;
    listaObstaculos[3] = false;
    listaObstaculos[4] = indestrans3;
    listaObstaculos[5] = false;
    listaObstaculos[6] = indestrans4;
    listaObstaculos[7] = false;
    listaObstaculos[8] = indestrans5;
    listaObstaculos[9] = false;
}
