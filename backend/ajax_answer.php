<?php
include 'DBConnection.php';
    $raw_post_data = json_decode(file_get_contents('php://input'), true);
    
    $score = $raw_post_data['score'];
    $other = $raw_post_data['other'];
    $id_answer = $raw_post_data['id_answer'];
    $id_student = $raw_post_data['id_student'];
    $id_question=$raw_post_data['id_question'];
    $today = date("Y-m-d H:i:s");

    if ($id_student != null) {
        //Select username.id
        $sql = "SELECT id  FROM member WHERE username = '".$id_student."'   ";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while ($row = $result->fetch_assoc()) {
                $id_student =  $row["id"];
            }
        } else {
            echo "0 results";
        }
        $sql = "INSERT INTO answer (question_id, answer,other,username,created_at)
                    VALUES ('".$id_question."','".$id_answer."','".$other."','".$id_student."','".$today."')";
 
        if ($conn->query($sql) === true) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
 
        $conn->close();
    } else {
        echo "no student id";
    }
