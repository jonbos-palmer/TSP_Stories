Feature: Job Order

	As an employer with a staffing requirement
	I want to send a job order to Palmer Group
	So that I can quickly fill my open position

	Scenario: Submitting a staffing order when no AE is assigned
		Given I have a general staffing requirement
		And I have not worked with PG before [the AE I worked with previously is no longer in their position?]
		When I submit the order details to the portal
		Then *an AE* [from the proper PG location] reaches out to me [within ___?]

	Scenario: Submitting a Staffing Job Order When AE is assigned
		Given I have a general staffing requirement
		When I submit the order details to the portal
		Then *my AE* [from the proper PG location] reaches out to me [within ___?]

Feature: Job Approval
	
	As an employer using the PG TSP
	I want to designate approver contact information
	So that there is accountability in the job ordering process

	Scenario: Submitting a job order when client has approver
		Given I am an approver for a client
		When a user from my company submits an order for a job to the TSP 
		Then I receive an email with order details and a link to approve the job order