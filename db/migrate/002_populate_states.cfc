<cfcomponent extends="plugins.dbmigrate.Migration" hint="create user table">
  <cffunction name="up">
   	 <cfset model("state").create(state="Alabama")>
   	 <cfset model("state").create(state="Alaska")>
   	 <cfset model("state").create(state="Arizona")>
   	 <cfset model("state").create(state="Arkansas")>
   	 <cfset model("state").create(state="California")>
   	 <cfset model("state").create(state="Colorado")>
   	 <cfset model("state").create(state="Connecticut")>
   	 <cfset model("state").create(state="Delaware")>
   	 <cfset model("state").create(state="Florida")>
   	 <cfset model("state").create(state="Georgia")>
   	 <cfset model("state").create(state="Hawaii")>
   	 <cfset model("state").create(state="Idaho")>
   	 <cfset model("state").create(state="Illinois")>
   	 <cfset model("state").create(state="Indiana")>
   	 <cfset model("state").create(state="Iowa")>
   	 <cfset model("state").create(state="Kansas")>
   	 <cfset model("state").create(state="Kentucky")>
   	 <cfset model("state").create(state="Lousiana")>
   	 <cfset model("state").create(state="Maine")>
   	 <cfset model("state").create(state="Maryland")>
   	 <cfset model("state").create(state="Massachusetts")>
   	 <cfset model("state").create(state="Michigan")>
   	 <cfset model("state").create(state="Minnesota")>
   	 <cfset model("state").create(state="Mississippi")>
   	 <cfset model("state").create(state="Missouri")>
   	 <cfset model("state").create(state="Montana")>
   	 <cfset model("state").create(state="Nebraska")>
   	 <cfset model("state").create(state="Nevada")>
   	 <cfset model("state").create(state="New Hampshire")>
   	 <cfset model("state").create(state="New Jersey")>
   	 <cfset model("state").create(state="New Mexico")>
   	 <cfset model("state").create(state="New York")>
     <cfset model("state").create(state="North Carolina")>
   	 <cfset model("state").create(state="North Dakota")>
   	 <cfset model("state").create(state="Ohio")>
     <cfset model("state").create(state="Oklahoma")>
     <cfset model("state").create(state="Oregon")>
   	 <cfset model("state").create(state="Pensylvania")>
   	 <cfset model("state").create(state="Rhode Island")>
   	 <cfset model("state").create(state="South Carolina")>
   	 <cfset model("state").create(state="South Dakota")>
   	 <cfset model("state").create(state="Tennessee")>
   	 <cfset model("state").create(state="Texas")>
   	 <cfset model("state").create(state="Utah")>
   	 <cfset model("state").create(state="Vermont")>
   	 <cfset model("state").create(state="Virginia")>
   	 <cfset model("state").create(state="Washington")>
   	 <cfset model("state").create(state="West Virginia")>
   	 <cfset model("state").create(state="Wisconsion")>
   	 <cfset model("state").create(state="Wyoming")>
  </cffunction>
  <cffunction name="down">
     <cfset model("state").deleteAll()>
  </cffunction>
</cfcomponent>
