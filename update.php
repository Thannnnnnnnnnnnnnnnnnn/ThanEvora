<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   
    $reservationId = $_POST['Reservation_id'];
    $vehicleType = $_POST['Vehicle_type'];
    $vehicleColor = $_POST['Vehicle_color'];
    $vehicleBrand = $_POST['Vehicle_brand'];
    $plateNo = $_POST['Plate_no'];
    $date = $_POST['Date'];
    $status = $_POST['Status'];

    /

  
    include("connections.php");
    $sql = "UPDATE `2222` SET Vehicle_type='$vehicleType', Vehicle_color='$vehicleColor', Vehicle_brand='$vehicleBrand', Plate_no='$plateNo', Date='$date', Status='$status' WHERE Reservation_id='$reservationId'";
    if (mysqli_query($connections, $sql)) {
       
      
        header("Location: admin.php");
        exit();
    } else {
     
        echo "Error: " . mysqli_error($connections);
    }

    mysqli_close($connections);
} else {
   
    header("Location: edit.php?id=" . $_POST['Reservation_id']);
    exit();
}
?>
