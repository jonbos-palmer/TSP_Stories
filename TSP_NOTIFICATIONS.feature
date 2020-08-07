Feature: Email Notifications
	As a user
	I want to receive email notifications from the application
	So that I can [have a record/be notified]

	Scenario: User receives job order submission notification
		Given I am a user with a verified account
		And I have submitted a job order
		When my job order is successfully processed
		Then I receive a <Type> notification
		And the <Type> notification contains the details of my job order

		| Type 	 |
		| Email  |
		| Text   |
		| System |

	Scenario: Approver receives job order approval notification
		Given I am approver for <Division> at <Client>
		When a user at <Client> submits a job order for <Division>
		Then I receive a <Type> notification with the job order details
		And the notification contains a link to approve the job order

		| Type      | Division | Client    |
		| Email		| IT 	   | ClientOne | 
		| Text  	| IT 	   | ClientOne | 
		| System	| IT 	   | ClientOne | 
		| Email		| Marketing| ClientOne | 
		| Text  	| Marketing| ClientOne | 
		| System	| Marketing| ClientOne | 
		| Email		| IT 	   | ClientTwo | 
		| Text  	| IT 	   | ClientTwo | 
		| System	| IT 	   | ClientTwo | 


	Scenario: User receives job order approval notification
		Given I am a verified user
		And I have submitted a job order
		And the approver for my division has received a <Type> notification with an approval link
		When the approver clicks the approval link
		Then I receive a notification notifying me the job has been approved
		But if the approver denies the request
		Then I receive a notification notifying me that the job has been denied

		| Type 	 	|
		| Email  	|
		| Text   	|
		| System 	|
		| Exception |

	Scenario:  AE receives job order notification
		Given I am an AE assigned to <Client> in <Division> at <Location>
		And a user has submitted a job order to Division at Location
		When the request is approved
		Then I receive a <Type> notification
		And the notification contains the details of the job order
		

		| Client 	| Division 				    | Location  | Type 			| 
		| ClientOne | Accounting & Finance  	| Central   | System		|
		| ClientOne | Marketing & Sales  		| Eastern   | Email		 	|
		| ClientTwo | Marketing & Sales  		| Eastern   | Text	 		|
		| ClientTwo | Marketing & Sales  		| Central   | Exception 	|
