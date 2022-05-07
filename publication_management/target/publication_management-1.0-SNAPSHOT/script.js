$("document").ready(function(){
console.clear();
const loginBtn = document.getElementById('login');
const signupBtn = document.getElementById('signup');

loginBtn.addEventListener('click', (e) => {
	let parent = e.target.parentNode.parentNode;
	Array.from(e.target.parentNode.parentNode.classList).find((element) => {
		if(element !== "slide-up") {
			parent.classList.add('slide-up')
		}else{
			signupBtn.parentNode.classList.add('slide-up')
			parent.classList.remove('slide-up')
		}
	});
});

signupBtn.addEventListener('click', (e) => {
	let parent = e.target.parentNode;
	Array.from(e.target.parentNode.classList).find((element) => {
		if(element !== "slide-up") {
			parent.classList.add('slide-up')
		}else{
			loginBtn.parentNode.parentNode.classList.add('slide-up')
			parent.classList.remove('slide-up')
		}
	});
});

$("#sp").on("submit",function(event){
    
    event.preventDefault();
    console.log($(this).serialize())
    var post_data = $(this).serialize();
    var name = $(this).serializeArray()[0]["value"]; //get user_name
    console.log(name);
    $.ajax({
        
        url : "SignUp",
        data : post_data,
        type : 'POST',
        success : function(data , textStatus , jqXhr) {
//            console.log(data)
        console.log(data)
        if(data.trim() === "1")
        {
            $("#msg").text("Registered Sucessfully!!!").css({"color":"greenyellow"});
            $(".form-structor").css({"background-color":'#9bff00'});
             setTimeout(window.location.replace('http://localhost:8080/publication_management/user_index.jsp?name='+name), 3000);
        }
        else if(data.trim() === "0")
        {
            $("#msg").html("*Username exists").css({"color":"red"});
            $(".form-structor").css({"background-color":'#f00'});
        }
            
        },
        error : function(jqXHR,textStatus,errorThrown) {
            
        }
    });
});

$("#lg").on("submit",function(event){
    
    event.preventDefault();
    var post_data = $(this).serialize();
    var name = $(this).serializeArray()[0]["value"]
    $.ajax({
        
        url : "Login",
        data : post_data,
        type : 'POST',
        success : function(data , textStatus , jqXHR) {
        if(data.trim() === "1")
        {
            $("#msg1").text("Login Sucessfull!!!").css({"color":"greenyellow"});
            $(".form-structor").css({"background-color":'#9bff00'});
            setTimeout(window.location.replace('http://localhost:8080/publication_management/user_index.jsp?name='+name), 3000)
            
        }
        else if(data.trim() === "0")
        {
            $("#msg1").html("*Account doesn't exist").css({"color":"red"});
            $(".form-structor").css({"background-color":'#f00'});
        }
        else if(data.trim() === "-1")
        {
            $("#msg1").html("*Password Incorrect").css({"color":"red"});
            $(".form-structor").css({"background-color":'#f00'});
        }
        },
        error : function(jqXHR,textStatus,errorThrown) {
            
        }
    });
});    
    
})