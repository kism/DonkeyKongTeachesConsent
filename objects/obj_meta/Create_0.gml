/// @description Insert description here
// You can write your code in this editor

//Controllers
globalvar glo_controllerid;
glo_controllerid = 0

//Buttons
globalvar glo_buttoneraise;
globalvar glo_buttoneprevstate;
globalvar glo_buttononemap;
globalvar glo_butttworaise;
globalvar glo_butttwoprevstate;
globalvar glo_buttontwomap;

glo_buttoneraise     = false;
glo_buttoneprevstate = false;
glo_buttononemap     = -1;
glo_butttworaise     = false;
glo_butttwoprevstate = false;
glo_buttontwomap     = -1;

//States
globalvar glo_calibrationstate;
globalvar glo_failstate;
glo_failstate = false;
glo_calibrationstate = "initial"