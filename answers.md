1.) What concerns do you have a from a testing perspective? 
My main concerns would be: 
- the main HTTP method functionalities would be working as expected (GET/PUT/POST/DELETE/etc)
- proper status codes are outputted depending on method used/parameters used (with or without authentication)

How would you go about tackling the QA for this work?
- I would approach developers on what functionality would best be automated for their purposes, then approach the business analysts (or whoever is most aware of the end goals of the project) and conclude how much time can be allotted doing QA for this task, and then come up with my own test cases and talk with other developers to see if which of my cases would bring value. Then, I would use curl to manually test the functionality of the API, documenting the functionality that does not have to be automated, and, finally, using whatever language is most appropriate, automate the components that should be automated.

What sort of tests would be worth describing or worth automating?
- What would be worth automating, partially described above, would be that we are given proper HTTP codes depending on the method and parameters we use, so that if there is any updates to the API we know that if these cases ran successfully, then we don't have to worry about any of the status codes.

What tools would you use?
- Personally, I would use Ruby as the language since that's what I've been using currently for my work, but that is flexible. And since I'm using Ruby, I'll use the associated Ruby libraries to test REST functionality (RestClient) and rspec for unit testing.

2.) Loyalty app for a large retailer

What are your areas of concern? 

My areas of concern would be:
- How the customers that are in the loyalty program and those that are not are differentiated in the database (which probably would be a flag).
- Everyone in the loyalty program has the added benefits of being the program and those not in the loyalty program do not.
- If a customer switches over from not being in the loyalty program to being in it, or vice versa, that the switch happens appropriately and the added or removed benefits also happen appropriately.
- For loyalty program participants, I would be concerned that the reward points are visible and correct when the participants choose to view it on all devices (mobile and/or web app). 
- The reward points should be appropriately handled when at or below zero. I would make sure with business analysts that if reward points cannot be below zero that this should never happen (maybe it can happen with reward credits, I'm not sure). 
- When the loyalty program participant redeems points for a reward, the points are properly deducted and the reward properly distributed.
	- if the reward should dip below zero, then, depending on what the business analysts say above, the appropriate actions are taken i.e. if we do not allow the rewards points below zero then the customer cannot have that specific reward that would that.

