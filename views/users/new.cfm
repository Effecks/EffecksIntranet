<h1>Create new users</h1>

<cfoutput>

			#errorMessagesFor("users")#
	
			#startFormTag(action="create")#
		
				
						#textField(objectName='users', property='email', label='Email')#
					
						#textField(objectName='users', property='password', label='Password')#
					
						#textField(objectName='users', property='first_name', label='First_name')#
					
						#textField(objectName='users', property='last_name', label='Last_name')#
					
						#textField(objectName='users', property='street', label='Street')#
					
						#textField(objectName='users', property='city', label='City')#
					
						#textField(objectName='users', property='state_id', label='State_id')#
					
						#textField(objectName='users', property='zip', label='Zip')#
					
						#textField(objectName='users', property='phone', label='Phone')#
					
						#textField(objectName='users', property='cell', label='Cell')#
					

				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
