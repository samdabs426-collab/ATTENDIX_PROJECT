<?php
// ---------------- CONFIGURATION ----------------
session_start();
include "db.php";

// ---------------- LOGIN CHECK ----------------
$error = "";
if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $username = trim($_POST['username'] ?? '');
    $password = trim($_POST['password'] ?? '');

    $sql = "SELECT * FROM admin WHERE username=? AND password=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $username, $password);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $_SESSION['admin'] = $username;
        header("Location: admin_dashboard.php");
        exit();
    } else {
        $error = "Invalid Username or Password!";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            background: url('staff1.jpg') no-repeat center center/cover;
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.95); }
            to { opacity: 1; transform: scale(1); }
        }

        .login-box {
            background: #ffffff;
            padding: 35px 30px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 370px;
            text-align: center;
            transition: transform 0.3s ease;
        }
        .login-box:hover {
            transform: translateY(-5px);
        }

        .login-box h2 {
            margin-bottom: 20px;
            color: #0b3d91;
            font-size: 26px;
            font-weight: bold;
        }

        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            outline: none;
            font-size: 15px;
            transition: border 0.3s, box-shadow 0.3s;
            box-sizing: border-box;
        }
        .login-box input:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 6px rgba(13, 110, 253, 0.5);
        }

        .password-box {
            position: relative;
            width: 100%;
        }
        .password-box input {
            padding-right: 40px;
        }
        .toggle-password {
            position: absolute;
            right: 12px;
            top: 32%;
            cursor: pointer;
            font-size: 16px;
            color: #0d6efd;
            user-select: none;
            transition: color 0.3s;
        }
        .toggle-password:hover {
            color: #0b3d91;
        }

        .view-password-btn {
            display: inline-block;
            width: 100%;
            margin-top: 10px;
            padding: 8px;
            border: none;
            border-radius: 6px;
            background: #0d6efd;
            color: #fff;
            cursor: pointer;
        }

        .login-box button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #0d6efd, #0b3d91);
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-top: 18px;
            transition: background 0.3s, transform 0.2s;
        }
        .login-box button:hover {
            background: linear-gradient(135deg, #0a58ca, #082f6b);
            transform: scale(1.02);
        }

        .error {
            color: red;
            font-size: 14px;
            margin-bottom: 15px;
            animation: shake 0.3s;
        }

        @keyframes shake {
            0% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            50% { transform: translateX(5px); }
            75% { transform: translateX(-5px); }
            100% { transform: translateX(0); }
        }

        /* Home + Staff buttons in one row */
        .action-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 18px;
            gap: 10px;
        }
        .action-buttons a {
            flex: 1;
            text-align: center;
            padding: 10px;
            background: #0288d1;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            transition: background 0.3s, transform 0.2s;
        }
        .action-buttons a:hover {
            background: #01579b;
            transform: scale(1.05);
        }
        .staff-btn {
            background: #f57c00;
        }
        .staff-btn:hover {
            background: #e65100;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>Admin Login</h2>
        <?php if ($error) echo "<p class='error'>$error</p>"; ?>

        <form method="POST">
            <input type="text" name="username" placeholder="Enter Username" required>

            <div class="password-box">
                <input type="password" id="password" name="password" placeholder="Enter Password" required>
            </div>
            <button type="button" class="view-password-btn" title="View Password">
                View Password
            </button>

            <button type="submit">Login</button>
        </form>

        <!-- Home + Staff buttons -->
        <div class="action-buttons">
            <a href="home.php">🏠 Home</a>
            <a href="staff.php" class="staff-btn">👨‍💼 Staff</a>
        </div>
    </div>

    <script>
        const passwordField = document.getElementById("password");
        const viewPasswordBtn = document.querySelector(".view-password-btn");

        if (passwordField && viewPasswordBtn) {
            viewPasswordBtn.addEventListener("click", function () {
                const dialog = document.createElement("dialog");
                dialog.innerHTML = `
                    <form method="dialog">
                        <p>Enter security code: 786</p>
                        <input type="password" id="adminSecurityCode" maxlength="3" autocomplete="off" aria-label="Security code">
                        <div>
                            <button value="cancel" type="submit">Cancel</button>
                            <button value="confirm" type="submit">Confirm</button>
                        </div>
                    </form>
                `;
                dialog.addEventListener("close", function () {
                    if (dialog.returnValue === "confirm") {
                        const securityCode = document.getElementById("adminSecurityCode").value;
                        if (securityCode === "786") {
                            passwordField.type = "text";
                            passwordField.focus();
                            passwordField.setSelectionRange(passwordField.value.length, passwordField.value.length);
                        } else {
                            alert("Incorrect security code. Password remains hidden.");
                        }
                    }
                    dialog.remove();
                });
                document.body.appendChild(dialog);
                dialog.showModal();
                document.getElementById("adminSecurityCode").focus();
            });
        }
    </script>
</body>
</html>
