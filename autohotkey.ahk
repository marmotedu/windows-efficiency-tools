#NoEnv  ;Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ;Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ;Ensures a consistent starting directory.
SetTitleMatchMode 2    

ActivateAndOpen(t,p)
{
	IfWinNotExist,ahk_exe %t%
	Run, %p%
	Else
	{
		IfWinActive, ahk_exe %t%
			WinMinimize, 
		Else
			WinActivate,
	}
	return 0
}

SendToClipBoard(t)
{
	;清空剪切板
	clipboard =
	clipboard = %t%
	return 0
}

; ======================================================================================================================
;hot keys
!e::ActivateAndOpen("Xshell.exe","C:\Program Files (x86)\NetSarang\Xshell 5\Xshell.exe")
!w::ActivateAndOpen("SecureCRT.exe","C:\Program Files\VanDyke Software\SecureCRT\SecureCRT.exe")
#s::ActivateAndOpen("WeChat.exe","C:\Program Files (x86)\Tencent\WeChat\WeChat.exe")
!r::ActivateAndOpen("WXWork.exe","C:\Program Files (x86)\WXWork\WXWork.exe")

!d::ActivateAndOpen("POWERPNT.EXE","C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE")
!g::ActivateAndOpen("WINWORD.EXE","C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE")
!h::ActivateAndOpen("EXCEL.EXE","C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE")
!p::ActivateAndOpen("SumatraPDF.exe","C:\ProgramData\Microsoft\Windows\Start Menu\Programs\SumatraPDF")

#v::ActivateAndOpen("i_view32.exe","C:\Program Files (x86)\IrfanView\i_view32.exe")
#e::ActivateAndOpen("atom.exe","C:\Users\lkong\AppData\Local\atom\atom.exe")
!a::ActivateAndOpen("MySQLWorkbench.exe","C:\Program Files\MySQL\MySQL Workbench 6.3 CE\MySQLWorkbench.exe")
#f::ActivateAndOpen("firefox.exe","C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
!q::ActivateAndOpen("TTOTAL_CMD","C:\totalcmd\TOTALCMD.EXE")
!f::ActivateAndOpen("chrome.exe","C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")

;clipboard
#0::SendToClipBoard("yourpassword")
