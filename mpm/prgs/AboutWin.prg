/*
 * $Id: AboutWin.prg
 * (c) migsoft 2013-11-18
 */

#include "oohg.ch"
#include "mpm.ch"
*---------------------------------------------------------------------*
Procedure About()
*---------------------------------------------------------------------*

   DEFINE WINDOW mAbout AT 203 , 307 WIDTH 418 HEIGHT 333 TITLE "About" ICON "ampm" MODAL NOMINIMIZE NOMAXIMIZE NOSIZE BACKCOLOR {255,255,255} // ON INIT ( hWnd := GetFormHandle('mAbout'), SetTransparent(hWnd, 250) )
     DEFINE IMAGE Image_1
            ROW    20
            COL    75
            WIDTH  260
            HEIGHT 100
            PICTURE "mmigsoft"
            ACTION mAbout.release
    END IMAGE

     DEFINE LABEL Label_1
            ROW    170
            COL    10
            WIDTH  100
            HEIGHT 24
            VALUE "Operating System"
            BACKCOLOR {255,255,255}
            RIGHTALIGN .T.
     END LABEL

     DEFINE LABEL Label_2
            ROW    200
            COL    10
            WIDTH  100
            HEIGHT 24
            VALUE "Developed in"
            BACKCOLOR {255,255,255}
            RIGHTALIGN .T.
     END LABEL

     DEFINE LABEL Label_3
            ROW    230
            COL    10
            WIDTH  100
            HEIGHT 24
            VALUE "xBase Compiler"
            BACKCOLOR {255,255,255}
            RIGHTALIGN .T.
     END LABEL

     DEFINE LABEL Label_4
            ROW    260
            COL    10
            WIDTH  100
            HEIGHT 24
            VALUE "C Compiler"
            BACKCOLOR {255,255,255}
            RIGHTALIGN .T.
     END LABEL

     DEFINE LABEL Label_5
            ROW    140
            COL    10
            WIDTH  100
            HEIGHT 24
            VALUE "Application"
            BACKCOLOR {255,255,255}
            RIGHTALIGN .T.
     END LABEL

     DEFINE TEXTBOX Text_1
            ROW    140
            COL    120
            WIDTH  280
            HEIGHT 24
            TABSTOP .F.
            READONLY .T.
            BACKCOLOR {255,255,255}
            VALUE cAppName+" "+cAppVer
     END TEXTBOX

     DEFINE TEXTBOX Text_2
            ROW    170
            COL    120
            WIDTH  280
            HEIGHT 24
            TABSTOP .F.
            READONLY .T.
            BACKCOLOR {255,255,255}
            VALUE Os()
     END TEXTBOX

     DEFINE TEXTBOX Text_3
            ROW    200
            COL    120
            WIDTH  280
            HEIGHT 24
            TABSTOP .F.
            READONLY .T.
            BACKCOLOR {255,255,255}
            VALUE MiniGUIVersion()
     END TEXTBOX

     DEFINE TEXTBOX Text_4
            ROW    230
            COL    120
            WIDTH  280
            HEIGHT 24
            TABSTOP .F.
            READONLY .T.
            BACKCOLOR {255,255,255}
            VALUE Version()
     END TEXTBOX

     DEFINE TEXTBOX Text_5
            ROW    260
            COL    120
            WIDTH  280
            HEIGHT 24
            TABSTOP .F.
            READONLY .T.
            BACKCOLOR {255,255,255}
            VALUE Hb_Compiler()
     END TEXTBOX
     
     ON KEY ESCAPE ACTION mAbout.Release
     ON KEY F1     ACTION mAbout.Release

   END WINDOW

   Center window mAbout
   Activate window mAbout

Return
