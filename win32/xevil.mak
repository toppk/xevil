# Microsoft Developer Studio Generated NMAKE File, Based on xevil.dsp
!IF "$(CFG)" == ""
CFG=xevil - Win32 Debug
!MESSAGE No configuration specified. Defaulting to xevil - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "xevil - Win32 Release" && "$(CFG)" != "xevil - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "xevil.mak" CFG="xevil - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "xevil - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "xevil - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "xevil - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\xevil.exe"

!ELSE 

ALL : "$(OUTDIR)\xevil.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\aboutdialog.obj"
	-@erase "$(INTDIR)\actual.obj"
	-@erase "$(INTDIR)\area.obj"
	-@erase "$(INTDIR)\connectdlg.obj"
	-@erase "$(INTDIR)\coord.obj"
	-@erase "$(INTDIR)\Difficulty.obj"
	-@erase "$(INTDIR)\draw.obj"
	-@erase "$(INTDIR)\firepal.obj"
	-@erase "$(INTDIR)\fogpal.obj"
	-@erase "$(INTDIR)\fsstatus.obj"
	-@erase "$(INTDIR)\functionkeysdlg.obj"
	-@erase "$(INTDIR)\game.obj"
	-@erase "$(INTDIR)\game_style.obj"
	-@erase "$(INTDIR)\glowpal.obj"
	-@erase "$(INTDIR)\id.obj"
	-@erase "$(INTDIR)\intel.obj"
	-@erase "$(INTDIR)\KeyHitDlg.obj"
	-@erase "$(INTDIR)\keysdlg.obj"
	-@erase "$(INTDIR)\KeySets.obj"
	-@erase "$(INTDIR)\l_agreement.obj"
	-@erase "$(INTDIR)\locator.obj"
	-@erase "$(INTDIR)\OptionsDlg.obj"
	-@erase "$(INTDIR)\palmod.obj"
	-@erase "$(INTDIR)\physical.obj"
	-@erase "$(INTDIR)\role.obj"
	-@erase "$(INTDIR)\RunServerDlg.obj"
	-@erase "$(INTDIR)\s_man.obj"
	-@erase "$(INTDIR)\sound.obj"
	-@erase "$(INTDIR)\sound_cmn.obj"
	-@erase "$(INTDIR)\specialcontrols.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\StoryDlg.obj"
	-@erase "$(INTDIR)\streams.obj"
	-@erase "$(INTDIR)\template.obj"
	-@erase "$(INTDIR)\timedlg.obj"
	-@erase "$(INTDIR)\ui.obj"
	-@erase "$(INTDIR)\ui_cmn.obj"
	-@erase "$(INTDIR)\Uiplayer.obj"
	-@erase "$(INTDIR)\uiserver.obj"
	-@erase "$(INTDIR)\utils.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\wheel.obj"
	-@erase "$(INTDIR)\world.obj"
	-@erase "$(INTDIR)\xdata.obj"
	-@erase "$(INTDIR)\xetp.obj"
	-@erase "$(INTDIR)\Xevil.obj"
	-@erase "$(INTDIR)\xevil.res"
	-@erase "$(INTDIR)\XEvilServerStatus.obj"
	-@erase "$(INTDIR)\xviewport.obj"
	-@erase "$(OUTDIR)\xevil.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)\xevil.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o NUL /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\xevil.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\xevil.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib ole32.lib /nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)\xevil.pdb" /machine:I386 /out:"$(OUTDIR)\xevil.exe" 
LINK32_OBJS= \
	"$(INTDIR)\aboutdialog.obj" \
	"$(INTDIR)\actual.obj" \
	"$(INTDIR)\area.obj" \
	"$(INTDIR)\connectdlg.obj" \
	"$(INTDIR)\coord.obj" \
	"$(INTDIR)\Difficulty.obj" \
	"$(INTDIR)\draw.obj" \
	"$(INTDIR)\firepal.obj" \
	"$(INTDIR)\fogpal.obj" \
	"$(INTDIR)\fsstatus.obj" \
	"$(INTDIR)\functionkeysdlg.obj" \
	"$(INTDIR)\game.obj" \
	"$(INTDIR)\game_style.obj" \
	"$(INTDIR)\glowpal.obj" \
	"$(INTDIR)\id.obj" \
	"$(INTDIR)\intel.obj" \
	"$(INTDIR)\KeyHitDlg.obj" \
	"$(INTDIR)\keysdlg.obj" \
	"$(INTDIR)\KeySets.obj" \
	"$(INTDIR)\l_agreement.obj" \
	"$(INTDIR)\locator.obj" \
	"$(INTDIR)\OptionsDlg.obj" \
	"$(INTDIR)\palmod.obj" \
	"$(INTDIR)\physical.obj" \
	"$(INTDIR)\role.obj" \
	"$(INTDIR)\RunServerDlg.obj" \
	"$(INTDIR)\s_man.obj" \
	"$(INTDIR)\sound.obj" \
	"$(INTDIR)\sound_cmn.obj" \
	"$(INTDIR)\specialcontrols.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\StoryDlg.obj" \
	"$(INTDIR)\streams.obj" \
	"$(INTDIR)\template.obj" \
	"$(INTDIR)\timedlg.obj" \
	"$(INTDIR)\ui.obj" \
	"$(INTDIR)\ui_cmn.obj" \
	"$(INTDIR)\Uiplayer.obj" \
	"$(INTDIR)\uiserver.obj" \
	"$(INTDIR)\utils.obj" \
	"$(INTDIR)\wheel.obj" \
	"$(INTDIR)\world.obj" \
	"$(INTDIR)\xdata.obj" \
	"$(INTDIR)\xetp.obj" \
	"$(INTDIR)\Xevil.obj" \
	"$(INTDIR)\xevil.res" \
	"$(INTDIR)\XEvilServerStatus.obj" \
	"$(INTDIR)\xviewport.obj" \
	".\ddraw.lib" \
	".\dsound.lib"

"$(OUTDIR)\xevil.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\xevil.exe"

!ELSE 

