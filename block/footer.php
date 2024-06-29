<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <!-- Popper JS -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
  <!-- Bootstrap JS -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script>
    let id_photo;
    function changePhoto(img, title, id, description){
        //alert(img);
        $('#bodyimg').attr('src', img);
        $('#exampleModalLabel').text(title);
        $('#txt-modal-body').text(description);
        id_photo = id;
        $.ajax({
          url: 'add_like.php',
          method: 'post',
          dataType: 'html',
          data: {id_photo: id_photo, mode: 'showlike'},
          success: function(data){
            $('#like_count').text(data);
          }
        });

        $.ajax({
          url: 'add_like.php',
          method: 'post',
          dataType: 'html',
          data: {id_photo: id_photo, mode: 'showdislike'},
          success: function(data){
            $('#dislike_count').text(data);
          }
        });
        $.ajax({
        url: 'add_comment.php',
        method: 'post',
        dataType: 'html',
        data: {id_photo: id_photo, mode: 'show'},
        success: function(data){
          $('#commentList').html(data);
         
        }
      });
    } 




    $('#like_btn').on('click', function(){
      $.ajax({
        url: 'add_like.php',
        method: 'post',
        dataType: 'html',
        data: {id_photo: id_photo, mode: 'like'},
        success: function(data){
          $('#like_count').text(data);
          $('#item-photo-like-'+id_photo).html('&nbsp;' + data + ' лайк');
        }
      });

    });


    $('#dislike_btn').on('click', function(){
      $.ajax({
        url: 'add_like.php',
        method: 'post',
        dataType: 'html',
        data: {id_photo: id_photo, mode: 'dislike'},
        success: function(data){
          $('#dislike_count').text(data);
          $('#item-photo-dislike-'+id_photo).html('&nbsp;' + data + ' дизлайк');
        }
      });

    });

    $('#commentForm').on('submit', function(event){
      event.preventDefault();
      let name = $('#nameForm').val();
      let comment = $('#comment').val();
      $.ajax({
        url: 'add_comment.php',
        method: 'post',
        dataType: 'html',
        data: {id_photo: id_photo, name: name, comment: comment,mode: 'add'},
        success: function(data){
          $('#commentList').html(data);
          $('#nameForm').val('');
          $('comment').val('');
        }
      });

    });
</script>
</body>
</html>