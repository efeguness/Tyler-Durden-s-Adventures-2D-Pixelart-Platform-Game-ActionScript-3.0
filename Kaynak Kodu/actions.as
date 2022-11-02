/*ACTIONS*/
/*--------------------------------------------------------------------------*/

/*FRAME 3*/

/* Tüm Sesleri Durdurmak için Tıklat
Sembol örneğini tıklattığınızda çalınmakta olan tüm sesler durdurulur.
*/

menubut.addEventListener(MouseEvent.CLICK, fl_ClickToStopAllSounds_5);

function fl_ClickToStopAllSounds_5(event:MouseEvent):void
{
	SoundMixer.stopAll();
}



/*FRAME 5*/

/* Tüm Sesleri Durdurmak için Tıklat
Sembol örneğini tıklattığınızda çalınmakta olan tüm sesler durdurulur.
*/

menubut.addEventListener(MouseEvent.CLICK, fl_ClickToStopAllSounds_4);

function fl_ClickToStopAllSounds_4(event:MouseEvent):void
{
	SoundMixer.stopAll();
}



/*FRAME 7*/

/* Tüm Sesleri Durdurmak için Tıklat
Sembol örneğini tıklattığınızda çalınmakta olan tüm sesler durdurulur.
*/

menubut.addEventListener(MouseEvent.CLICK, fl_ClickToStopAllSounds_3);

function fl_ClickToStopAllSounds_3(event:MouseEvent):void
{
	SoundMixer.stopAll();
}



/*FRAME 9*/

/* Tüm Sesleri Durdurmak için Tıklat
Sembol örneğini tıklattığınızda çalınmakta olan tüm sesler durdurulur.
*/

menubut.addEventListener(MouseEvent.CLICK, fl_ClickToStopAllSounds_2);

function fl_ClickToStopAllSounds_2(event:MouseEvent):void
{
	SoundMixer.stopAll();
}



/*FRAME 11*/

/* Tüm Sesleri Durdurmak için Tıklat
Sembol örneğini tıklattığınızda çalınmakta olan tüm sesler durdurulur.
*/

bitismenubut.addEventListener(MouseEvent.CLICK, fl_ClickToStopAllSounds);

function fl_ClickToStopAllSounds(event:MouseEvent):void
{
	SoundMixer.stopAll();
}



/*ACTIONS*/
/*--------------------------------------------------------------------------*/

/*FRAME 3*/

stop ();

import flash.events.Event;
import flash.events.KeyboardEvent;

//YER ÇEKİMİNİ AYARLAMA

stop ();

var xvelocity = 0;
var yvelocity = 0;

stop ();

var Gravity = 1;
var Friction = .2; // <-- Karakter hızı

stop ();

var rightPress : Boolean = false;
var leftPress : Boolean = false;
var upPress : Boolean = false;

stop ();

var onground : Boolean = false;

stop ();

this.addEventListener(Event.ENTER_FRAME, eFrame);
stage.addEventListener(KeyboardEvent.KEY_DOWN, keyPressed);
stage.addEventListener(KeyboardEvent.KEY_UP, keyRelease);

stop ();

function controls()
{
	if(rightPress)
	{
		rbox.text = "SAĞ (Basılı)";
		xvelocity += 3;
		karakter.scaleX = 1;
	}
	else
	{
		rbox.text = "Sağ ";
	}
	
	
	if(leftPress)
	{
		lbox.text = "SOL (Basılı)";
		xvelocity -= 3;
		karakter.scaleX = -1;
	}
	else
	{
		lbox.text = "SOL";
	}
	
	
	if(rightPress)
	{
		ubox.text = "ÜST (Basılı)";
	}
	else
	{
		ubox.text = "ÜST";
	}
}

//TUŞLARA BASTIĞINDA

stop ();