ALL : "$(OUTDIR)\xevil.exe"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\aboutdialog.obj"
	-@erase "$(INTDIR)\actual.obj"
	-@erase "$(INTDIR)\area.obj"
	-@erase "$(INTDIR)\connectdlg.obj"
	-@erase "$(INTDIR)\coord.obj"
	-@erase "$(INTDIR)\Difficulty.obj"
	-@erase "$(INTDIR)\draw.obj"
	-@erase "$(INTDIR)\firepal.obj"
	-@erase "$(INTDIR)\fogpal.obj"
	-@erase "$(INTDIR)\fsstatus.obj"
	-@erase "$(INTDIR)\functionkeysdlg.obj"
	-@erase "$(INTDIR)\game.obj"
	-@erase "$(INTDIR)\game_style.obj"
	-@erase "$(INTDIR)\glowpal.obj"
	-@erase "$(INTDIR)\id.obj"
	-@erase "$(INTDIR)\intel.obj"
	-@erase "$(INTDIR)\KeyHitDlg.obj"
	-@erase "$(INTDIR)\keysdlg.obj"
	-@erase "$(INTDIR)\KeySets.obj"
	-@erase "$(INTDIR)\l_agreement.obj"
	-@erase "$(INTDIR)\locator.obj"
	-@erase "$(INTDIR)\OptionsDlg.obj"
	-@erase "$(INTDIR)\palmod.obj"
	-@erase "$(INTDIR)\physical.obj"
	-@erase "$(INTDIR)\role.obj"
	-@erase "$(INTDIR)\RunServerDlg.obj"
	-@erase "$(INTDIR)\s_man.obj"
	-@erase "$(INTDIR)\sound.obj"
	-@erase "$(INTDIR)\sound_cmn.obj"
	-@erase "$(INTDIR)\specialcontrols.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\StoryDlg.obj"
	-@erase "$(INTDIR)\streams.obj"
	-@erase "$(INTDIR)\template.obj"
	-@erase "$(INTDIR)\timedlg.obj"
	-@erase "$(INTDIR)\ui.obj"
	-@erase "$(INTDIR)\ui_cmn.obj"
	-@erase "$(INTDIR)\Uiplayer.obj"
	-@erase "$(INTDIR)\uiserver.obj"
	-@erase "$(INTDIR)\utils.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(INTDIR)\wheel.obj"
	-@erase "$(INTDIR)\world.obj"
	-@erase "$(INTDIR)\xdata.obj"
	-@erase "$(INTDIR)\xetp.obj"
	-@erase "$(INTDIR)\Xevil.obj"
	-@erase "$(INTDIR)\xevil.res"
	-@erase "$(INTDIR)\XEvilServerStatus.obj"
	-@erase "$(INTDIR)\xviewport.obj"
	-@erase "$(OUTDIR)\xevil.exe"
	-@erase "$(OUTDIR)\xevil.ilk"
	-@erase "$(OUTDIR)\xevil.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /Fp"$(INTDIR)\xevil.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o NUL /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\xevil.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\xevil.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=winmm.lib ole32.lib /nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)\xevil.pdb" /debug /machine:I386 /out:"$(OUTDIR)\xevil.exe"\
 /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\aboutdialog.obj" \
	"$(INTDIR)\actual.obj" \
	"$(INTDIR)\area.obj" \
	"$(INTDIR)\connectdlg.obj" \
	"$(INTDIR)\coord.obj" \
	"$(INTDIR)\Difficulty.obj" \
	"$(INTDIR)\draw.obj" \
	"$(INTDIR)\firepal.obj" \
	"$(INTDIR)\fogpal.obj" \
	"$(INTDIR)\fsstatus.obj" \
	"$(INTDIR)\functionkeysdlg.obj" \
	"$(INTDIR)\game.obj" \
	"$(INTDIR)\game_style.obj" \
	"$(INTDIR)\glowpal.obj" \
	"$(INTDIR)\id.obj" \
	"$(INTDIR)\intel.obj" \
	"$(INTDIR)\KeyHitDlg.obj" \
	"$(INTDIR)\keysdlg.obj" \
	"$(INTDIR)\KeySets.obj" \
	"$(INTDIR)\l_agreement.obj" \
	"$(INTDIR)\locator.obj" \
	"$(INTDIR)\OptionsDlg.obj" \
	"$(INTDIR)\palmod.obj" \
	"$(INTDIR)\physical.obj" \
	"$(INTDIR)\role.obj" \
	"$(INTDIR)\RunServerDlg.obj" \
	"$(INTDIR)\s_man.obj" \
	"$(INTDIR)\sound.obj" \
	"$(INTDIR)\sound_cmn.obj" \
	"$(INTDIR)\specialcontrols.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\StoryDlg.obj" \
	"$(INTDIR)\streams.obj" \
	"$(INTDIR)\template.obj" \
	"$(INTDIR)\timedlg.obj" \
	"$(INTDIR)\ui.obj" \
	"$(INTDIR)\ui_cmn.obj" \
	"$(INTDIR)\Uiplayer.obj" \
	"$(INTDIR)\uiserver.obj" \
	"$(INTDIR)\utils.obj" \
	"$(INTDIR)\wheel.obj" \
	"$(INTDIR)\world.obj" \
	"$(INTDIR)\xdata.obj" \
	"$(INTDIR)\xetp.obj" \
	"$(INTDIR)\Xevil.obj" \
	"$(INTDIR)\xevil.res" \
	"$(INTDIR)\XEvilServerStatus.obj" \
	"$(INTDIR)\xviewport.obj" \
	".\ddraw.lib" \
	".\dsound.lib"

