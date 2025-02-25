document.getElementById('registrationForm').addEventListener('submit', function (event) {
    event.preventDefault();

    // Reset custom validity
    document.getElementById('repeatPassword').setCustomValidity('');

    // Check if passwords match
    const password = document.getElementById('password').value;
    const repeatPassword = document.getElementById('repeatPassword').value;

    if (password !== repeatPassword) {
        document.getElementById('repeatPassword').setCustomValidity('Passwords do not match');
    }

    // Add validation classes
    this.classList.add('was-validated');

    // If form is valid, you can submit it here
    if (this.checkValidity() && password === repeatPassword) {
        console.log('Form is valid, ready to submit');
        // Add your form submission logic here
    }
});