function keyPressed(event:KeyboardEvent)
{
	
	if (event.keyCode == Keyboard.RIGHT)
	{
		rightPress = true;
	}
	
	if (event.keyCode == Keyboard.LEFT)
	{
		leftPress = true;
	}
	
	if (event.keyCode == Keyboard.UP)
	{
		if(!upPress && onground)
		{
			runJump();
		}
		upPress = true;
	}
	
}

//ZIPLAMA GÜCÜ

stop ();

function runJump()
{
	onground = false;
	yvelocity =-9;
}

//TUŞLARI BIRAKTIĞINDA

stop ();

function keyRelease(event:KeyboardEvent)
{
	
	if (event.keyCode == Keyboard.RIGHT)
	{
		rightPress = false;
	}
	
	if (event.keyCode == Keyboard.LEFT)
	{
		leftPress = false;
	}
	
	if (event.keyCode == Keyboard.UP)
	{
		upPress = false;
	}
	
}

//PLATFORM ZEMİNİNE DÜŞÜNCE DURACAK ŞEKİLDE AYARLAMA

stop ();

function physic()
{
	karakter.x += xvelocity;
	karakter.y += yvelocity;
	
	xvelocity *= Friction;
	yvelocity += Gravity;
	
	while(ground.hitTestPoint(karakter.x,karakter.y,true))
	{
		onground = true;
		karakter.y--;
		yvelocity = 0;
	}
}

//PLATFORM ZEMİNİNİN Y KOORDİNATI 374 OLDUĞU İÇİN KARAKTER BAŞTA 374'E GELDİĞİNDE DURACAK

stop ();

function eFrame(e:Event)
{
	
physic();
	
controls();	
	
}


stop ();

levelBirBut.addEventListener(MouseEvent.CLICK,gotoLevelBirHome);

function gotoLevelBirHome(event:MouseEvent):void
{	
	
	if(karakter.hitTestObject(kapibir))
	{
		gotoAndStop(5);
	}
	else{
		karakter.x = 34,8;
		karakter.y = 103,45;
	}
	
}

stop ();



/*FRAME 5*/

stop ();

levelIkiBut.addEventListener(MouseEvent.CLICK,gotoLevelIkiHome);

function gotoLevelIkiHome(event:MouseEvent):void
{	
	
	if(karakter.hitTestObject(kapiiki))
	{
		gotoAndStop(7);
	}
	else{
		karakter.x = 702,55
		karakter.y = 350,9;
	}
	
}

stop ();



/*FRAME 7*/

stop ();

levelUcBut.addEventListener(MouseEvent.CLICK,gotoLevelUcHome);

function gotoLevelUcHome(event:MouseEvent):void
{	
	
	if(karakter.hitTestObject(kapiuc))
	{
		gotoAndStop(9);
	}
	else{
		karakter.x = 19,2;
		karakter.y = 135,7;
	}
	
}

stop ();



/*FRAME 9*/

stop ();

levelDortBut.addEventListener(MouseEvent.CLICK,gotoLevelDortHome);

function gotoLevelDortHome(event:MouseEvent):void
{	
	
	if(karakter.hitTestObject(kapidort))
	{
		gotoAndStop(11);
	}
	else{
		karakter.x = 703,35;
		karakter.y = 313,95;
	}
	
}

stop ();



/*GAME*/
/*--------------------------------------------------------------------------*/


/* FRAME 1*/

import flash.events.MouseEvent;

//---------------------------------------------------

//PLAY BUTONUNUN TASARIMI
stop ();

playbut.addEventListener(MouseEvent.CLICK,gotoStart);

function gotoStart (event:MouseEvent):void
{
	gotoAndStop(3);
}

//---------------------------------------------------

//OPTIONS BUTONUNUN TASARIMI
stop ();

controlsbut.addEventListener(MouseEvent.CLICK,gotoOptions);

function gotoOptions (event:MouseEvent):void
{
	gotoAndStop(2);
}



/*FRAME 2*/

//BAŞLANGIÇ BUTONUNUN TASARIMI

stop ();

playbackbut.addEventListener(MouseEvent.CLICK,gotoPlayBack);