"$(OUTDIR)\xevil.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(CFG)" == "xevil - Win32 Release" || "$(CFG)" == "xevil - Win32 Debug"
SOURCE=.\aboutdialog.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_ABOUT=\
	".\aboutdialog.h"\
	".\stdafx.h"\
	".\xevil.h"\
	{$(INCLUDE)}"l_agreement.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\aboutdialog.obj" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_ABOUT=\
	".\aboutdialog.h"\
	".\stdafx.h"\
	".\xevil.h"\
	{$(INCLUDE)}"l_agreement.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\aboutdialog.obj" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\actual.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_ACTUA=\
	"..\cmn\actual.h"\
	"..\cmn\bitmaps\alien\alien.bitmaps"\
	"..\cmn\bitmaps\altar_of_sin\altar_of_sin.bitmaps"\
	"..\cmn\bitmaps\auto_lancer\auto_lancer.bitmaps"\
	"..\cmn\bitmaps\blood\blood.bitmaps"\
	"..\cmn\bitmaps\bomb\bomb.bitmaps"\
	"..\cmn\bitmaps\caffine\caffine.bitmaps"\
	"..\cmn\bitmaps\chainsaw\chainsaw.bitmaps"\
	"..\cmn\bitmaps\chopper_boy\chopper_boy.bitmaps"\
	"..\cmn\bitmaps\cloak\cloak.bitmaps"\
	"..\cmn\bitmaps\crack_pipe\crack_pipe.bitmaps"\
	"..\cmn\bitmaps\demon_summoner\demon_summoner.bitmaps"\
	"..\cmn\bitmaps\dog\dog.bitmaps"\
	"..\cmn\bitmaps\dog_whistle\dog_whistle.bitmaps"\
	"..\cmn\bitmaps\doppel\doppel.bitmaps"\
	"..\cmn\bitmaps\dragon\dragon.bitmaps"\
	"..\cmn\bitmaps\egg\egg.bitmaps"\
	"..\cmn\bitmaps\enforcer\enforcer.bitmaps"\
	"..\cmn\bitmaps\explosion\explosion.bitmaps"\
	"..\cmn\bitmaps\f_thrower\f_thrower.bitmaps"\
	"..\cmn\bitmaps\fire\fire.bitmaps"\
	"..\cmn\bitmaps\fire_demon\fire_demon.bitmaps"\
	"..\cmn\bitmaps\fire_explosion\fire_explosion.bitmaps"\
	"..\cmn\bitmaps\fireball\fireball.bitmaps"\
	"..\cmn\bitmaps\flag\flag.bitmaps"\
	"..\cmn\bitmaps\frog\frog.bitmaps"\
	"..\cmn\bitmaps\frog_gun\frog_gun.bitmaps"\
	"..\cmn\bitmaps\frog_shell\frog_shell.bitmaps"\
	"..\cmn\bitmaps\green_blood\green_blood.bitmaps"\
	"..\cmn\bitmaps\grenade\grenade.bitmaps"\
	"..\cmn\bitmaps\grenades\grenades.bitmaps"\
	"..\cmn\bitmaps\hero\hero.bitmaps"\
	"..\cmn\bitmaps\home\home.bitmaps"\
	"..\cmn\bitmaps\hugger\hugger.bitmaps"\
	"..\cmn\bitmaps\lance\lance.bitmaps"\
	"..\cmn\bitmaps\lancer\lancer.bitmaps"\
	"..\cmn\bitmaps\laser\laser.bitmaps"\
	"..\cmn\bitmaps\launcher\launcher.bitmaps"\
	"..\cmn\bitmaps\m_gun\m_gun.bitmaps"\
	"..\cmn\bitmaps\med_kit\med_kit.bitmaps"\
	"..\cmn\bitmaps\missile\missile.bitmaps"\
	"..\cmn\bitmaps\n_protection\n_protection.bitmaps"\
	"..\cmn\bitmaps\n_shield\n_shield.bitmaps"\
	"..\cmn\bitmaps\napalm\napalm.bitmaps"\
	"..\cmn\bitmaps\napalms\napalms.bitmaps"\
	"..\cmn\bitmaps\ninja\ninja.bitmaps"\
	"..\cmn\bitmaps\oil_droplet\oil_droplet.bitmaps"\
	"..\cmn\bitmaps\p_c_p\p_c_p.bitmaps"\
	"..\cmn\bitmaps\phys_mover\phys_mover.bitmaps"\
	"..\cmn\bitmaps\pistol\pistol.bitmaps"\
	"..\cmn\bitmaps\rock\rock.bitmaps"\
	"..\cmn\bitmaps\seal\seal.bitmaps"\
	"..\cmn\bitmaps\shell\shell.bitmaps"\
	"..\cmn\bitmaps\star\star.bitmaps"\
	"..\cmn\bitmaps\stars\stars.bitmaps"\
	"..\cmn\bitmaps\swap_shell\swap_shell.bitmaps"\
	"..\cmn\bitmaps\swapper\swapper.bitmaps"\
	"..\cmn\bitmaps\t_protection\t_protection.bitmaps"\
	"..\cmn\bitmaps\t_shield\t_shield.bitmaps"\
	"..\cmn\bitmaps\transmogifier\transmogifier.bitmaps"\
	"..\cmn\bitmaps\trapdoor\trapdoor.bitmaps"\
	"..\cmn\bitmaps\troll\troll.bitmaps"\
	"..\cmn\bitmaps\walker\walker.bitmaps"\
	"..\cmn\bitmaps\weight\weight.bitmaps"\
	"..\cmn\bitmaps\x_protection\x_protection.bitmaps"\
	"..\cmn\bitmaps\xit\xit.bitmaps"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\actual.obj" : $(SOURCE) $(DEP_CPP_ACTUA) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_ACTUA=\
	"..\cmn\actual.h"\
	"..\cmn\bitmaps\alien\alien.bitmaps"\
	"..\cmn\bitmaps\altar_of_sin\altar_of_sin.bitmaps"\
	"..\cmn\bitmaps\auto_lancer\auto_lancer.bitmaps"\
	"..\cmn\bitmaps\blood\blood.bitmaps"\
	"..\cmn\bitmaps\bomb\bomb.bitmaps"\
	"..\cmn\bitmaps\caffine\caffine.bitmaps"\
	"..\cmn\bitmaps\chainsaw\chainsaw.bitmaps"\
	"..\cmn\bitmaps\chopper_boy\chopper_boy.bitmaps"\
	"..\cmn\bitmaps\cloak\cloak.bitmaps"\
	"..\cmn\bitmaps\crack_pipe\crack_pipe.bitmaps"\
	"..\cmn\bitmaps\demon_summoner\demon_summoner.bitmaps"\
	"..\cmn\bitmaps\dog\dog.bitmaps"\
	"..\cmn\bitmaps\dog_whistle\dog_whistle.bitmaps"\
	"..\cmn\bitmaps\doppel\doppel.bitmaps"\
	"..\cmn\bitmaps\dragon\dragon.bitmaps"\
	"..\cmn\bitmaps\egg\egg.bitmaps"\
	"..\cmn\bitmaps\enforcer\enforcer.bitmaps"\
	"..\cmn\bitmaps\explosion\explosion.bitmaps"\
	"..\cmn\bitmaps\f_thrower\f_thrower.bitmaps"\
	"..\cmn\bitmaps\fire\fire.bitmaps"\
	"..\cmn\bitmaps\fire_demon\fire_demon.bitmaps"\
	"..\cmn\bitmaps\fire_explosion\fire_explosion.bitmaps"\
	"..\cmn\bitmaps\fireball\fireball.bitmaps"\
	"..\cmn\bitmaps\flag\flag.bitmaps"\
	"..\cmn\bitmaps\frog\frog.bitmaps"\
	"..\cmn\bitmaps\frog_gun\frog_gun.bitmaps"\
	"..\cmn\bitmaps\frog_shell\frog_shell.bitmaps"\
	"..\cmn\bitmaps\green_blood\green_blood.bitmaps"\
	"..\cmn\bitmaps\grenade\grenade.bitmaps"\
	"..\cmn\bitmaps\grenades\grenades.bitmaps"\
	"..\cmn\bitmaps\hero\hero.bitmaps"\
	"..\cmn\bitmaps\home\home.bitmaps"\
	"..\cmn\bitmaps\hugger\hugger.bitmaps"\
	"..\cmn\bitmaps\lance\lance.bitmaps"\
	"..\cmn\bitmaps\lancer\lancer.bitmaps"\
	"..\cmn\bitmaps\laser\laser.bitmaps"\
	"..\cmn\bitmaps\launcher\launcher.bitmaps"\
	"..\cmn\bitmaps\m_gun\m_gun.bitmaps"\
	"..\cmn\bitmaps\med_kit\med_kit.bitmaps"\
	"..\cmn\bitmaps\missile\missile.bitmaps"\
	"..\cmn\bitmaps\n_protection\n_protection.bitmaps"\
	"..\cmn\bitmaps\n_shield\n_shield.bitmaps"\
	"..\cmn\bitmaps\napalm\napalm.bitmaps"\
	"..\cmn\bitmaps\napalms\napalms.bitmaps"\
	"..\cmn\bitmaps\ninja\ninja.bitmaps"\
	"..\cmn\bitmaps\oil_droplet\oil_droplet.bitmaps"\
	"..\cmn\bitmaps\p_c_p\p_c_p.bitmaps"\
	"..\cmn\bitmaps\phys_mover\phys_mover.bitmaps"\
	"..\cmn\bitmaps\pistol\pistol.bitmaps"\
	"..\cmn\bitmaps\rock\rock.bitmaps"\
	"..\cmn\bitmaps\seal\seal.bitmaps"\
	"..\cmn\bitmaps\shell\shell.bitmaps"\
	"..\cmn\bitmaps\star\star.bitmaps"\
	"..\cmn\bitmaps\stars\stars.bitmaps"\
	"..\cmn\bitmaps\swap_shell\swap_shell.bitmaps"\
	"..\cmn\bitmaps\swapper\swapper.bitmaps"\
	"..\cmn\bitmaps\t_protection\t_protection.bitmaps"\
	"..\cmn\bitmaps\t_shield\t_shield.bitmaps"\
	"..\cmn\bitmaps\transmogifier\transmogifier.bitmaps"\
	"..\cmn\bitmaps\trapdoor\trapdoor.bitmaps"\
	"..\cmn\bitmaps\troll\troll.bitmaps"\
	"..\cmn\bitmaps\walker\walker.bitmaps"\
	"..\cmn\bitmaps\weight\weight.bitmaps"\
	"..\cmn\bitmaps\x_protection\x_protection.bitmaps"\
	"..\cmn\bitmaps\xit\xit.bitmaps"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\actual.obj" : $(SOURCE) $(DEP_CPP_ACTUA) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\cmn\area.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_AREA_=\
	"..\cmn\streams.h"\
	".\stdafx.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\area.obj" : $(SOURCE) $(DEP_CPP_AREA_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_AREA_=\
	"..\cmn\streams.h"\
	".\stdafx.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\area.obj" : $(SOURCE) $(DEP_CPP_AREA_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\connectdlg.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_CONNE=\
	"..\cmn\streams.h"\
	".\connectdlg.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	".\xevil.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"role.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\connectdlg.obj" : $(SOURCE) $(DEP_CPP_CONNE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_CONNE=\
	"..\cmn\streams.h"\
	".\connectdlg.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	".\xevil.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"role.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\connectdlg.obj" : $(SOURCE) $(DEP_CPP_CONNE) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\coord.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_COORD=\
	"..\cmn\streams.h"\
	".\stdafx.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\coord.obj" : $(SOURCE) $(DEP_CPP_COORD) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_COORD=\
	"..\cmn\streams.h"\
	".\stdafx.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\coord.obj" : $(SOURCE) $(DEP_CPP_COORD) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Difficulty.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_DIFFI=\
	"..\cmn\streams.h"\
	".\difficulty.h"\
	".\stdafx.h"\
	".\xevil.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\Difficulty.obj" : $(SOURCE) $(DEP_CPP_DIFFI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_DIFFI=\
	"..\cmn\streams.h"\
	".\difficulty.h"\
	".\stdafx.h"\
	".\xevil.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\Difficulty.obj" : $(SOURCE) $(DEP_CPP_DIFFI) "$(INTDIR)"


!ENDIF 

SOURCE=.\draw.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_DRAW_=\
	"..\cmn\actual.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\draw.obj" : $(SOURCE) $(DEP_CPP_DRAW_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_DRAW_=\
	"..\cmn\actual.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\draw.obj" : $(SOURCE) $(DEP_CPP_DRAW_) "$(INTDIR)"


!ENDIF 

SOURCE=.\firepal.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_FIREP=\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\firepal.obj" : $(SOURCE) $(DEP_CPP_FIREP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_FIREP=\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\firepal.obj" : $(SOURCE) $(DEP_CPP_FIREP) "$(INTDIR)"


!ENDIF 

SOURCE=.\fogpal.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_FOGPA=\
	"..\cmn\streams.h"\
	".\fogpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\fogpal.obj" : $(SOURCE) $(DEP_CPP_FOGPA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_FOGPA=\
	"..\cmn\streams.h"\
	".\fogpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\fogpal.obj" : $(SOURCE) $(DEP_CPP_FOGPA) "$(INTDIR)"


!ENDIF 

SOURCE=.\fsstatus.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_FSSTA=\
	"..\cmn\streams.h"\
	".\fsstatus.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\wheel.h"\
	".\xdata.h"\
	".\xevil.h"\
	".\xviewport.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\fsstatus.obj" : $(SOURCE) $(DEP_CPP_FSSTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_FSSTA=\
	"..\cmn\streams.h"\
	".\fsstatus.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\wheel.h"\
	".\xdata.h"\
	".\xevil.h"\
	".\xviewport.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\fsstatus.obj" : $(SOURCE) $(DEP_CPP_FSSTA) "$(INTDIR)"


!ENDIF 

SOURCE=.\functionkeysdlg.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_FUNCT=\
	".\fkeysdlg.h"\
	".\stdafx.h"\
	".\xevil.h"\
	

"$(INTDIR)\functionkeysdlg.obj" : $(SOURCE) $(DEP_CPP_FUNCT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_FUNCT=\
	".\fkeysdlg.h"\
	".\stdafx.h"\
	".\xevil.h"\
	

"$(INTDIR)\functionkeysdlg.obj" : $(SOURCE) $(DEP_CPP_FUNCT) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\game.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_GAME_=\
	"..\cmn\actual.h"\
	"..\cmn\game.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\xetp.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\specialcontrols.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\uiplayer.h"\
	".\uiserver.h"\
	".\xdata.h"\
	".\xevilserverstatus.h"\
	".\xviewport.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"l_agreement.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"role.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\game.obj" : $(SOURCE) $(DEP_CPP_GAME_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_GAME_=\
	"..\cmn\actual.h"\
	"..\cmn\game.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\xetp.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\specialcontrols.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\uiplayer.h"\
	".\uiserver.h"\
	".\xdata.h"\
	".\xevilserverstatus.h"\
	".\xviewport.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"l_agreement.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"role.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\game.obj" : $(SOURCE) $(DEP_CPP_GAME_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\cmn\game_style.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_GAME_S=\
	"..\cmn\actual.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\game_style.obj" : $(SOURCE) $(DEP_CPP_GAME_S) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_GAME_S=\
	"..\cmn\actual.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\game_style.obj" : $(SOURCE) $(DEP_CPP_GAME_S) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\glowpal.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_GLOWP=\
	"..\cmn\streams.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\glowpal.obj" : $(SOURCE) $(DEP_CPP_GLOWP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_GLOWP=\
	"..\cmn\streams.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\glowpal.obj" : $(SOURCE) $(DEP_CPP_GLOWP) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\id.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_ID_CP=\
	"..\cmn\streams.h"\
	".\stdafx.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\id.obj" : $(SOURCE) $(DEP_CPP_ID_CP) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_ID_CP=\
	"..\cmn\streams.h"\
	".\stdafx.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\id.obj" : $(SOURCE) $(DEP_CPP_ID_CP) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\cmn\intel.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_INTEL=\
	"..\cmn\actual.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\xetp.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\intel.obj" : $(SOURCE) $(DEP_CPP_INTEL) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_INTEL=\
	"..\cmn\actual.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\xetp.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\intel.obj" : $(SOURCE) $(DEP_CPP_INTEL) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\KeyHitDlg.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_KEYHI=\
	".\keyhitdlg.h"\
	".\stdafx.h"\
	".\xevil.h"\
	

"$(INTDIR)\KeyHitDlg.obj" : $(SOURCE) $(DEP_CPP_KEYHI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_KEYHI=\
	".\keyhitdlg.h"\
	".\stdafx.h"\
	".\xevil.h"\
	

"$(INTDIR)\KeyHitDlg.obj" : $(SOURCE) $(DEP_CPP_KEYHI) "$(INTDIR)"


!ENDIF 

SOURCE=.\keysdlg.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_KEYSD=\
	".\keysdlg.h"\
	".\stdafx.h"\
	".\xevil.h"\
	

"$(INTDIR)\keysdlg.obj" : $(SOURCE) $(DEP_CPP_KEYSD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_KEYSD=\
	".\keysdlg.h"\
	".\stdafx.h"\
	".\xevil.h"\
	

"$(INTDIR)\keysdlg.obj" : $(SOURCE) $(DEP_CPP_KEYSD) "$(INTDIR)"


!ENDIF 

SOURCE=.\KeySets.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_KEYSE=\
	".\keyhitdlg.h"\
	".\keysets.h"\
	".\stdafx.h"\
	".\xevil.h"\
	

"$(INTDIR)\KeySets.obj" : $(SOURCE) $(DEP_CPP_KEYSE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_KEYSE=\
	".\keyhitdlg.h"\
	".\keysets.h"\
	".\stdafx.h"\
	".\xevil.h"\
	

"$(INTDIR)\KeySets.obj" : $(SOURCE) $(DEP_CPP_KEYSE) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\l_agreement.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_L_AGR=\
	".\stdafx.h"\
	{$(INCLUDE)}"l_agreement.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\l_agreement.obj" : $(SOURCE) $(DEP_CPP_L_AGR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_L_AGR=\
	".\stdafx.h"\
	{$(INCLUDE)}"l_agreement.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\l_agreement.obj" : $(SOURCE) $(DEP_CPP_L_AGR) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\cmn\locator.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_LOCAT=\
	"..\cmn\actual.h"\
	"..\cmn\bitmaps\locator\locator.bitmaps"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\template.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\locator.obj" : $(SOURCE) $(DEP_CPP_LOCAT) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_LOCAT=\
	"..\cmn\actual.h"\
	"..\cmn\bitmaps\locator\locator.bitmaps"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\template.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\locator.obj" : $(SOURCE) $(DEP_CPP_LOCAT) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\OptionsDlg.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_OPTIO=\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\optionsdlg.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	".\xevil.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\OptionsDlg.obj" : $(SOURCE) $(DEP_CPP_OPTIO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_OPTIO=\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\optionsdlg.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	".\xevil.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\OptionsDlg.obj" : $(SOURCE) $(DEP_CPP_OPTIO) "$(INTDIR)"


!ENDIF 

SOURCE=.\palmod.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_PALMO=\
	"..\cmn\streams.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\palmod.obj" : $(SOURCE) $(DEP_CPP_PALMO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_PALMO=\
	"..\cmn\streams.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\palmod.obj" : $(SOURCE) $(DEP_CPP_PALMO) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\physical.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_PHYSI=\
	"..\cmn\actual.h"\
	"..\cmn\bitmaps\transform\transform.bitmaps"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\physical.obj" : $(SOURCE) $(DEP_CPP_PHYSI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_PHYSI=\
	"..\cmn\actual.h"\
	"..\cmn\bitmaps\transform\transform.bitmaps"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\physical.obj" : $(SOURCE) $(DEP_CPP_PHYSI) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\cmn\role.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_ROLE_=\
	"..\cmn\neth.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\xetp.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"role.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"sys\types.h"\
	{$(INCLUDE)}"sys\utime.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\role.obj" : $(SOURCE) $(DEP_CPP_ROLE_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_ROLE_=\
	"..\cmn\neth.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\xetp.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"role.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\role.obj" : $(SOURCE) $(DEP_CPP_ROLE_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\RunServerDlg.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_RUNSE=\
	"..\cmn\streams.h"\
	".\runserverdlg.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	".\xevil.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"role.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\RunServerDlg.obj" : $(SOURCE) $(DEP_CPP_RUNSE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_RUNSE=\
	"..\cmn\streams.h"\
	".\runserverdlg.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	".\xevil.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"role.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\RunServerDlg.obj" : $(SOURCE) $(DEP_CPP_RUNSE) "$(INTDIR)"


!ENDIF 

SOURCE=.\s_man.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_S_MAN=\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\s_man.obj" : $(SOURCE) $(DEP_CPP_S_MAN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_S_MAN=\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\s_man.obj" : $(SOURCE) $(DEP_CPP_S_MAN) "$(INTDIR)"


!ENDIF 

SOURCE=.\sound.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_SOUND=\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\sound.obj" : $(SOURCE) $(DEP_CPP_SOUND) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_SOUND=\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\sound.obj" : $(SOURCE) $(DEP_CPP_SOUND) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\sound_cmn.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_SOUND_=\
	"..\cmn\bitmaps\sound_cmn\sound_cmn.bitmaps"\
	"..\cmn\streams.h"\
	".\stdafx.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\sound_cmn.obj" : $(SOURCE) $(DEP_CPP_SOUND_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_SOUND_=\
	"..\cmn\bitmaps\sound_cmn\sound_cmn.bitmaps"\
	"..\cmn\streams.h"\
	".\stdafx.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\sound_cmn.obj" : $(SOURCE) $(DEP_CPP_SOUND_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\specialcontrols.cpp
DEP_CPP_SPECI=\
	".\specialcontrols.h"\
	".\stdafx.h"\
	

"$(INTDIR)\specialcontrols.obj" : $(SOURCE) $(DEP_CPP_SPECI) "$(INTDIR)"


SOURCE=.\stdafx.cpp
DEP_CPP_STDAF=\
	".\stdafx.h"\
	

"$(INTDIR)\stdafx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"


SOURCE=.\StoryDlg.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_STORY=\
	".\stdafx.h"\
	".\storydlg.h"\
	".\xevil.h"\
	

"$(INTDIR)\StoryDlg.obj" : $(SOURCE) $(DEP_CPP_STORY) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_STORY=\
	".\stdafx.h"\
	".\storydlg.h"\
	".\xevil.h"\
	

"$(INTDIR)\StoryDlg.obj" : $(SOURCE) $(DEP_CPP_STORY) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\streams.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_STREA=\
	"..\cmn\neth.h"\
	"..\cmn\streams.h"\
	"..\cmn\xetp.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\streams.obj" : $(SOURCE) $(DEP_CPP_STREA) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_STREA=\
	"..\cmn\neth.h"\
	"..\cmn\streams.h"\
	"..\cmn\xetp.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\streams.obj" : $(SOURCE) $(DEP_CPP_STREA) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=..\cmn\template.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_TEMPL=\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\template.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\template.obj" : $(SOURCE) $(DEP_CPP_TEMPL) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_TEMPL=\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\template.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\template.obj" : $(SOURCE) $(DEP_CPP_TEMPL) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\timedlg.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_TIMED=\
	".\stdafx.h"\
	".\timedlg.h"\
	".\xevil.h"\
	

"$(INTDIR)\timedlg.obj" : $(SOURCE) $(DEP_CPP_TIMED) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_TIMED=\
	".\stdafx.h"\
	".\timedlg.h"\
	".\xevil.h"\
	

"$(INTDIR)\timedlg.obj" : $(SOURCE) $(DEP_CPP_TIMED) "$(INTDIR)"


!ENDIF 

SOURCE=.\ui.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_UI_CP=\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\ui.obj" : $(SOURCE) $(DEP_CPP_UI_CP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_UI_CP=\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\ui.obj" : $(SOURCE) $(DEP_CPP_UI_CP) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\ui_cmn.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_UI_CM=\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\ui_cmn.obj" : $(SOURCE) $(DEP_CPP_UI_CM) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_UI_CM=\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\ui_cmn.obj" : $(SOURCE) $(DEP_CPP_UI_CM) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Uiplayer.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_UIPLA=\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\aboutdialog.h"\
	".\connectdlg.h"\
	".\difficulty.h"\
	".\firepal.h"\
	".\fkeysdlg.h"\
	".\fogpal.h"\
	".\fsstatus.h"\
	".\glowpal.h"\
	".\keysets.h"\
	".\optionsdlg.h"\
	".\palmod.h"\
	".\runserverdlg.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\storydlg.h"\
	".\ui.h"\
	".\uiplayer.h"\
	".\wheel.h"\
	".\xdata.h"\
	".\xviewport.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\Uiplayer.obj" : $(SOURCE) $(DEP_CPP_UIPLA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_UIPLA=\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\aboutdialog.h"\
	".\connectdlg.h"\
	".\difficulty.h"\
	".\firepal.h"\
	".\fkeysdlg.h"\
	".\fogpal.h"\
	".\fsstatus.h"\
	".\glowpal.h"\
	".\keysets.h"\
	".\optionsdlg.h"\
	".\palmod.h"\
	".\runserverdlg.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\storydlg.h"\
	".\ui.h"\
	".\uiplayer.h"\
	".\wheel.h"\
	".\xdata.h"\
	".\xviewport.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\Uiplayer.obj" : $(SOURCE) $(DEP_CPP_UIPLA) "$(INTDIR)"


!ENDIF 

SOURCE=.\uiserver.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_UISER=\
	"..\cmn\streams.h"\
	".\aboutdialog.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\optionsdlg.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\specialcontrols.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\uiserver.h"\
	".\xdata.h"\
	".\xevilserverstatus.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\uiserver.obj" : $(SOURCE) $(DEP_CPP_UISER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_UISER=\
	"..\cmn\streams.h"\
	".\aboutdialog.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\optionsdlg.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\specialcontrols.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\uiserver.h"\
	".\xdata.h"\
	".\xevilserverstatus.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\uiserver.obj" : $(SOURCE) $(DEP_CPP_UISER) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\utils.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_UTILS=\
	"..\cmn\streams.h"\
	".\stdafx.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\utils.obj" : $(SOURCE) $(DEP_CPP_UTILS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_UTILS=\
	"..\cmn\streams.h"\
	".\stdafx.h"\
	{$(INCLUDE)}"utils.h"\
	

"$(INTDIR)\utils.obj" : $(SOURCE) $(DEP_CPP_UTILS) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\wheel.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_WHEEL=\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\wheel.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\wheel.obj" : $(SOURCE) $(DEP_CPP_WHEEL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_WHEEL=\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\wheel.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\wheel.obj" : $(SOURCE) $(DEP_CPP_WHEEL) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\world.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_WORLD=\
	"..\cmn\actual.h"\
	"..\cmn\bitmaps\world\world.bitmaps"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\world.obj" : $(SOURCE) $(DEP_CPP_WORLD) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_WORLD=\
	"..\cmn\actual.h"\
	"..\cmn\bitmaps\world\world.bitmaps"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\world.obj" : $(SOURCE) $(DEP_CPP_WORLD) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\xdata.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_XDATA=\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\xdata.obj" : $(SOURCE) $(DEP_CPP_XDATA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_XDATA=\
	"..\cmn\streams.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\xdata.obj" : $(SOURCE) $(DEP_CPP_XDATA) "$(INTDIR)"


!ENDIF 

SOURCE=..\cmn\xetp.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_XETP_=\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\xetp.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\xetp.obj" : $(SOURCE) $(DEP_CPP_XETP_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_XETP_=\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	"..\cmn\xetp.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\ui.h"\
	".\xdata.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\xetp.obj" : $(SOURCE) $(DEP_CPP_XETP_) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Xevil.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_XEVIL=\
	"..\cmn\actual.h"\
	"..\cmn\game.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\aboutdialog.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\timedlg.h"\
	".\ui.h"\
	".\xdata.h"\
	".\xevil.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"l_agreement.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"role.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\Xevil.obj" : $(SOURCE) $(DEP_CPP_XEVIL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_XEVIL=\
	"..\cmn\actual.h"\
	"..\cmn\game.h"\
	"..\cmn\physical.h"\
	"..\cmn\streams.h"\
	".\aboutdialog.h"\
	".\firepal.h"\
	".\fogpal.h"\
	".\glowpal.h"\
	".\palmod.h"\
	".\s_man.h"\
	".\sound.h"\
	".\stdafx.h"\
	".\timedlg.h"\
	".\ui.h"\
	".\xdata.h"\
	".\xevil.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"game_style.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"l_agreement.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"role.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"ui_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\Xevil.obj" : $(SOURCE) $(DEP_CPP_XEVIL) "$(INTDIR)"


!ENDIF 

SOURCE=.\xevil.rc
DEP_RSC_XEVIL_=\
	".\res\!dog0_ru.bmp"\
	".\res\27a.bmp"\
	".\res\27b.bmp"\
	".\res\39a.bmp"\
	".\res\alien0.bmp"\
	".\res\alien0b.bmp"\
	".\res\alien10.bmp"\
	".\res\alien12.bmp"\
	".\res\alien18.bmp"\
	".\res\alien1b1.bmp"\
	".\res\Alien4.bmp"\
	".\res\alien5.bmp"\
	".\res\aliendea.bmp"\
	".\res\Aliennu.bmp"\
	".\res\altar2.bmp"\
	".\res\altar3.bmp"\
	".\res\arrow.cur"\
	".\res\arrow_l.bmp"\
	".\res\Arrow_up.bmp"\
	".\res\autolanc.bmp"\
	".\res\Back.bmp"\
	".\res\backg.BMP"\
	".\res\bangbang.wav"\
	".\res\Barrow_d.bmp"\
	".\res\barrow_l.bmp"\
	".\res\barrow_r.bmp"\
	".\res\barrow_u.bmp"\
	".\res\bceagle.bmp"\
	".\res\beat_dog.bmp"\
	".\res\bitmap2.bmp"\
	".\res\bitmap3.bmp"\
	".\res\Bitmap6.bmp"\
	".\res\bitmap7.bmp"\
	".\res\Bitmap8.bmp"\
	".\res\Blok2.bmp"\
	".\res\blood13.bmp"\
	".\res\blood25.bmp"\
	".\res\blood40.bmp"\
	".\res\blood9.bmp"\
	".\res\bloodg25.bmp"\
	".\res\bloodg39.bmp"\
	".\res\bloodg4.bmp"\
	".\res\bloodg40.bmp"\
	".\res\bloodg9.bmp"\
	".\res\bmp00001.bmp"\
	".\res\bmp00002.bmp"\
	".\res\bmp00003.bmp"\
	".\res\bmp00004.bmp"\
	".\res\bmp00005.bmp"\
	".\res\bmp00006.bmp"\
	".\res\bmp00007.bmp"\
	".\res\bmp00008.bmp"\
	".\res\bmp00009.bmp"\
	".\res\bmp00010.bmp"\
	".\res\bmp00011.bmp"\
	".\res\bmp00012.bmp"\
	".\res\bmp00013.bmp"\
	".\res\bmp00014.bmp"\
	".\res\bmp00015.bmp"\
	".\res\bmp00016.bmp"\
	".\res\bmp00017.bmp"\
	".\res\bmp00018.bmp"\
	".\res\bmp00019.bmp"\
	".\res\bmp00020.bmp"\
	".\res\bmp00022.bmp"\
	".\res\Bmp00024.bmp"\
	".\res\bmp00025.bmp"\
	".\res\bmp00026.bmp"\
	".\res\bmp00027.bmp"\
	".\res\bmp00028.bmp"\
	".\res\bmp00029.bmp"\
	".\res\bmp00030.bmp"\
	".\res\bmp00031.bmp"\
	".\res\bmp00032.bmp"\
	".\res\bmp00033.bmp"\
	".\res\bmp00034.bmp"\
	".\res\bmp00036.bmp"\
	".\res\bmp00037.bmp"\
	".\res\bmp00040.bmp"\
	".\res\bmp00041.bmp"\
	".\res\Bmp00042.bmp"\
	".\res\bmp00043.bmp"\
	".\res\bmp00054.bmp"\
	".\res\bmp00055.bmp"\
	".\res\bmp00056.bmp"\
	".\res\bmp00057.bmp"\
	".\res\bmp00061.bmp"\
	".\res\bmp00065.bmp"\
	".\res\bmp00074.bmp"\
	".\res\bmp00075.bmp"\
	".\res\bmp00078.bmp"\
	".\res\bmp00081.bmp"\
	".\res\bmp00084.bmp"\
	".\res\bmp00085.bmp"\
	".\res\bmp00091.bmp"\
	".\res\bmp00092.bmp"\
	".\res\bmp00093.bmp"\
	".\res\bmp00094.bmp"\
	".\res\bmp00096.bmp"\
	".\res\bmp00099.bmp"\
	".\res\bmp00101.bmp"\
	".\res\bmp00103.bmp"\
	".\res\bmp00105.bmp"\
	".\res\bmp00107.bmp"\
	".\res\bmp00109.bmp"\
	".\res\bmp00111.bmp"\
	".\res\bmp00113.bmp"\
	".\res\bmp00123.bmp"\
	".\res\bmp00125.bmp"\
	".\res\bmp00127.bmp"\
	".\res\bmp00129.bmp"\
	".\res\bmp00131.bmp"\
	".\res\bmp00132.bmp"\
	".\res\bmp00134.bmp"\
	".\res\bmp00136.bmp"\
	".\res\bmp00138.bmp"\
	".\res\bmp00140.bmp"\
	".\res\bmp00151.bmp"\
	".\res\bmp00154.bmp"\
	".\res\breakdwn.wav"\
	".\res\Bshield.bmp"\
	".\res\c0.bmp"\
	".\res\c1.bmp"\
	".\res\c2.bmp"\
	".\res\c3.bmp"\
	".\res\cat.bmp"\
	".\res\chainsaw.bmp"\
	".\res\chainsw.wav"\
	".\res\Choppr0.bmp"\
	".\res\Choppr0b.bmp"\
	".\res\Choppr0c.bmp"\
	".\res\Choppr0d.bmp"\
	".\res\Choppr0e.bmp"\
	".\res\Choppr0f.bmp"\
	".\res\Choppr2.bmp"\
	".\res\Choppr25.bmp"\
	".\res\Choppr2b.bmp"\
	".\res\Choppr2c.bmp"\
	".\res\Choppr2d.bmp"\
	".\res\Choppr4.bmp"\
	".\res\Choppr4b.bmp"\
	".\res\Choppr4c.bmp"\
	".\res\Choppr4d.bmp"\
	".\res\Choppr5.bmp"\
	".\res\Chopprd.bmp"\
	".\res\Chopprdb.bmp"\
	".\res\Chopprdc.bmp"\
	".\res\Chopprdd.bmp"\
	".\res\Choppru.bmp"\
	".\res\Chopprub.bmp"\
	".\res\Choppruc.bmp"\
	".\res\Chopprud.bmp"\
	".\res\chpdeath.wav"\
	".\res\cloak.bmp"\
	".\res\cloak.wav"\
	".\res\cloak1.bmp"\
	".\res\cloak3.bmp"\
	".\res\cloak4.bmp"\
	".\res\cloak5.bmp"\
	".\res\death.wav"\
	".\res\demonsum.bmp"\
	".\res\Dg5_a.bmp"\
	".\res\Dg5_b.bmp"\
	".\res\Dg_atd.bmp"\
	".\res\dg_atu.bmp"\
	".\res\displayb.bmp"\
	".\res\Dog_att0.bmp"\
	".\res\dogatt.wav"\
	".\res\dogdeath.wav"\
	".\res\Door1.bmp"\
	".\res\doorbot.bmp"\
	".\res\Doortop.bmp"\
	".\res\doppel.bmp"\
	".\res\doppel.wav"\
	".\res\doppel1.bmp"\
	".\res\dragonde.bmp"\
	".\res\drg_1.bmp"\
	".\res\drg_2.bmp"\
	".\res\drg_bdy.bmp"\
	".\res\drg_head.bmp"\
	".\res\drgbite.bmp"\
	".\res\drop_sch.bmp"\
	".\res\droplift.bmp"\
	".\res\drugs.bmp"\
	".\res\dwhistle.bmp"\
	".\res\egg.bmp"\
	".\res\egg_open.bmp"\
	".\res\empty.bmp"\
	".\res\Endblok.bmp"\
	".\res\Enf_0a.bmp"\
	".\res\Enf_0b.bmp"\
	".\res\Enf_0c.bmp"\
	".\res\Enf_0d.bmp"\
	".\res\Enf_5.bmp"\
	".\res\explosion.wav"\
	".\res\fire.bmp"\
	".\res\fireball.bmp"\
	".\res\fireball.wav"\
	".\res\fist.bmp"\
	".\res\flame2.bmp"\
	".\res\flame3.bmp"\
	".\res\frog0.bmp"\
	".\res\frog2.bmp"\
	".\res\frog4.bmp"\
	".\res\frog5.bmp"\
	".\res\frog_dea.bmp"\
	".\res\frog_she.bmp"\
	".\res\frogdeth.wav"\
	".\res\FROGGUN.BMP"\
	".\res\froggun.wav"\
	".\res\garrow_d.bmp"\
	".\res\garrow_l.bmp"\
	".\res\garrow_r.bmp"\
	".\res\garrow_u.bmp"\
	".\res\grenade1.bmp"\
	".\res\grenade3.bmp"\
	".\res\grenade4.bmp"\
	".\res\GRENADES.BMP"\
	".\res\Handtoha.bmp"\
	".\res\happy.bmp"\
	".\res\Hblok.bmp"\
	".\res\Heir2.bmp"\
	".\res\Hell5.bmp"\
	".\res\hell_1.bmp"\
	".\res\Henblok.bmp"\
	".\res\hero0.bmp"\
	".\res\Hero0_at.bmp"\
	".\res\Hero0b.bmp"\
	".\res\hero0c.bmp"\
	".\res\hero0d.bmp"\
	".\res\hero0e.bmp"\
	".\res\hero0f.bmp"\
	".\res\hero10.bmp"\
	".\res\hero10b.bmp"\
	".\res\heroatt.wav"\
	".\res\Hialtar.bmp"\
	".\res\hibomb0.bmp"\
	".\res\hibomb1.bmp"\
	".\res\hibomb2.bmp"\
	".\res\hibomb3.bmp"\
	".\res\hibomb4.bmp"\
	".\res\hibomb5.bmp"\
	".\res\hibomb6.bmp"\
	".\res\hibombbl.bmp"\
	".\res\hiddog0.bmp"\
	".\res\hiddog0_.bmp"\
	".\res\hiddog0b.bmp"\
	".\res\hiddog2.bmp"\
	".\res\hiddog21.bmp"\
	".\res\hiddog22.bmp"\
	".\res\hiddog2_.bmp"\
	".\res\Hiddog5.bmp"\
	".\res\hiddog5b.bmp"\
	".\res\hiddogde.bmp"\
	".\res\hidog0.bmp"\
	".\res\hidog2.bmp"\
	".\res\hidog21.bmp"\
	".\res\hidog21b.bmp"\
	".\res\hidog22.bmp"\
	".\res\hidog22b.bmp"\
	".\res\hidog2_a.bmp"\
	".\res\hidogdea.bmp"\
	".\res\hidoor2.bmp"\
	".\res\hifirede.bmp"\
	".\res\hiflag.bmp"\
	".\res\hihero19.bmp"\
	".\res\hihero21.bmp"\
	".\res\hihero22.bmp"\
	".\res\Hihero4.bmp"\
	".\res\Hihero5.bmp"\
	".\res\Hihero_d.bmp"\
	".\res\hihome.bmp"\
	".\res\hihugger.bmp"\
	".\res\hilaunch.bmp"\
	".\res\himedkit.bmp"\
	".\res\hininja1.bmp"\
	".\res\hininja2.bmp"\
	".\res\hininja_.bmp"\
	".\res\hipistol.bmp"\
	".\res\hitextbl.bmp"\
	".\res\hiwalk18.bmp"\
	".\res\hiwalk2b.bmp"\
	".\res\hiwalk4.bmp"\
	".\res\hiwalk4b.bmp"\
	".\res\hiwalk4c.bmp"\
	".\res\hiwalk4d.bmp"\
	".\res\hiwalk5.bmp"\
	".\res\hiwalk5b.bmp"\
	".\res\Hiwalk5c.bmp"\
	".\res\Hiwalk5d.bmp"\
	".\res\hiwalk_0.bmp"\
	".\res\hiwalk_0b.bmp"\
	".\res\hiwalk_0c.bmp"\
	".\res\hiwalk_0d.bmp"\
	".\res\hiwalk_2.bmp"\
	".\res\hiwalk_d.bmp"\
	".\res\hiwlk18b.bmp"\
	".\res\Htrack.bmp"\
	".\res\idr_xevi.ico"\
	".\res\Ind1.bmp"\
	".\res\Indt2.bmp"\
	".\res\Jump0.bmp"\
	".\res\Ladder.bmp"\
	".\res\Ladder2.bmp"\
	".\res\Lance_ho.bmp"\
	".\res\lance_ve.bmp"\
	".\res\lancer.wav"\
	".\res\lancer1.bmp"\
	".\res\laser.wav"\
	".\res\laser_ho.bmp"\
	".\res\lasers.bmp"\
	".\res\lem_trak.wav"\
	".\res\lemdeth.wav"\
	".\res\logob5.bmp"\
	".\res\machgun.wav"\
	".\res\Md2door1.bmp"\
	".\res\Md2door2.bmp"\
	".\res\Md2ladde.bmp"\
	".\res\Md2mover.bmp"\
	".\res\Md2updow.bmp"\
	".\res\Menunewg.bmp"\
	".\res\mgun1.bmp"\
	".\res\missile.wav"\
	".\res\missle25.bmp"\
	".\res\missle39.bmp"\
	".\res\missle40.bmp"\
	".\res\mover.bmp"\
	".\res\Moversq.bmp"\
	".\res\moversqu.bmp"\
	".\res\napalm1.bmp"\
	".\res\napalm2.bmp"\
	".\res\napalm3.bmp"\
	".\res\napalm4.bmp"\
	".\res\napalms.bmp"\
	".\res\Nin0.bmp"\
	".\res\Nin0b.bmp"\
	".\res\Nin0c.bmp"\
	".\res\Nin0d.bmp"\
	".\res\Nin0e.bmp"\
	".\res\Nin0f.bmp"\
	".\res\Nin5.bmp"\
	".\res\nin_kick0jmp.bmp"\
	".\res\nin_kick0low.bmp"\
	".\res\nin_lo0.bmp"\
	".\res\nin_lo0b.bmp"\
	".\res\nin_lo0c.bmp"\
	".\res\nin_lo0d.bmp"\
	".\res\nin_lo0e.bmp"\
	".\res\nin_lo0f.bmp"\
	".\res\ninatt_down.bmp"\
	".\res\Ninj0a.bmp"\
	".\res\Ninj0b.bmp"\
	".\res\Ninj0c.bmp"\
	".\res\Ninj0d.bmp"\
	".\res\ninjaatt.wav"\
	".\res\ninjadth.wav"\
	".\res\ninjump_down1.bmp"\
	".\res\ninjump_down2.bmp"\
	".\res\ninjump_up.bmp"\
	".\res\nlift.BMP"\
	".\res\none.bmp"\
	".\res\none1.bmp"\
	".\res\oil25.bmp"\
	".\res\oil39.bmp"\
	".\res\oil4.bmp"\
	".\res\oil40.bmp"\
	".\res\oil9.bmp"\
	".\res\Outa.bmp"\
	".\res\Outb.bmp"\
	".\res\outs.BMP"\
	".\res\Outside.bmp"\
	".\res\Parents.bmp"\
	".\res\pent.bmp"\
	".\res\pepper1.bmp"\
	".\res\pills.bmp"\
	".\res\pistol.wav"\
	".\res\pyramid.bmp"\
	".\res\r0.bmp"\
	".\res\r1.bmp"\
	".\res\r2.bmp"\
	".\res\r3.bmp"\
	".\res\r4.bmp"\
	".\res\r5.bmp"\
	".\res\r6.bmp"\
	".\res\r7.bmp"\
	".\res\r8.bmp"\
	".\res\rockhi.bmp"\
	".\res\seal0.bmp"\
	".\res\seal0b.bmp"\
	".\res\sealcenter.bmp"\
	".\res\sealdead.bmp"\
	".\res\shell.bmp"\
	".\res\shield.wav"\
	".\res\Sider.bmp"\
	".\res\skull.bmp"\
	".\res\Small.ico"\
	".\res\sndtrak.wav"\
	".\res\squanch_.bmp"\
	".\res\star.bmp"\
	".\res\starb.bmp"\
	".\res\STARS.BMP"\
	".\res\stop.bmp"\
	".\res\suicideb.bmp"\
	".\res\SWAPPER.BMP"\
	".\res\swapper.wav"\
	".\res\take_can.bmp"\
	".\res\Track.wav"\
	".\res\transmog.wav"\
	".\res\trapopen.bmp"\
	".\res\troll0.bmp"\
	".\res\troll0b.bmp"\
	".\res\troll0c.bmp"\
	".\res\troll0d.bmp"\
	".\res\troll1.bmp"\
	".\res\troll5.bmp"\
	".\res\Updn.bmp"\
	".\res\vegetabl.bmp"\
	".\res\vertmove.bmp"\
	".\res\Vtrack.bmp"\
	".\res\Wall.bmp"\
	".\res\Weight2.bmp"\
	".\res\Wsqaure.bmp"\
	".\res\xevil.pal"\
	".\res\XEvil.rc2"\
	".\res\xevil1.bmp"\
	".\res\xevil1.cur"\
	".\res\yarrow_d.bmp"\
	".\res\yarrow_l.bmp"\
	".\res\yarrow_r.bmp"\
	".\res\yarrow_u.bmp"\
	".\res\Yshield.bmp"\
	

"$(INTDIR)\xevil.res" : $(SOURCE) $(DEP_RSC_XEVIL_) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\XEvilServerStatus.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_XEVILS=\
	".\specialcontrols.h"\
	".\stdafx.h"\
	".\xevil.h"\
	".\xevilserverstatus.h"\
	

"$(INTDIR)\XEvilServerStatus.obj" : $(SOURCE) $(DEP_CPP_XEVILS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_XEVILS=\
	".\specialcontrols.h"\
	".\stdafx.h"\
	".\xevil.h"\
	".\xevilserverstatus.h"\
	

"$(INTDIR)\XEvilServerStatus.obj" : $(SOURCE) $(DEP_CPP_XEVILS) "$(INTDIR)"


!ENDIF 

SOURCE=.\xviewport.cpp

!IF  "$(CFG)" == "xevil - Win32 Release"

DEP_CPP_XVIEW=\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	".\xevil.h"\
	".\xviewport.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\xviewport.obj" : $(SOURCE) $(DEP_CPP_XVIEW) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "xevil - Win32 Debug"

DEP_CPP_XVIEW=\
	"..\cmn\streams.h"\
	".\s_man.h"\
	".\stdafx.h"\
	".\xdata.h"\
	".\xevil.h"\
	".\xviewport.h"\
	{$(INCLUDE)}"area.h"\
	{$(INCLUDE)}"coord.h"\
	{$(INCLUDE)}"id.h"\
	{$(INCLUDE)}"intel.h"\
	{$(INCLUDE)}"locator.h"\
	{$(INCLUDE)}"sound_cmn.h"\
	{$(INCLUDE)}"utils.h"\
	{$(INCLUDE)}"world.h"\
	

"$(INTDIR)\xviewport.obj" : $(SOURCE) $(DEP_CPP_XVIEW) "$(INTDIR)"


!ENDIF 


!ENDIF 

