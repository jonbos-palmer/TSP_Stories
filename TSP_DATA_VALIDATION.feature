Feature: Form Data Validation
	As a user of the TSP
	I want my forms to be validated
	So I can be certain that I have provided PG what they need to fill my order

	Scenario: User signup data validation
		Given I am signing up for an account
		When register for an account with <Name> <Email> <Password> <ConfirmPassword>
		Then I receive a message stating <Message> with code <StatusCode>

		| Name 			| Email 			| Password 	| ConfirmPassword	| Message 							| StatusCode	|
		| jon 			| bos.jon@gmail.com	| password	| pass				| passwords dont match				| 401			|
		| katie			| kc@gmail.com		| a			| a					| Password too short				| 401			|
		| katie			| kc@gmail.com		| nocap		| nocap				| Password does not meet guidelines	| 401			|
		| katie			| kc@gmail.com		| NoNum		| NoNum				| Password does not meet guidelines	| 401			|	
		| katie			| kc@gmail.com		| GoodPass1	| GoodPass1			| Password does not meet guidelines	| 401			|



	Scenario: User sign in data validation
		Given the user is signing in to the portal
		When the user enters <Input>
		Then I receive <Error>

		| Input 				 		| Error					|
		| [bad_user, password] 			| Invalid Credentials	|
		| [username, bad_password] 		| Invalid Credentials	|


	Scenario: User profile update validation
		Given a user is signed in to the portal with <Email> <LastName> <Phone>
		When they update their information in <EmailField> with <NewEmail>
		And they update their information in <LastNameField> with <NewLastName>
		And they update their information in <PhoneField> with <NewPhone>
		And the user saves their changes
		Then they receive <Message>
		And validation sent to server is <ServerValidated>


		|Email 		| LastName 		| Phone 		| EmailField 	| NewEmail	|LastNameField 	| NewLastName 	| PhoneField 	| NewPhone		|Message 			| ServerValidated	|
		| a@b.com	| smith			| 555-555-5555	|	?			| a@b.com	| ?				| franzoni	 	| ?				| 555-555-5555	| Updated			| True				|


