<cfcomponent extends="plugins.dbmigrate.Migration" hint="create user table">
  <cffunction name="up">
    <cfscript>
      t = createTable('users');
	  t.column(table='users', columnType='string', columnName='email', limit=50);
	  t.column(table='users', columnType='string', columnName='password', limit=50);
	  t.column(table='users', columnType='string', columnName='first_name', limit=50);
	  t.column(table='users', columnType='string', columnName='last_name', limit=50);
	  t.column(table='users', columnType='string', columnName='street', limit=50);
	  t.column(table='users', columnType='string', columnName='city', limit=50);
	  t.references(referenceNames='state',foreignKey=true);
	  t.column(table='users', columnType='integer', columnName='zip', limit=5);
	  t.column(table='users', columnType='integer', columnName='phone', limit=10);
	  t.column(table='users', columnType='integer', columnName='cell', limit=10);
      t.timestamps();
	  
      t.create();
	  
	  t = createTable('user_levels');
	  t.column(table='user_levels', columnType='integer', columnName='user_id', limit=11);
	  t.column(table='user_levels', columnType='integer', columnName='level_id', limit=11);
	  t.references(referenceNames='user',foreignKey=true);
	  t.references(referenceNames='level',foreignKey=true);
      t.timestamps();
      t.create();
	  
	  t = createTable('levels');
	  t.column(table='levels', columnType='string', columnName='level', limit=50);
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
