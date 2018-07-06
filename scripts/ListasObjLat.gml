temaJogo = argument0;
nome = 'lateralcristal';
pos = 15;

if(temaJogo == 'cristais'){
    nome = 'lateralcristal';
    pos = 15;
}
else if(temaJogo == 'mina'){
    nome = 'lateralmina';
    pos = 12;
}
else if(temaJogo == 'ruinas'){
    nome = 'lateralruina';
    pos = 13;
}
else if(temaJogo == 'vulcao'){
    nome = 'lateralvulcao';
    pos = 14;
}
else {
    nome = 'lateraltrans';
    pos = 13;
}

globalvar listaLateral;

//gerando blocos menores
for(j = 0; j <= 159; j=j){
    for(i = 1; i <= 8; i++){
        //listaLateral[j] = string_insert(string(i),nome,pos);                
        if(i < 5){
            listaLateral[j] = string_insert('1',nome,pos);                
        }
        else{
            listaLateral[j] = string_insert('5',nome,pos);                
        }
        j++;
    }
}
//listaLateral[0..159] = [bloco1, bloco2,...,bloco8]

//gerando blocos médios
for(j = 160; j <= 168; j=j){
    for(i = 9; i <= 12; i++){
        //listaLateral[j] = string_insert(string(i),nome,pos);                
        listaLateral[j] = string_insert('9',nome,pos);                
        j++;
    }
}
//listaLateral[160..168] = [bloco9, ...,bloco12]

//gerando blocos maiores
for(j = 169; j <= 173; j=j){
    for(i = 13; i <= 16; i++){
//        listaLateral[j] = string_insert(string(i),nome,pos);                
        listaLateral[j] = string_insert('13',nome,pos);                
        j++;
    }    
}
//listaLateral[169..173] = [bloco13, ...,bloco16]
