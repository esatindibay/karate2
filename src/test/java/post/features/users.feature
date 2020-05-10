Feature: sample karate test script    

Background:
  * def jsonPayLoad = read('../jsonFiles/requestBody1.json')
  * def jsonBody = read('../jsonFiles/requestBody2.json')
  * def jsonResponseBody2 = read('../jsonFiles/responseBody2.json')
 # for body you can say payload, same thing
  * url 'https://reqres.in/api'

Scenario: request post with body
  Given path 'users'
  # And request '{"name": "morpheus", "job": "leader"}'
    And request jsonPayLoad
  # you can put your body here or put a json file and call it with read in background
   #DO NOT FORGET - FOR POST REQ. YOU NEED TO HAVE A BODY. WHAT DOU YOU CREATE, THERE SHOULD BE SOMETHING.
   When method POST
   Then status 201
  * print response



Scenario: post request and verifying successful return
  Given path 'register'
  # when I add path, endpoint becomes .../api/register
  * request jsonBody
  * method post
  * status 200
  # generally we have 201 status code after post BUT in API document,for this endpoint,
  # its assigned 200 so we need to verify if its 200 or not!!
  * print response
  * match response == jsonResponseBody2



Scenario: verifying unsuccessful register message
  Given path 'register'
  * request '{"email": "sydney@fife"}'
  # here i dont create a json file and read it. just put here directly
  * method post
  * print responseStatus
  # if you want to print response:
  # print status or print statusCode or smoething else don work
  #need to use responseStatus
  #responseStatus stores status code as an integer. If, later, there is comparison like
  # st == 200 || st == 201 || st == 204  or st >= 200 && st <300 for success codes, use responseStatus
  * print response

