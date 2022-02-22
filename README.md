# IEEE-task
A blockchain based web application which conducts lottery.

The task given to me was to create a simple web app which is integrated with metamask wallet.
Hence I created a web application which conducted lottery. The mechanism is simple, the contracts accepts ether from various players(minimum 0.01 eth) and at last the one who controls the contract randomly picks a winner. The winner is awarded all the ethers that were put in the lottery.

 About the Contract 
 
 So the contract contains a manager who creates the contract and picks winner.
 There will be an enter function which accepts the ether given by players and subsequently adds them into the list of players.
 There will be a function that would help us in choosing the players honestly and randomly.
 
 About deployment 
 
 Deployment will be done using Infura node and the transaction for deployment will be done using my metamask account.
 
 
Frontend 

The frontend will look like this :
![Lottery](https://user-images.githubusercontent.com/90636611/155225920-695f85f1-6131-4b85-8192-189622ed339b.jpg)

The managers address will be mentioned. Also the number of players and total amount of ether will be shown.
I integrated this web app using web3 provider of web3.js module.

![image](https://user-images.githubusercontent.com/90636611/155227518-255c6c07-a778-425d-8582-bf5da83e887d.png)




