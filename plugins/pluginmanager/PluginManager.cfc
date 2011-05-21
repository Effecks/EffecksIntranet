<cfcomponent output="false" mixin="none" environment="design,development">
	
	<!----------------------------------------------------->
	
	<cffunction name="init">
		
		<cfset this.version = "1.0,1.0.1,1.0.2,1.0.3,1.0.4,1.0.5,1.1,1.1.1,1.1.2,1.1.3">
		<cfreturn this>
		
	</cffunction>
	
	<!----------------------------------------------------->
	
	<cffunction name="installPlugin" hint="Auto-installs a specified plugin from CFWheels.org.">
		<cfargument name="pluginId" type="string" hint="ID of plugin to install.">
		<cfargument name="pluginFilename" type="string" hint="Filename of plugin to install.">
		
		<cfset var loc = {}>
		
		<!--- Get file from website --->
		<cfhttp
			url="http://cfwheels.org/plugins/download/#arguments.pluginId#"
			result="loc.fileData"
			method="GET"
			getasbinary="yes"
		></cfhttp>
		
		<!--- Store file in /plugins directory --->
		<cffile
			action="write"
			file="#ExpandPath('plugins/')##arguments.pluginFilename#.zip"
			output="#loc.fileData.FileContent#"
			mode="777"
		>
		
		<!--- Reload application to load new plugin --->
		<cfif Len(application.wheels.reloadPassword) gt 0>
			<cfset loc.redirectLoc = "?reload=true&password=#application.wheels.reloadPassword#">
		<cfelse>
			<cfset loc.redirectLoc = "?reload=true">
		</cfif>
		<cflocation url="#loc.redirectLoc#" addToken="false">
		
	</cffunction>
	
	<!----------------------------------------------------->
	
	<cffunction name="getAvailablePlugins" returntype="array" hint="Fetches a list of plugins from the database at CFWheels.org.">
	
		<cfset var loc = {}>
		
		<!--- store all plugins in an array --->
		<cfset loc.plugins = ArrayNew(1)>
		
		<!--- Get alphabetical listing of plugins --->
		<cfhttp
			url="http://cfwheels.org/plugins/service/1.0/get"
			result="loc.file"
		></cfhttp>
		<cfset loc.content = XmlParse(loc.file.FileContent)>
		
		<!--- Return array of XML data --->
		<cfreturn loc.content.plugins.XmlChildren>
		
	</cffunction>
	
	<!----------------------------------------------------->
		
</cfcomponent>