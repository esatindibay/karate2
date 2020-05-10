Feature: sample karate test script

  Scenario: verifying unsuccessful register message
    * url 'https://reqres.in/api/users'
    * param delay = 3
    # in postman you can add parameters or endpoint already has parameters
    # also there is one more way to apply parameter, in karate by using 'param' keyword
    # when i put param delay = 3 ---> imagine that endpoint becomes ..../api/users?delay=3
    * method get
    * print responseStatus
    * print response
    * print responseTime
