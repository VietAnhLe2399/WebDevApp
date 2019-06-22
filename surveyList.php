<?php
    include("database.php");
    error_reporting(E_ERROR | E_PARSE);
    $sql = "select * from baidang join cuusinhvien on baidang.idcuusinhvien = cuusinhvien.idcuusinhvien;";
    $result = $connection -> query($sql);
    
    $response;

    while($row = $result -> fetch_assoc()) {
        // $response -> requiredSurvey[] = array(
        $response -> data[] = array(
            surveyId => $row['idbaidang'],
            surveyTitle => $row['tieude'],
            creatorId => $row['idcuusinhvien'],
            creatorName => $row['hoten']
            
        );
    }

    

    die(json_encode($response, JSON_UNESCAPED_UNICODE));
?>