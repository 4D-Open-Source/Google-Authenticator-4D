/*  validate ()
 Created by: Kirk as Designer, Created: 04/14/21, 20:31:15
 ------------------
 Purpose: 

*/

C_TEXT:C284($text;$objectName_t;$link)
C_BLOB:C604($obj)
C_LONGINT:C283($response)
ARRAY TEXT:C222($aHeaders;0)
ARRAY TEXT:C222($aValues;0)

$objectName_t:=String:C10(FORM Event:C1606.objectName)

Case of 
	: (Form event code:C388=On Load:K2:1)  //  catches all objects
		Form:C1466.input:=""
		Form:C1466.n_attempts:=0
		
	: ($objectName_t="btn_validate")  //  only runs on clicked
		
		Form:C1466.n_attempts:=Form:C1466.n_attempts+1
		
		If (Form:C1466.n_attempts<5)
			$link:="https://www.authenticatorApi.com/Validate.aspx?Pin="+Form:C1466.input+"&SecretCode="+Form:C1466.appSecret
			
			$response:=HTTP Get:C1157($link;$obj;$aHeaders;$aValues)
			
			$text:=BLOB to text:C555($obj;UTF8 text without length:K22:17)
			SET BLOB SIZE:C606($obj;0)
			
			Form:C1466.success:=$text="true"
			
			If (Form:C1466.success)
				ACCEPT:C269
			Else 
				Form:C1466.input:=""
			End if 
			
		Else 
			Form:C1466.success:=False:C215
			CANCEL:C270
		End if 
		
End case 

  // UI_form_alert ($ui_msg)

