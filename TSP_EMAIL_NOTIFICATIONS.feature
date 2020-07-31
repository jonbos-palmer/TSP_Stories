Feature: Email Notifications
	As a user
	I want to receive email notifications from the application
	So that I can [have a record/be notified]


	Scenario: User receives job order submission email
		Given I am a user with a verified account
		And I have submitted a job order
		When my job order is successfully processed
		Then I receive an email notification
		And the email contains the details of my job order

	Scenario: Approver receives job order approval email
		Given I am approver at for <Division> at <Client>
		When a user at <Client> submits a job order for <Division>
		Then I receive an email with the job order details
		And the email contains a link to approve the job order


	Scenario: User receives job order approval email
		Given I am a verified user
		And I have submitted a job order
		And the approver for my division has received an email with an approval link
		When the approver clicks the approval link
		Then I receive an email notifying me the job has been approved
		But if the approver denies the request
		Then I receive an email notifying me that the job has been DENIED


	Scenario:  AE receives job order email
		Given I am an AE in <Division> at <Location>
		And a user has submitted a job order to <Division> at <Location>
		When the request is approved
		Then I receive an email notification
		And the email contains the details of the job order
		