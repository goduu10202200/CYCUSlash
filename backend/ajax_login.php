<?php
include 'DBConnection.php';

    $raw_post_data = json_decode(file_get_contents('php://input'), true);
    $name = $raw_post_data['name'];
    $myclass = $raw_post_data['myclass'];
    $id_student = $raw_post_data['id_student'];
    $today = date("Y-m-d H:i:s");

    $sql = "INSERT INTO member (username, name,department,created_at)
    VALUES ('".$id_student."','".$name."','".$myclass."','".$today."')";
    
    if ($conn->query($sql) === true) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    
    $conn->close();
