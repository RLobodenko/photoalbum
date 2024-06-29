<?php 
    require_once 'block/header.php';
    require_once 'db/connect.php';
    $id = intval($_GET['id']);
    if(isset($_POST['add'])){
        $title = $_POST['title'];
        $description = $_POST['description'];
        $filename = $_FILES['image']['name'];
        $target_file = 'uploads/photos/'.$filename;
        if(move_uploaded_file($_FILES['image']['tmp_name'], $target_file)){
            $mysqli->query("insert into photos (album_id, title, description, file_name) values ($id, '$title', '$description', '$target_file')");
            header('Location: detail_album.php?id='.$id);
            exit;
        }else{
            
        }

    }

?>

<div class="container">
    <h1 class="mt-5">Добавить фото в альбом</h1>
    <form method="POST" enctype="multipart/form-data">
        <div class="form-group">
            <label for="title">Название</label>
            <input type="text" class="form-control" id="title" name="title" required>
        </div>
        <div class="form-group">
            <label for="description">Описание</label>
            <textarea class="form-control" id="description" name="description" rows="3"></textarea>
        </div>
        <div class="form-group">
            <label for="image">Фото</label>
            <input type='file' name='image' id='image'>
        </div>
        <button type="submit" name='add' class="btn btn-primary">Добавить</button>
    </form>
</div>
<?php
    require_once 'block/footer.php';
?>