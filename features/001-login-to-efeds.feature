Feature:
	Login to CAS then navigate to the efeds home page
	
	Scenario: Successful login
	
		After authentication, the user should be able to get to the eFeds home page
		
		Given I have logged in
		When I go to the efeds Home page
		Then I should see "MY CURRENT REPORTS" text		
		