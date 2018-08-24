<?php
    include("db_connect.php");

    // Selecting from the given database
    $sql = "SELECT * FROM cia_people;";
    $people_result = $conn->query($sql);
    /* if ($people_result->num_rows > 0) {
        // output data of each row
        while($row = $people_result->fetch_assoc()) {
            echo $row['people_id'];
            echo $row['people_name'];
            echo '</br>';
        }
    } else {

    } */

    // Inserting to the given database
    /* $sql = "INSERT INTO cia_people VALUES ('', 'Sean Smith', 24, 1);";
    $result = $conn->query($sql); */

    // Deleting from a given database
    /* $sql = "DELETE FROM cia_people WHERE people_name = 'Jun Michael';";
    $result = $conn->query($sql); */

    echo "status: Connected successfully";
?>

<html>
    <style>
        h1{
            font-family: helvetica;
        }

        th {
            text-align: left;
        }

        input.name {
            width: 150px;
            margin-right: 20px;
        }

        input.age {
            width: 50px;
        }

        input.submit {
            width: 100px;
            margin-left: 90px;
            background-color: pink;
            color: white;
            padding: 5px 10px;
        }
    </style>

    <div>
        <h1>CIA DATABASE by RED TIGER</h1>
    </div>
    <div>
        <form action="submit_record.php" method="post">
            <span>Name: </span><input type="text" class="name" name="name">
            <span>Age: </span><input type="text" class="age" name="age">
            <span>Gender: </span><input type="text" class="gender" name="gender">
            <input type="submit" class="submit">
        </form>

        <table border="1" cellspacing="1" cellpadding="15" width="500">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
            </tr>
        <?php
            if ($people_result->num_rows > 0) {
                // output data of each row
                while($row = $people_result->fetch_assoc()) {
        ?>
            <tr>
                <td><?php echo $row["people_id"]; ?></td>
                <td><?php echo $row["people_name"]; ?></td>
                <td><?php echo $row["people_age"]; ?></td>
            </tr>
        <?
                }
            } else {

            }
        ?>
        </table>
    </div>
</html>