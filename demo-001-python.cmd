@echo off

rem --- API_KEY ---
call openaikey.cmd
echo OPENAI_API_USR %OPENAI_API_USR%
echo OPENAI_API_KEY %OPENAI_API_KEY%
pause

rem --- CALL_API ---
python demo-001-python.py
pause
