<?php 
require_once 'db/connect.php';
$id_photo = $_POST['id_photo'];
$mode = $_POST['mode'];
if($mode == 'like'){
    $mysqli->query("insert into likes (photo_id, type) values ($id_photo, '$mode')");
    $res = $mysqli->query("select count(*) as count from likes where photo_id = $id_photo and type = 'like'")->fetch_assoc();

    echo $res['count'];

}
elseif($mode == 'showlike'){
    $res = $mysqli->query("select count(*) as count from likes where photo_id = $id_photo and type = 'like'")->fetch_assoc();

    echo $res['count'];

}
elseif($mode == 'dislike'){
    $mysqli->query("insert into likes (photo_id, type) values ($id_photo, '$mode')");
    $res = $mysqli->query("select count(*) as count from likes where photo_id = $id_photo and type = 'dislike'")->fetch_assoc();

    echo $res['count'];

}
elseif($mode == 'showdislike'){
    $res = $mysqli->query("select count(*) as count from likes where photo_id = $id_photo and type = 'dislike'")->fetch_assoc();

    echo $res['count'];

}

