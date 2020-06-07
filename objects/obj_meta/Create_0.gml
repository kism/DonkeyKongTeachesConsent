/// @description G L O B A L S

//Controllers
globalvar glo_controllerid;
glo_controllerid = 0

//Buttons
globalvar glo_buttoneraise;
globalvar glo_buttoneprevstate;
globalvar glo_buttononemap;
globalvar glo_buttononealtmap;
globalvar glo_butttworaise;
globalvar glo_butttwoprevstate;
globalvar glo_buttontwomap;
globalvar glo_buttontwoaltmap;

glo_buttoneraise     = false;
glo_buttoneprevstate = false;
glo_buttononemap     = -1;
glo_buttononealtmap  = -1;
glo_butttworaise     = false;
glo_butttwoprevstate = false;
glo_buttontwomap     = -1;
glo_buttontwoaltmap  = -1;

//States
globalvar glo_calibrationstate;
globalvar glo_failstate;
globalvar glo_fadetogame;
glo_failstate = false;
glo_calibrationstate = "initial";
glo_fadetogame = "false";