from openai import OpenAI
client = OpenAI()

response = client.chat.completions.create(
  model="gpt-3.5-turbo",
  messages=[
    {
      "role": "user",
      "content": "Was ist 1+1"
    }
  ],
  temperature=1,
  max_tokens=256,
  top_p=1,
  frequency_penalty=0,
  presence_penalty=0
)

print(response)
print(response.choices[0].message.content)

"""
 ChatCompletion(
   id='chatcmpl-8sqJ7SOvwnSlCYZXL36i7J4BZECrp', 
   choices=[
     Choice(
       finish_reason='stop', 
       index=0, 
       logprobs=None, 
       message=ChatCompletionMessage(
         content='1+1 ist 2.', 
         role='assistant', 
         function_call=None, 
         tool_calls=None
       )
     )
   ], 
   created=1708081473, 
   model='gpt-3.5-turbo-0613', 
   object='chat.completion', 
   system_fingerprint=None, 
   usage=CompletionUsage(
     completion_tokens=7, 
     prompt_tokens=13, 
     total_tokens=20
   )
 )
"""
