<cfoutput>
<h1 style="color:##099">Hello World!</h1>
<p>Current time: #time#</p>
<p>Time to say #linkTo(text="goodbye", action="goodbye")#?</p>
</cfoutput>

<cfloop from = "0" to = "10" index = i>
<cfoutput>#i#</cfoutput>
</cfloop>
