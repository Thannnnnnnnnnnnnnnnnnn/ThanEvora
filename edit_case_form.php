<?php

include("connections.php");


if(isset($_GET['id'])) {
    $caseId = $_GET['id'];
    
    $query = "SELECT * FROM `2222` WHERE Reservation_id = ?";
    
    
    $stmt = mysqli_prepare($connections, $query);
    
   
    mysqli_stmt_bind_param($stmt, "i", $caseId);
    
    
    mysqli_stmt_execute($stmt);
    
    
    $result = mysqli_stmt_get_result($stmt);

    if($result) {
        if(mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
           
            $html = "<form id='edit-case-form'>";
            $html .= "<input type='hidden' name='edit-case-id' value='{$row['Reservation_id']}'>";
            $html .= "<div class='mb-3'>";
            $html .= "<label for='edit-case-vehicle-type' class='form-label'>Vehicle Type</label>";
            $html .= "<input type='text' class='form-control' id='edit-case-vehicle-type' name='edit-case-vehicle-type' value='{$row['Vehicle_type']}'>";
            $html .= "</div>";
            $html .= "<div class='mb-3'>";
            $html .= "<label for='edit-case-vehicle-color' class='form-label'>Vehicle Color</label>";
            $html .= "<input type='text' class='form-control' id='edit-case-vehicle-color' name='edit-case-vehicle-color' value='{$row['Vehicle_color']}'>";
            $html .= "</div>";
            $html .= "<div class='mb-3'>";
            $html .= "<label for='edit-case-vehicle-brand' class='form-label'>Vehicle Brand</label>";
            $html .= "<input type='text' class='form-control' id='edit-case-vehicle-brand' name='edit-case-vehicle-brand' value='{$row['Vehicle_brand']}'>";
            $html .= "</div>";
            $html .= "<div class='mb-3'>";
            $html .= "<label for='edit-case-vehicle-plate' class='form-label'>Vehicle Plate Number</label>";
            $html .= "<input type='text' class='form-control' id='edit-case-vehicle-plate' name='edit-case-vehicle-plate' value='{$row['Plate_no']}'>";
            $html .= "</div>";
            
           
            $html .= "<button type='submit' class='add-button'>Save Changes </button>  " ;
            
            $html .= "<button type='button' class='close-button' data-bs-dismiss='modal'>Close</button>";
            
            
            $html .= "</form>";
            
            echo $html;
        } else {
            echo "No case found with the provided ID.";
        }
    } else {
        echo "Query execution failed.";
    }
} else {
    echo "No case ID provided.";
}
?>
<link rel="stylesheet" href="buttons.css">