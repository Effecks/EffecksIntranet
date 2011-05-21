<cfcomponent extends="Controller">
  
  <!--  -->  
  <cffunction name="index">
    <cfdump var="#params#">
    <cfabort>
  </cffunction>
  
 <!--  -->
  <cffunction name="hello">
    <cfset time = Now()>
  </cffunction>
  
  <!--  -->
  <cffunction name="goodbye">
    
  </cffunction>
  
</cfcomponent>