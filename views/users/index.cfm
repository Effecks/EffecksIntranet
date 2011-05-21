<h1>Listing users</h1>

<cftable query="users" colHeaders="true" HTMLTable="true">
	
					<cfcol header="Id" text="#id#" />
				
					<cfcol header="Email" text="#email#" />
				
					<cfcol header="Password" text="#password#" />
				
					<cfcol header="First_name" text="#first_name#" />
				
					<cfcol header="Last_name" text="#last_name#" />
				
					<cfcol header="Street" text="#street#" />
				
					<cfcol header="City" text="#city#" />
				
					<cfcol header="State_id" text="#state_id#" />
				
					<cfcol header="Zip" text="#zip#" />
				
					<cfcol header="Phone" text="#phone#" />
				
					<cfcol header="Cell" text="#cell#" />
				
					<cfcol header="Createdat" text="#createdat#" />
				
					<cfcol header="Updatedat" text="#updatedat#" />
				
					<cfcol header="Deletedat" text="#deletedat#" />
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

<cfoutput>
	<p>#linkTo(text="New users", action="new")#</p>
</cfoutput>
