# OpenAI

* openaikey.cmd   API key for Microsoft Windows
* demo-001-commandline.txt   CURL command (static api key) hello world
* demo-001-curl.cmd   CURL command (dynamic api key) hello world
* demo-001-python.py   Python hello world

# Troubleshooting

## Error: We could not parse the JSON body of your request. 

```
{
  “error”: {
  “message”: “We could not parse the JSON body of your request. 
    (HINT: This likely means you aren’t using your HTTP library correctly. 
     The OpenAI API expects a JSON payload, but what was sent was not valid JSON. 
     If you have trouble figuring out how to fix this, please send an email 
     to support@openai.com and include any relevant code you’d like help with.)”,
  “type”: “invalid_request_error”,
  “param”: null,
  “code”: null
  }
}
```

Issue: Windows CURL parameter dont like single quote ' and inside double quotes needs masking
```
curl --data '{"model":"gpt-3.5-turbo","messages":[{"role":"user","content":"Was ist 1+1"}]}'
```

Solution: double quotes " and masking \\"
```
curl --data "{\"model\":\"gpt-3.5-turbo\",\"messages\":[{\"role\":\"user\",\"content\":\"Was ist 1+1\"}]}"
```

## Error: You exceeded your current quota, please check your plan and billing details.

Issue: free test phase exires ...
https://platform.openai.com/usage

Solution: other account with free test plane or billing
