<?php
    $raw_post_data = json_decode(file_get_contents('php://input'), true);
    
    $score = $raw_post_data['score'];
    $other = $raw_post_data['other'];
    $id_answer = $raw_post_data['id_answer'];
    $id_student = $raw_post_data['id_student'];
    $id_question=$raw_post_data['id_question'];

    $senddata[] = array(
        "score"             =>    $score,
        "other"             =>    $other,
        "id_answer"     =>    $id_answer,
        "id_student"    =>     $id_student,
        "id_question"   =>    $id_question,
    );
    echo  json_encode($senddata);
