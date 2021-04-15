# Google Authenticator 4D
 A 4D implementation of Google Authenticator. This can be compiled into a component or simply incorporated into your v18+ code to allow you to use the [Google Authenticator](https://authenticatorapi.com/). 

## Setting up
This is called pairing and you use the `Pair` method. It is required one time but may be called more, for example if a user gets a new phone. The user simply needs to download the app to their phone, open it and click the add button. 

You passd an object to the `Pair` method containig 3 values: 
- your application name
- the user name
- a secret specific to the user. A UUID is a good candidate but any string will do. 

For example: 
```
$params:=New object
$params.appName:="MyApp Name"
$params.appInfo:="user name"
$params.appSecret:="thx1138"  //  this should be unique to each user - like their PK UUID

Pair ($params)
```
![Pair dlog](images/pair.png?raw=true "Pair Dialog")

That's it. The user is set up and there is nothing you need to store. 

## Validating
After the user enters their password call the `Validate` method. In this case you pass an object with secret for this user. The user has 4 chances to enter the correct authentication code before the method fails. 

![Validate dlog](images/validate.png?raw=true "Validate Dialog")

Example code for this:
```
If (Validate (New object("appSecret";"thx1138")))
	ALERT("User Validates!")
Else 
	ALERT("User not validated.")
End if 
```
