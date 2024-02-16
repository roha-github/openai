@echo off

rem --- API_KEY ---
call openaikey.cmd
echo OPENAI_API_USR %OPENAI_API_USR%
echo OPENAI_API_KEY %OPENAI_API_KEY%
pause

rem --- API_REQUEST ---
set OPENAI_TEMPFILE=demo-001-curl.tmp
(echo {^
 \"model\":\"gpt-3.5-turbo\",^
 \"messages\":[^
  {\"role\":\"user\",\"content\":\"Was ist 1+1\"}^
 ]^
}) >%OPENAI_TEMPFILE% & (set /p OPENAI_REQUEST=)<%OPENAI_TEMPFILE%
echo OPENAI_REQUEST "%OPENAI_REQUEST%"
pause

rem --- CURL_REQUEST ---
echo on
curl https://api.openai.com/v1/chat/completions -H "Content-Type: application/json" -H "Authorization: Bearer %OPENAI_API_KEY%" -d "%OPENAI_REQUEST%"
pause

rem C:\Dateien>curl https://api.openai.com/v1/chat/completions -H "Content-Type: application/json" -H "Authorization: Bearer sk-lxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxi" 
rem   -d "{ \"model\":\"gpt-3.5-turbo\", \"messages\":[  {\"role\":\"user\",\"content\":\"Was ist 1+1\"} ]}"
rem {
rem   "id": "chatcmpl-8sqXLqozuqpT8fqxlikHTCvvphZTa",
rem   "object": "chat.completion",
rem   "created": 1708082355,
rem   "model": "gpt-3.5-turbo-0613",
rem   "choices": [
rem     {
rem       "index": 0,
rem       "message": {
rem         "role": "assistant",
rem         "content": "1 + 1 = 2"
rem       },
rem       "logprobs": null,
rem       "finish_reason": "stop"
rem     }
rem   ],
rem   "usage": {
rem     "prompt_tokens": 13,
rem     "completion_tokens": 7,
rem     "total_tokens": 20
rem   },
rem   "system_fingerprint": null
rem }
