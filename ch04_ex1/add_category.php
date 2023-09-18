<?php
    //Get category data
    $category_name = filter_input(INPUT_POST,"name");
    if($category_name==null)
    {
        $error = "Invalid category data. Please check all fields and try again.";
        include('error.php');
    }
    require_once('database.php');

    $query = 'Insert into categories (categoryName) values(:categoryName)';
    $statement = $db->prepare($query);
    $statement->bindValue(':categoryName',$category_name);
    $statement->execute();
    $statement->closeCursor();

    include('category_list.php');
?>