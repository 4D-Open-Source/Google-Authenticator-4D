//%attributes = {"shared":true}
/*  __readMe ()
 Created by: Kirk as Designer, Created: 04/14/21, 20:23:04
 ------------------
 Purpose: 

*/

C_OBJECT:C1216($params)

$params:=New object:C1471
$params.appName:="MyApp Name"
$params.appInfo:="user name"
$params.appSecret:="thx1138"  //  this should be unique to each user - like their PK UUID

  //  this is called to setup the user
Pair ($params)

  // --------------------------------------------------------

  //  this is called after they enter their password
If (Validate ($params))
	ALERT:C41("User Validates!")
Else 
	ALERT:C41("User not validated.")
End if 



