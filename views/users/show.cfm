<h1>Showing users</h1>

<cfoutput>

					<p><span>Id</span> <br />
						#users.id#</p>
				
					<p><span>Email</span> <br />
						#users.email#</p>
				
					<p><span>Password</span> <br />
						#users.password#</p>
				
					<p><span>First_name</span> <br />
						#users.first_name#</p>
				
					<p><span>Last_name</span> <br />
						#users.last_name#</p>
				
					<p><span>Street</span> <br />
						#users.street#</p>
				
					<p><span>City</span> <br />
						#users.city#</p>
				
					<p><span>State_id</span> <br />
						#users.state_id#</p>
				
					<p><span>Zip</span> <br />
						#users.zip#</p>
				
					<p><span>Phone</span> <br />
						#users.phone#</p>
				
					<p><span>Cell</span> <br />
						#users.cell#</p>
				
					<p><span>Createdat</span> <br />
						#users.createdat#</p>
				
					<p><span>Updatedat</span> <br />
						#users.updatedat#</p>
				
					<p><span>Deletedat</span> <br />
						#users.deletedat#</p>
				

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this users", action="edit", key=users.id)#
</cfoutput>
