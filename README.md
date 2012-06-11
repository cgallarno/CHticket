CHticket
========

A ticket system made with the Bukkit plugin Command Helper.
----------------

Note: This is currently not useable but can be used as a reference.  
Note: This README is set up for the planned versions of CHticket some of theese features are different or dont exsist right now.

###Commands: 
key:   
'< >' Denotes a required argument.  
'[ ]' Denotes an optional argument.

	- /ticket write <title> <Description> - Writes a ticket with the specified title & description. - Permission: CHticket.write
	- /ticket read <id> - Views a ticket submitted with the specified id. - Permission: CHticket.read
	- /ticket list - Lists all tickets id's and title's. (these are color coded view color code section for what they mean) - Permission: CHticket.list
	- /ticket delete <id> - Delete's a ticket with the specified id. (Does not confirm.) - Permission: CHticket.delete
	- /ticket tp <id> - Teleport's to a ticket with the specified id. Permission: CHticket.teleport
	- /ticket mark <id> <status> - Marks a Ticket's status. status can be open, closed, read, or important.
	- /ticket note <id> <note> - Add's note's to a ticket with the specified id. (notes cannot be deleted. (by command)) - permission CHticket.note.add

####Ticket Storage Tree:
	- ACzChef.CHticket.tickets <Array of tickets(by id)>
		- 0 <array of data per ticket>
			- Player: <Player that wrote the ticket>
			- Title: <Title that the player wrote>
			- Description: <Description that the player wrote>
			- Location: <Location of the player at ticket write time> (Rounded)
			- Priority: <Priority of the ticket> (Priority has 2 values High, Normal)
			- Color: <Color of the ticket when called by /ticket list>
			- Notes: <An array of notes on the ticket>
				- <Note added by /ticket note> (stored as string)			-
		- 1 <array of data per ticket>
			- Player: <Player that wrote the ticket>
			- Title: <Title that the player wrote>
			- Description: <Description that the player wrote>
			- Location: <Location of the player at ticket write time> (Rounded)
			- Priority: <Priority of the ticket> (Priority has 2 values High, Normal)
			- Color: <Color of the ticket when called by /ticket list>
			- Notes: <An array of notes on the ticket>
				- <Note added by /ticket note> (stored as string)

Ticket Color Codes:  

- Red: high Priority And Open  
- Gray: Normal Priority And  Open  
- Blue: Marked Read  
- Dark Gray: Closed

Extra Info:

- Important tickets have a ! next to the title
- Tickets have high priotiy when writen by someone with the permission CHticket.write.vip
- /Ticket list is paged 5 tickets a page

ToDo:

- Add ability to delete nots off of a ticket.
- Re-write code.

Planned Features:

- More priority levels
- ability to keep notes on a player
- Time stamps
- Add config options

Bugs: (Cant really write this part yet)