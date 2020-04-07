Feature: user Details

	
	Background:
	* def expectedOutput = read('../data/result.json')
	* def partialexpectedOutput = read('../data/partial_result.json')
		
	Scenario: get user 2 details
	Given url 'https://reqres.in/api/users/2'
	When method GET
	Then status 200
	Then print response

	And match response.data.id == 2
	
	And match response == expectedOutput[0]
	Then print partialexpectedOutput
	And match response == partialexpectedOutput
	
	And match response.data.last_name != null
	
	* def job_code = response.data.job_code
	And match job_code == null
	
	
	Scenario: get user 3 details
	Given url 'https://reqres.in/api/users/3'
	When method GET
	Then status 200
	Then print 'response-3----------->',response
	And match response == expectedOutput[1]
	
	* def first_name_val = response.data.first_name
	Then print 'first_name_val-----------',first_name_val
	
	