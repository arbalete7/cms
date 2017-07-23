 <div class="col-md-4">
                
                
    <?php 
     
//     if(isset($_POST['submit'])){
//         
//         $search = $_POST['search'];
//        
//         $query = "SELECT * FROM posts WHERE post_tags LIKE '%$search%' ";
//         $search_query = mysqli_query($connection, $query); 
//         
//             if(!$search_query){
//
//                 die ("Ooooops" . mysqli_error($connection));
//
//             }
//
//         $count = mysqli_num_rows($search_query);
//         
//         if($count == 0){
//             
//             echo "<h1>NO MATCHES</h1>";
//             
//         } else {
//             
//             echo "<h1>THERE IS SOME RESULT</h1>";
//             
//         }
//         
//         
//         
//         
//   }
//     
     
     
     ?>
                
                        <!-- Blog Search Well -->
                <div class="well">
                    <h4>Blog Search</h4>
                    <form action="search.php" method="post">
                    <div class="input-group">
                    <input name="search" type="text" class="form-control">
                        <span class="input-group-btn">
                            <button name="submit" class="btn btn-default" type="submit">
                                <span class="glyphicon glyphicon-search"></span>
                        </button>
                        </span>
                    </div>
                    </form>
                    <!-- /.input-group -->
                </div>                        

               <!-- Login -->
                <div class="well">
                    <h4>Login</h4>
                    <form action="includes/login.php" method="post">
                        <div class="form-group">
                            <input name="username" type="text" class="form-control" placeholder="Enter Username">
                        </div>
                    <div class="input-group">
                       <input type="password" name="password" class="form-control" placeholder="Enter Password">   
                        <span class="input-group-btn">
                            <button name="login" class="btn btn-primary" type="submit"> Submit  
                            </button>
                        </span>
                    </div>
                    </form>
                    <!-- /.input-group -->
                </div>

                <!-- Blog Categories Well -->
                
<?php 
$query = "SELECT * FROM categories";
$select_all_sidebar_categories = mysqli_query($connection, $query);
 
     ?>
                <div class="well">
                    <h4>Blog Categories</h4>
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="list-unstyled">
    <?php while($row = mysqli_fetch_assoc($select_all_sidebar_categories)){
    
    $cat_title = $row['cat_title'];
    $cat_id = $row['cat_id'];
    
    echo "<li><a href='categories.php?category=$cat_id'>{$cat_title}</a></li>";
    
}
?>    
     
                            </ul>
                        </div>
                        <!-- /.col-lg-6 -->
<!--
                        <div class="col-lg-12">
                            <ul class="list-unstyled">
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                            </ul>
                        </div>
-->
                        <!-- /.col-lg-6 -->
                    </div>
                    <!-- /.row -->
                </div>

                <!-- Side Widget Well -->
                <?php include "widget.php";?>
            </div>