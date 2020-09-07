#NoEnv ;Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ;Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ;Ensures a consistent starting directory.
SetTitleMatchMode 2    
#WinActivateForce

SetControlDelay 0

; 如果软件没打开，则打开软件；如果软件已打开则置顶软件，如果软件已被置顶，则隐藏软件
ActivateAndOpen(t,p)
{
	IfWinNotExist,ahk_exe %t%
    Run, %p%
    Else
    {
		IfWinActive, ahk_exe %t%
			WinMinimize
        Else
            WinActivate,				
    }

    return 0
}

; 发送文本 t 到粘贴板
SendToClipBoard(t)
{
        ;清空剪切板
        clipboard =
        clipboard = %t%
        return 0
}

; 一键打开所有软件
OpenAll()
{
	IfWinNotExist,ahk_exe "Xshell.exe"
	Run, "D:\EXE\MySave\Xshell-5.0\Xshell 5\Xshell.exe"
	
	IfWinNotExist,ahk_exe "SecureCRT.exe"
	Run, "C:\Program Files\VanDyke Software\SecureCRT\SecureCRT.exe"

	IfWinNotExist,ahk_exe "WXWork.exe"
	Run, "C:\Program Files (x86)\WXWork\WXWork.exe"

	IfWinNotExist,ahk_exe "atom.exe"
	Run, "C:\Users\lkong\AppData\Local\atom\app-1.43.0\atom.exe"

	IfWinNotExist,ahk_exe "chrome.exe"
	Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

	IfWinNotExist,ahk_exe "TOTALCMD64.EXE"
	Run, "C:\Program Files\totalcmd\TOTALCMD64.EXE"
}

; 绑定热键
!\::OpenAll()
!e::ActivateAndOpen("Xshell.exe","D:\EXE\MySave\Xshell-6.0\Xshell 6\Xshell.exe")
!w::ActivateAndOpen("SecureCRT.exe","C:\Program Files\VanDyke Software\SecureCRT\SecureCRT.exe")
#s::ActivateAndOpen("WeChat.exe","C:\Program Files (x86)\Tencent\WeChat\WeChat.exe")
!r::ActivateAndOpen("WXWork.exe","C:\Program Files (x86)\WXWork\WXWork.exe")
#k::ActivateAndOpen("QQ.exe","C:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe")
!t::ActivateAndOpen("Insomnia.exe","C:\Users\lkong\AppData\Local\insomnia\app-7.1.1\Insomnia.exe")

!d::ActivateAndOpen("POWERPNT.EXE","C:\Program Files (x86)\Microsoft Office\root\Office16\POWERPNT.EXE")
!g::ActivateAndOpen("WINWORD.EXE","C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE")
!h::ActivateAndOpen("EXCEL.EXE","C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE")
#v::ActivateAndOpen("VISIO.EXE","C:\Program Files (x86)\Microsoft Office\root\Office16\VISIO.EXE")
!p::ActivateAndOpen("SumatraPDF.exe","C:\ProgramData\Microsoft\Windows\Start Menu\Programs\SumatraPDF")

#v::ActivateAndOpen("i_view32.exe","C:\Program Files (x86)\IrfanView\i_view32.exe")
#e::ActivateAndOpen("atom.exe","C:\Users\lkong\AppData\Local\atom\app-1.43.0\atom.exe")
!a::ActivateAndOpen("MySQLWorkbench.exe","C:\Program Files\MySQL\MySQL Workbench 8.0 CE\MySQLWorkbench.exe")
#f::ActivateAndOpen("firefox.exe","C:\Program Files (x86)\Mozilla Firefox\firefox.exe")
!q::ActivateAndOpen("TOTALCMD64.EXE","C:\Program Files\totalcmd\TOTALCMD64.EXE")
!f::ActivateAndOpen("chrome.exe","C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")

;粘贴板
#0::SendToClipBoard("your@password")
