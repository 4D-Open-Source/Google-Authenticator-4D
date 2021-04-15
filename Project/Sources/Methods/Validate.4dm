//%attributes = {"shared":true}
/*  Validate (object) -> boolean
$1: { appSecret: "" }
$0: true if validated
 Created by: Kirk as Designer, Created: 04/14/21, 20:40:09
 ------------------
 Purpose: 

*/

C_OBJECT:C1216($1;$form_data)
C_BOOLEAN:C305($0)
C_LONGINT:C283($window)

ASSERT:C1129(Count parameters:C259=1)
ASSERT:C1129($1#Null:C1517)

$form_data:=$1

$window:=Open form window:C675("validate_dlog";Plain form window:K39:10;Horizontally centered:K39:1;At the top:K39:5)
DIALOG:C40("validate_dlog";$form_data)

CLOSE WINDOW:C154($window)

$0:=$form_data.success
