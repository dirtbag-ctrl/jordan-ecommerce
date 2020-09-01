var signIn = document.getElementById("login");//get login button
var signUp = document.getElementById("register");//get register button
var button = document.getElementById("btn");//target overlay styles for button

/* Shows Register Content */
function register(){
  signIn.style.left = "-400px";
  signUp.style.left = "50px";
  button.style.left = "110px";

}
/* Shows login Content */
function login() {
 signIn.style.left = "50px";
 signUp.style.left = "450px";
 button.style.left = " 0px";
}