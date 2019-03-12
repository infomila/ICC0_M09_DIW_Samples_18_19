rem ================================
rem     CONVERSIÓ A HTML5
rem ================================
set NAME=RogueOne
set VIDEO=%NAME%.mp4
set BITRATE=1M
rem ================================
ffprobe.exe -i %VIDEO%

pause

ffmpeg.exe -i %VIDEO% -c:v libx264 -b:v %BITRATE% -maxrate %BITRATE% %NAME%_lowres.mp4

ffmpeg.exe -i %VIDEO% -b:v %BITRATE% -maxrate %BITRATE% %NAME%.webm
ffmpeg.exe -i %VIDEO% -b:v %BITRATE% -maxrate %BITRATE% %NAME%.ogv

pause