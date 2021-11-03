// Hàm Validator
function Validator(options) {
    
    var formElement = document.querySelector(options.form);
    
    if (formElement) {
        options.rules.forEach(function (rule) {

            var inputElement = formElement.querySelector(rule.selector);
            var errorElement = inputElement.parentElement.querySelector('.error-message');
            if (inputElement) {
                inputElement.onblur = function () {
                    
                    var errorMessage = rule.test(inputElement.value);
                    
                    if (errorMessage) {
                        errorElement.innerText = errorMessage;
                        inputElement.parentElement.classList.add('invalid');
                    } else {
                        errorElement.innerText = '';
                        inputElement.parentElement.classList.remove('invalid');
                    }

                }
            }
        })
    }
    
}

// Định nghĩa các Rules
// Nguyên tắc của các Rules:
// 1. Khi có lỗi => trả message lỗi
// 2. Khi hợp lệ => không trả lại gì
Validator.isRequired = function (selector) {
    return {
        selector: selector,
        test: function (value) {
            return value.trim() ? undefined : 'Vui lòng nhập trường này!'
        },
    }
}

Validator.isEmail = function (selector) {
    return {
        selector: selector,
        test: function () {

        },
    };
};