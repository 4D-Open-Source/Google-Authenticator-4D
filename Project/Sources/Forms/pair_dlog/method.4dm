
C_TEXT:C284($link)


Case of 
	: (Form event code:C388=On Load:K2:1)  //  catches all objects
		
		$link:="https://www.authenticatorapi.com/pair.aspx?AppName="+String:C10(Form:C1466.appName)+"&AppInfo="+String:C10(Form:C1466.appInfo)+"&SecretCode="+String:C10(Form:C1466.appSecret)
		
		WA OPEN URL:C1020(*;"webArea";$link)
		
		
End case 

  //UI_form_alert ($ui_msg)

