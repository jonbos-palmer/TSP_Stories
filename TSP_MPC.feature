Feature: Sending MPC
	As an *AE/Recruiter/Division Coordinator/Director*
	I want to send my MPC directly to client
	So that I can place highly qualified candidates quickly


	Scenario:
		Given I am an employee with authority to submit MPCs
		When I submit an MPC form to <Recipient>
		Then <Person(s)> should receive an MPC notification 

		| Recipient 		| Person(s) 		|
		| Individual		| One Person		|
		| Multiple Emails	| [multiple emails]	|
		| Department		| [dept emails]		|
		| Company			| [company emails]	|