//%attributes = {"shared":true}
/*  Pair (object)
$1: { appName: "",
      appInfo: "",
      appSecret: "" }
 Created by: Kirk as Designer, Created: 04/14/21, 20:17:00
 ------------------
 Purpose: 

*/

C_OBJECT:C1216($1;$form_data)
C_LONGINT:C283($window)

ASSERT:C1129(Count parameters:C259=1)
ASSERT:C1129($1#Null:C1517)

$form_data:=$1

$window:=Open form window:C675("pair_dlog";Modal form dialog box:K39:7;Horizontally centered:K39:1;At the top:K39:5)
DIALOG:C40("pair_dlog";$form_data)

CLOSE WINDOW:C154($window)