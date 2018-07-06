ini_open('SETTINGS.ini');
linha1 = ini_read_real('score','1',0);
linha2 = ini_read_real('score','2',0);
linha3 = ini_read_real('score','3',0);
linha4 = ini_read_real('score','4',0);
linha5 = ini_read_real('score','5',0);
linha6 = ini_read_real('score','6',0);
linha7 = ini_read_real('score','7',0);
linha8 = ini_read_real('score','8',0);
linha9 = ini_read_real('score','9',0);
linha10 = ini_read_real('score','10',0);

if(score > linha1){
    ini_write_real('score','1',score);    
    ini_write_real('score','2',linha1);    
    ini_write_real('score','3',linha2);    
    ini_write_real('score','4',linha3);    
    ini_write_real('score','5',linha4);    
    ini_write_real('score','6',linha5);    
    ini_write_real('score','7',linha6);    
    ini_write_real('score','8',linha7);    
    ini_write_real('score','9',linha8);    
    ini_write_real('score','10',linha9);    
}
else if(score > linha2){
    ini_write_real('score','2',score);    
    ini_write_real('score','3',linha2);    
    ini_write_real('score','4',linha3);    
    ini_write_real('score','5',linha4);    
    ini_write_real('score','6',linha5);    
    ini_write_real('score','7',linha6);    
    ini_write_real('score','8',linha7);    
    ini_write_real('score','9',linha8);    
    ini_write_real('score','10',linha9);    
}
else if(score > linha3){
    ini_write_real('score','3',score);    
    ini_write_real('score','4',linha3);    
    ini_write_real('score','5',linha4);    
    ini_write_real('score','6',linha5);    
    ini_write_real('score','7',linha6);    
    ini_write_real('score','8',linha7);    
    ini_write_real('score','9',linha8);    
    ini_write_real('score','10',linha9);    
}
else if(score > linha4){
    ini_write_real('score','4',score);    
    ini_write_real('score','5',linha4);    
    ini_write_real('score','6',linha5);    
    ini_write_real('score','7',linha6);    
    ini_write_real('score','8',linha7);    
    ini_write_real('score','9',linha8);    
    ini_write_real('score','10',linha9);    
}
else if(score > linha5){
    ini_write_real('score','5',score);    
    ini_write_real('score','6',linha5);    
    ini_write_real('score','7',linha6);    
    ini_write_real('score','8',linha7);    
    ini_write_real('score','9',linha8);    
    ini_write_real('score','10',linha9);    
}
else if(score > linha6){
    ini_write_real('score','6',score);    
    ini_write_real('score','7',linha6);    
    ini_write_real('score','8',linha7);    
    ini_write_real('score','9',linha8);    
    ini_write_real('score','10',linha9);    
}
else if(score > linha7){
    ini_write_real('score','7',score);    
    ini_write_real('score','8',linha7);    
    ini_write_real('score','9',linha8);    
    ini_write_real('score','10',linha9);    
}
else if(score > linha8){
    ini_write_real('score','8',score);    
    ini_write_real('score','9',linha8);    
    ini_write_real('score','10',linha9);    
}
else if(score > linha9){
    ini_write_real('score','9',score);    
    ini_write_real('score','10',linha9);    
}
else if(score > linha10){
    ini_write_real('score','10',score);    
}

e = ini_read_real('dinheiro','total',0);
e +=global.scoreCounter;
ini_write_real('dinheiro','total',e);

ini_close();
