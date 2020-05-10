Feature: API user authentication

  Background:

    * url 'https://reqres.in/api/register'

    Scenario: authentication test (if i have an API service i can show you but it does not wor right now)
      * form field client_id = 'eve.holt@reqres.in'
      * form field client_secret = 'pistol'
      * method post
      * status 400
      # it says 'bad request' why because in reality it has no autherization

      * print response

  Scenario: authentication test
    * request read('../jsonFiles/requestBody2.json')
    * method post
    * status 200
    * def tkn = response.token
    * header Autherization = 'Bearer' + tkn
    # this is how you can do autherization in your real time applications