function gotoPlayBack (event:MouseEvent):void
{
	gotoAndStop(3);
}



/*FRAME 3*/

//MENUYE DÖNÜŞ BUTONUNUN TASARIMI

stop ();

menubut.addEventListener(MouseEvent.CLICK,gotoMenu1);

function gotoMenu1 (event:MouseEvent):void
{
	gotoAndStop(1);
}

//---------------------------------------------------

//KONTROLLERE DÖNÜŞ BUTONUNUN TASARIMI

stop ();

infobut.addEventListener(MouseEvent.CLICK,gotoInfoMenu);

function gotoInfoMenu (event:MouseEvent):void
{
	gotoAndStop(2);
}

//---------------------------------------------------

stop ();

restartbut.addEventListener(MouseEvent.CLICK,gotoLevelBirInfo);

function gotoLevelBirInfo(event:MouseEvent):void
{	
	karakter.x = 34,8;
	karakter.y = 103,45;

}



/*FRAME 5*/

//MENUYE DÖNÜŞ BUTONUNUN TASARIMI

stop ();

menubut.addEventListener(MouseEvent.CLICK,gotoMenu2);

function gotoMenu2 (event:MouseEvent):void
{
	gotoAndStop(1);
}

//---------------------------------------------------

//KONTROLLERE DÖNÜŞ BUTONUNUN TASARIMI

stop ();

infobut2.addEventListener(MouseEvent.CLICK,gotoInfoMenu2);

function gotoInfoMenu2 (event:MouseEvent):void
{
	gotoAndStop(2);
}

//---------------------------------------------------

stop ();

restartbut2.addEventListener(MouseEvent.CLICK,gotoLevelIkıInfo);

function gotoLevelIkıInfo(event:MouseEvent):void
{	
	karakter.x = 702,55
	karakter.y = 350,9;

}



/*FRAME 7*/

//MENUYE DÖNÜŞ BUTONUNUN TASARIMI

stop ();

menubut.addEventListener(MouseEvent.CLICK,gotoMenu3);

function gotoMenu3 (event:MouseEvent):void
{
	gotoAndStop(1);
}

//---------------------------------------------------

//KONTROLLERE DÖNÜŞ BUTONUNUN TASARIMI

stop ();

infobut3.addEventListener(MouseEvent.CLICK,gotoInfoMenu3);

function gotoInfoMenu3 (event:MouseEvent):void
{
	gotoAndStop(2);
}

//---------------------------------------------------

stop ();

restartbut3.addEventListener(MouseEvent.CLICK,gotoLevelUcInfo);

function gotoLevelUcInfo(event:MouseEvent):void
{	
	karakter.x = 19,2;
	karakter.y = 135,7;

}



/* FRAME 9*/

//MENUYE DÖNÜŞ BUTONUNUN TASARIMI

stop ();

menubut.addEventListener(MouseEvent.CLICK,gotoMenu4);

function gotoMenu4 (event:MouseEvent):void
{
	gotoAndStop(1);
}

//---------------------------------------------------

//KONTROLLERE DÖNÜŞ BUTONUNUN TASARIMI

stop ();

infobut4.addEventListener(MouseEvent.CLICK,gotoInfoMenu4);

function gotoInfoMenu4 (event:MouseEvent):void
{
	gotoAndStop(2);
}

//---------------------------------------------------

stop ();

restartbut4.addEventListener(MouseEvent.CLICK,gotoLevelDortInfo);

function gotoLevelDortInfo(event:MouseEvent):void
{	
	karakter.x = 703,35;
	karakter.y = 313,95;

}



/* FRAME 11*/

//MENUYE DÖNÜŞ BUTONUNUN TASARIMI

stop ();

bitismenubut.addEventListener(MouseEvent.CLICK,gotoMenuBitis);

function gotoMenuBitis (event:MouseEvent):void
{
	gotoAndStop(1);
}

//---------------------------------------------------