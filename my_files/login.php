<?php 

session_start(); 

include "db_conn.php";
$conn = Open_Con();
if (isset($_POST['uname']) && isset($_POST['password'])) {

    function validate($data){

       $data = trim($data);

       $data = stripslashes($data);

       $data = htmlspecialchars($data);

       return $data;

    }

    $uname = validate($_POST['uname']);

    $password = validate($_POST['password']);

    if (empty($uname)) {

        header("Location: index.php?error=User Name is required");

        exit();

    }else if(empty($password)){

        header("Location: index.php?error=Password is required");

        exit();

    }else{

        $result = $conn->query("SELECT * FROM teacher WHERE username='$uname'")->fetch_assoc();
		
        if ($result) {
		
            

            if ($result['PASSWORD'] === $password) {
			
                

                $_SESSION['username'] = $result['USERNAME'];
				$_SESSION['name'] = $result['NAME'];
				$_SESSION['surname'] = $result['SURNAME'];
                
				
				
                header("location: http://localhost/aratos/Teacher.php");

                

            }else{

                header("location: index.php?error=Incorect User name or password");

                exit();

            }

        }else{

            header("Location: index.php?error=Incorect User name or password");

            exit();

        }

    }

}else{

    header("Location: index.php");

    exit();

}