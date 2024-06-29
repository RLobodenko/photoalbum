<?php 
    require_once 'block/header.php';
    require_once 'db/connect.php';
    if(isset($_POST['add'])){
        $title = $_POST['title'];
        $description = $_POST['description'];
        $filename = $_FILES['image']['name'];
        $target_file = 'uploads/'.$filename;
        if(move_uploaded_file($_FILES['image']['tmp_name'], $target_file)){
            $mysqli->query("insert into albums (title, description, image) values ('$title', '$description', '$target_file')");
            header('Location: index.php');
            exit;
        }else{
            
        }

    }

?>

<div class="container">
    <h1 class="mt-5">Create New Album</h1>
    <form method="POST" enctype="multipart/form-data">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" id="title" name="title" required>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" id="description" name="description" rows="3"></textarea>
        </div>
        <div class="form-group">
            <label for="image">Image</label>
            <input type='file' name='image' id='image'>
        </div>
        <button type="submit" name='add' class="btn btn-primary">Create</button>
    </form>
</div>
<?php
    require_once 'block/footer.php';
?>