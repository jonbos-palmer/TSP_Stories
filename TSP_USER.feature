Feature: Dashboards

	As a user of the system
	I want to have all of the appropriate information available on a dashboard
	So I can quickly administrate 

	Scenario: User
		Given user
		When they are authenticated
		Then user is redirected to dashboard 

	Scenario: User dashboard
		Given I have an account of type <Role>
		When I authenticate
		Then my dashboard will contain <Containers>



		| Role 		| Containers 						|
		| User		| JobOrders	 						|
		| AE		| JobOrders*		 				|
		| Admin		| AdministrativeNotifications	 	|
		| Approver	| JobOrders**						|

		* - Job Orders incl Client Name
		** - Job Orders incl. those waiting approval and all others