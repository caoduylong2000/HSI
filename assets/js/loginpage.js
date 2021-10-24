const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

const otpButton = document.getElementById('otp');
const modalContainer = document.getElementById('modal__container');
const input = document.getElementsByTagName('input');
const btn = document.getElementsByTagName('button');

var modal = document.getElementById("modal");
var open = document.getElementById("openModal");
var send = document.getElementById("btn-send");
var otp = document.getElementById("code");


open.onclick = function() {
	modal.style.display = "flex";
}

send.onclick = function() {
	otp.style.display = "block";
}

window.onclick = function(event) {
	if (event.target == modal) {
		modal.style.display = "none";
		modalContainer.classList.remove("panel-active");
	}
}

otpButton.addEventListener('click', () => {
	modalContainer.classList.add("panel-active");
});



// function check() {
// 	var data = new Array();
// 		data[0] = document.getElementById('otp-code').value;
// 		data[1] = document.getElementById('email').value;
// 		data[2] = document.getElementById('password').value;	
// 		data[3] = document.getElementById('repassword').value;	
	
// 	var myerror = new Array();
// 		myerror[0] = "<span style=’color:red,font-weight:bold’>Bạn chưa nhập tên</span>";
// 		myerror[1] = "<span style=’color:red,font-weight:bold’>Bạn chưa nhập email</span>";
// 		myerror[2] = "<span style=’color:red,font-weight:bold’>Bạn chưa nhập mật khẩu</span>";
// 		myerror[3] = "<span style=’color:red,font-weight:bold’>Mật khẩu chưa khớp</span>";

// 	var nearby = new Array("z-name", "z-email", "z-password", "z-cpassword");

// 	for (i in data) {
//         var error = myerror[i];
//         var div = nearby[i];
//         if (data[i]=="") {
//             document.getElementById(div).innerHTML = error;
//         } else {
//             document.getElementById(div).innerHTML = "OK!";
//         }
//     }

// 	function password() {
// 		var fpw = document.getElementById("password").value;
// 		var spw = document.getElementById("repassword").value;
// 		if (fpw==spw) {
// 			document.getElementById('z-cpassword').innerHTML = "Mật khẩu đã khớp";
// 		} else {
// 			document.getElementById('z-cpassword').innerHTML = "<span color=’red’>Mật khẩu chưa khớp</span>";
//     }
// }
// }