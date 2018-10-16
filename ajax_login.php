<?php
    $name = $_POST['name'];
    $myclass = $_POST['myclass'];
    $id_student = $_POST['id_student'];
  
    $senddata[] = array(
        "name"            =>    $name,
        "myclass"       =>    $myclass,
        "id_student"   =>    $id_student,
    );
    echo  json_encode($senddata);
