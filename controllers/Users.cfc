<cfcomponent extends="Controller" output="false"><cfscript>
  
  function init(){
  }
  
  // users/index
  function index(){
    users = model("Users").findAll();
  }
  
  // users/show/key
  function show(){
    users = model("Users").findByKey(params.key);
    	
    if (!IsObject(users)){
      flashInsert(error="Users #params.key# was not found");
      redirectTo(action="index");
    }
  }
  
  // users/new
  function new(){
    users = model("Users").new();
  }
  
  //users/edit/key
  function edit(){
    users = model("Users").findByKey(params.key);
    	
    if (!IsObject(users)){
	    flashInsert(error="Users #params.key# was not found");
			redirectTo(action="index");
	  }
  }
  
  // users/create
  function create(){
    users = model("Users").new(params.users);
		
		if (users.save()){
			flashInsert(success="The users was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error creating the users.");
		  renderPage(action="new");
		}
  }
  
  // users/update
  function update(){
    users = model("Users").findByKey(params.key);
		
		if (users.update(params.users)){
		  flashInsert(success="The users was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(error="There was an error updating the users.");
			renderPage(action="edit");
		}
  }
  
  // users/delete/key
  function delete(){
    users = model("Users").findByKey(params.key);

		if (users.delete()){
			flashInsert(success="The users was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(error="There was an error deleting the users.");
			redirectTo(action="index");
    }
  }
  
</cfscript></cfcomponent>
