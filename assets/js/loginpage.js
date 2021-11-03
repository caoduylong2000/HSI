document.addEventListener("DOMContentLoaded", function(){
	const signInButton = document.getElementById('signIn');
	const container = document.getElementById('container');

	signInButton.addEventListener('click', () => {
		container.classList.add("right-panel-active");
	});

	const modalContainer = document.getElementById('modal__container');
	const inputText = document.getElementsByTagName('input[type="text"]').value;
	const inputEmail = document.getElementsByTagName('input[type="Email"]').value;
	const inputPassword = document.getElementsByTagName('input[type="password"]').value;
	const btn = document.getElementsByTagName('button');
	
	const modalForm = document.getElementById("modal");
	const openModal = document.getElementById("openModal");
	const email = document.getElementById("modal__email");
	const sendEmail = document.getElementById("modal__send-email");
	const inputOtp = document.getElementById("modal__otp");
	const changePass = document.getElementById("check-otp");


	openModal.onclick = function() {
		modalForm.style.display = "flex";
	}

	window.onclick = function(event) {
		if (event.target == modal) {
			modalForm.style.display = "none";
			modalContainer.classList.remove("panel-active");
			email.value = "";
			inputOtp.value = "";
			inputOtp.style.display = "none";
			sendEmail.classList.remove('disabled');
			
		}
	}

	sendEmail.onclick = function() {
		inputOtp.style.display = "block";
		this.classList.add('disabled');
	}

	changePass.addEventListener('click', () => {
		modalContainer.classList.add("panel-active");
	});

}, false);