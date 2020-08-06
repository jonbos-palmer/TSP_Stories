Feature: Job Order

	As an employer with a staffing requirement
	I want to send a job order to Palmer Group
	So that I can quickly fill my open position

	Scenario: Valid user from established client submits job
		Given I am an valid user from an established client
		And my client profile specifies an approver
		When I submit a job order
		Then an approver gets a notification of my job order

	Scenario: Valid user from established client with no approver sends job
		Given I am a valid user from an established client
		And my client profile does not specify an approver
		When I submit a job order for <JobDivision> at <JobLocation>
		Then ???

		*** if client does not require approver, should every user on that account be set as approver? ***

	Scenario: New user from new client sends job order
		Given I am a user [?from a new client?]
		And my account is not verified
		When I submit a job order to the portal
		Then no notification will be sent
		And I should see a message indicating my order will be sent as soon as my account is verified

	Scenario: Approver receives approval request
		Given I am an approver
		And an employee from my company has submitted a job order
		When I receive the approval request
		And I click approve
		Then will get a notification about my job order

	Scenario: Submitting a staffing order
		Given I have a general staffing requirement
		But I am not an approver
		When I submit the order details to the portal
		Then an approver from my company will be notified of my staffing order

	Scenario: Submitting a Staffing Job Order
		Given I have a general staffing requirement
		And I am an approver
		When I submit the form for <JobDivision> and <JobLocation>
		Then order is submitted to <PG Division> and <Region> specified in <Form>

			| JobDivision 				| JobLocation 		| PG Division 				| Region  | 
			| Accounting & Finance  	| Des Moines, IA	| Accounting & Finance  	| Central |
			| Marketing & Sales  		| Davenport, IA 	| Marketing & Sales  		| Eastern |

	Scenario: Notification of submitted job order
		Given the job order is approved
		When the order is submitted to <PG Division> and <Location>
		Then the <PG Division> and <Location> will be notified

			| PG Division 				| Region  |
			| Accounting & Finance  		| Central |
			| Marketing & Sales  			| Eastern |

	Scenario: Approving a job order
		Given I am an approver for a company
		When I am notified of a job order requiring approval
		And I approve the job order
		Then <PG Division> and <Location> will be notified of my staffing order
		But if I deny the job order
		Then *requesting user gets a notice of denial and job order is marked denied*

			| PG Division 			| Location	|
			| Accounting & Finance   	| Central  	|
			| Marketing & Sales  		| Eastern  	|

	Scenario: Routing a job order
		Given an approved job order is submitted to a <PG Division> and <Location>
		When the client has an assigned AE for the <PG Division> and <Location>
		Then the job order is routed to <User>
		But if the client does not have an assigned AE for the <PG Division> and <Location>
		Then the job order is routed to <PG Division> and <Location> <Leader>

			
		| PG Division 		      	| Location	|  User 	| Leader 	|
		| Accounting & Finance 		| Central  	| user1 	| ------- 	|
		| Marketing & Sales       	| Eastern  	| user  	| Leader 	|

		

