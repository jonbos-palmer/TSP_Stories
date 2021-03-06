Feature: New User Signup
	
	As an employer with a staffing requirement
	I want to sign up for an account with Palmer TSP
	So that I can submit job orders directly to PG

	Scenario: User signs up
		Given I am creating a user account
		When I submit my personal information
		Then system sends a confirmation email

	Scenario: Confirming user
		Given a confirmation email
		When I click on the link
		Then my account is confirmed 

	Scenario: As an approver for an established client approves user 
		Given a new user from my company has identified me as their approver
		When I receive an approval confirmation email
		And I click on the link
		Then user is validated to submit job orders that can be worked 

	Scenario: A new user for an established client who did not identify an approver during sign up
		Given new user has identified <Division> & <Location> to submit job orders
		When <Administrator> receives setup notification
		And <Administrator> clicks on notification
		Then new user confirmation workflow triggered

		| Division 							| Location | Administrator    |
		| Marketing & Sales					| Central  | Administrator1   | 
		| Mortgage & Banking 				| Eastern  | Administrator2   | 
		| Retained Executive Search 		| Central  | Administrator3   |
		| Managed Services 					| Central  | Administrator4   |
		| Candidate Evaluation 				| Eastern  | Administrator5   |
		| Outplacement Services 			| Eastern  | Administrator6   |

	Scenario: A new user who wants to be an approver
		Given new user has identified <Division> & <Location> to submit job orders
		And user has requested approver role
		When <Administrator> receives notification
		And <Administrator> clicks on notification
		Then approver role request workflow triggered

		| Division 							| Location | Administrator    |
		| Marketing & Sales					| Central  | Administrator1   | 
		| Mortgage & Banking 				| Eastern  | Administrator2   | 
		| Retained Executive Search 		| Central  | Administrator3   |
		| Managed Services 					| Central  | Administrator4   |
		| Candidate Evaluation 				| Eastern  | Administrator5   |
		| Outplacement Services 			| Eastern  | Administrator6   |

	Scenario: A new user from a new client
		Given new user has identified <Division> & <Location> to submit job orders
		And user is not from an established client
		When <Administrator> receives notification
		And <Administrator> clicks on notification
		Then new client workflow triggered

		| Division 							| Location | Administrator    |
		| Marketing & Sales					| Central  | Administrator1   | 
		| Mortgage & Banking 				| Eastern  | Administrator2   | 
		| Retained Executive Search 		| Central  | Administrator3   |
		| Managed Services 					| Central  | Administrator4   |
		| Candidate Evaluation 				| Eastern  | Administrator5   |
		| Outplacement Services 			| Eastern  | Administrator6   |
	
	Scenario: New user confirmation workflow
		Given <Administrator> contacts client
		When client identifies approver
		And approves user
		Then user is validated to submit job orders that can be worked

		  | Administrator   |
		  | Administrator1  | 
		  | Administrator2  | 
		  | Administrator3  |

	Scenario: Approver role request workflow
		Given <Administrator> contacts client
		When client authorizes approver role
		Then user is validated to approve workable job orders

		  | Administrator   |
		  | Administrator1  | 
		  | Administrator2  | 
		  | Administrator3  |

	Scenario: New client workflow
		Given <Division> <Administrator> contacts client
		When <Administrator> sets up client profile
		And assigns <AE> for <Division> <Location>
		And system sends <Client> notification
		And <Client> approves client profile
		Then system is validated to accept workable job orders from <Client>
		And <Client> receives approval notification

		| Division 							| Location | Administrator    | AE   | Client      |
		| Marketing & Sales					| Central  | Administrator1   | AE 1 | ClientOne   |
		| Mortgage & Banking 				| Eastern  | Administrator2   | AE 2 | ClientTwo   |
		| Retained Executive Search 		| Central  | Administrator3   | AE 3 | ClientThree |
		| Managed Services 					| Central  | Administrator4   | AE 4 | ClientFour  |
		| Candidate Evaluation 				| Eastern  | Administrator5   | AE 5 | ClientOne   |
		| Outplacement Services 			| Eastern  | Administrator6   | AE 6 | ClientTwo   |
		

		


















		
		Feature: User Authentication

Background: Given the user is already registered

Scenario:

Given the user is on the sign in page

When the user inputs the correct information

Then the user should be authenticated

And the user should be presented with a success message

And the user should be redirected to the solutions page
