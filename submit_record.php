<?php
    include("db_connect.php");

    $input_name = $_POST["name"];
    $input_age = $_POST["age"];
    $input_gender = $_POST["gender"];

    $sql = "INSERT INTO cia_people (people_name, people_age, people_gender)
    VALUES ('$input_name', $input_age, $input_gender)";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    header("Location: http://localhost/example_cia");
?>