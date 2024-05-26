
    let form = document.querySelector('.auth__form');
    let username = document.getElementById('username');
    let email = document.getElementById('email');
    let password = document.getElementById('password');
    let repassword = document.getElementById('re-password');
    let inputs = form.querySelectorAll('.input');

    // Check bỏ trống
    for (let i = 0; i < inputs.length; i++) {
        inputs[i].onblur = inputs[i].oninput = function () {
            if (inputs[i].value.trim()) {
                setSuccessFor(inputs[i]);
            } else {
                setErrorFor(inputs[i], 'Trường này không được bỏ trống');
            }
        }
    }
    function setErrorFor(input, message) {
            const formControl = input.parentElement;
    const p = formControl.querySelector('p');
    p.innerText = message;
    formControl.className = 'form-control invalid';
    input.focus();
        }

    function setSuccessFor(input) {
            const formControl = input.parentElement;
    const p = formControl.querySelector('p');
    p.innerText = '';
    formControl.className = 'form-control valid';
        }



// Check trùng password 
repassword.onblur = repassword.oninput = function () {
    if (repassword.value.trim() === password.value.trim()) {
        setSuccessFor(repassword);
    } else {
        //setErrorFor(repassword, '');
        setErrorFor(repassword, 'Mật khẩu chưa trùng khớp');
    }
}


btnReg.onclick = function (e) {
    var valid = true;
    if (!(username.value.trim() || email.value.trim() || password.value.trim() || repassword.value.trim())) {
        //alert('Hãy điền đầy đủ các trường');
        let btn_error = document.getElementById('btn_error');
        btn_error.innerHTML = 'Hãy điền đầy đủ các trường';
        valid = false;
    }

    if (!username.value.trim()) {
        setErrorFor(username, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    }
    else {
        setSuccessFor(username);
    }
    if (!email.value.trim()) {
        setErrorFor(email, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    } else {
        setSuccessFor(email);
    }
    if (!password.value.trim()) {
        setErrorFor(password, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    } else {
        setSuccessFor(password);
    }
    if (!repassword.value.trim()) {
        setErrorFor(repassword, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    } else {
        setSuccessFor(repassword);
    }
    if (!valid) {
        e.preventDefault();
    }
}