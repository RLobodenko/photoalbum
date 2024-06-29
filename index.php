<?php 
    require_once 'block/header.php';
    require_once 'db/connect.php';
    $albums = $mysqli->query('select * from albums');
?>
<div class="container">
    <h1 class="mt-5">Альбомы</h1>
    <a href='create_album.php' class="btn btn-primary mb-3">Создать альбом</a>
    <div class="list-group">
        <?php while ($row = $albums->fetch_assoc()) {?>
            <a href="detail_album.php?id=<?=$row['id']?>" class="list-group-item list-group-item-action">
                <img src="<?=$row['image']?>" width="200"
            height="200">
            <p><?=$row['title']?></p>
            <p><?=$row['description']?></p>
            </a>
        <?php } ?>


   
    </div>
   
</div>
<?php
    require_once 'block/footer.php';
?>
