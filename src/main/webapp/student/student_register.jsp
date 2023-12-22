<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
  background: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url("../images/bg_newww.avif");
   text-align: center;
            margin: 30px;
        }

        h2 {
               font-size: 34px;
        color: #e5dddd;
    text-transform: capitalize;
        }
        h4{
        margin-top: 8px;
        }

        form {
             max-width: 781px;
    margin: 0 auto;
      background-color: #52484857;
    border: 1 px solid black;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgb(0 0 0 / 79%);
        }

        label {
              display: block;
              font-weight: 600;
    text-align: left;
    margin: 15px 0 5px;
    color: #fff;
    font-size: 18px;
        }

        input,
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        input[type="checkbox"] {
            margin-right: 5px;
        }

        textarea {
            resize: vertical;
        }

        input[type="submit"] {
                background-color: #b14e31;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #111111;
        }
      
        
      
        label .cb2{
        display: inline;}
    </style>
     <script>
     
     function showFees(course) {
    	    var feeSection = document.getElementById('fee-section');
    	    var paymentSection = document.getElementById('payment-section');

    	    if (course === 'GATE') {
    	        feeSection.innerHTML = 'Fees: Rs 10,000<input type="hidden" name="fees" value="10000">';
    	    } else if (course === 'GRE') {
    	        feeSection.innerHTML = 'Fees: Rs 20,000<input type="hidden" name="fees" value="20000">';
    	    } else if (course === 'CAT') {
    	        feeSection.innerHTML = 'Fees: Rs 30,000<input type="hidden" name="fees" value="30000">';
    	    } else if (course === 'MAT') {
    	        feeSection.innerHTML = 'Fees: Rs 40,000<input type="hidden" name="fees" value="40000">';
    	    } else if (course === 'XAT') {
    	        feeSection.innerHTML = 'Fees: Rs 50,000<input type="hidden" name="fees" value="50000">';
    	    }

    	    if (course) {
    	        feeSection.style.display = 'block';
    	        paymentSection.style.display = 'block';
    	    } else {
    	        hideFees();
    	    }
    	}


        function hideFees() {
            var feeSection = document.getElementById('fee-section');
            var paymentSection = document.getElementById('payment-section');

            feeSection.style.display = 'none';
            paymentSection.style.display = 'none';
        }
        
       
    </script>
</head>
<body>
    <h2>InfinityMasters Registration</h2>
    
    <form action="../studentregister" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" required><br>

        <label for="contact">Contact(10 digits only):</label>
        <input type="tel" id="contactNumber" pattern="[6-9]\d{9}" name="contact"  required><br>

        <label for="email">Email ID:</label>
        <input type="email" name="email" required><br>
        
        <label for="city">City:</label>
        <input type="text" name="city" required><br>

        
        <label for="courseSelection">Course Selection:</label>
        <select name="courseSelection" onchange="showFees(this.value)">
            <option value="">Select a Course</option>
            <option value="GATE">GATE (Graduate Aptitude Test in Engineering)</option>
            <option value="GRE">GRE (Graduate Record Examination)</option>
            <option value="CAT">CAT (Common Admission Test)</option>
            <option value="MAT">MAT (Management Aptitude Test)</option>
             <option value="XAT">XAT (Xavier Aptitude Test)</option>
            
        </select><br>

        <div class="fee-section" id="fee-section"></div>

        <label for="password">Password:</label>
        <input type="password" name="password" required><br>

        <label class="cb">
    <input type="checkbox" class="cb2" name="terms" required>
    I agree to the terms and conditions
</label>
<div id="terms-and-conditions" style="display: none;">
    <!-- terms and conditions  -->
    <p>1. Acceptance of Terms:-   By accessing or using this registration form, you agree to comply with and be bound by these terms and conditions. If you do not agree with any part of these terms, you may not use the form.
    </p>
  
<p>2. Termination:- We may terminate your access to the registration form at our sole discretion, without prior notice, for any reason, including but not limited to a breach of these terms.</p>

<p>By using this registration form, you acknowledge that you have read, understood, and agree to these terms and conditions.</p>
  
</div>

        <input type="submit" value="Submit">
    </form>
    
    <script>
    document.getElementsByName('terms')[0].addEventListener('change', function () {
        var termsDiv = document.getElementById('terms-and-conditions');
        termsDiv.style.display = this.checked ? 'block' : 'none';
    });
</script>
    
    
</body>
</html>
