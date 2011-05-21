<cfcomponent extends="plugins.dbmigrate.Migration" hint="create user table">
  <cffunction name="up">
    <cfscript>
      t = createTable('states');
	  t.column(table='states', columnType='string', columnName='state', limit=50);
      t.timestamps();
      t.create();
	  
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
      dropTable('users');
    </cfscript>
  </cffunction>
</cfcomponent>
