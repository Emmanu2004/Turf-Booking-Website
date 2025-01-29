<?php

 require('../config/autoload.php');
include("header.php");

$file=new FileUpload();
$elements=array(
        "ctime"=>"");


$form=new FormAssist($elements,$_POST);



$dao=new DataAccess();

$labels=array('stime'=>"slot Name");

$rules=array(
    "ctime"=>array("required"=>true,"minlength"=>3,"maxlength"=>30)

);


$validator = new FormValidator($rules,$labels);

if(isset($_POST["btn_insert"]))
{

if($validator->validate($_POST))
{



$data=array(

        'ctime'=>$_POST['ctime']


    );

    if($dao->insert($data,"slot"))
    {
        echo "<script> alert('New record created successfully');</script> ";
//header('location:category.php');


    }
    else
        { $msg="Registration failed"; ?>
            <span style="color:red;"><?php echo $msg; ?></span> <?php } ?> 



<?php



}

}
?>
<html>
<head>
</head>
<body>

 <form action="" method="POST" enctype="multipart/form-data">


<div class="row">
                    <div class="col-md-6">
TIME:

<?= $form->textBox('ctime',array('class'=>'form-control')); ?>
<?= $validator->error('ctime'); ?>

</div>
</div>



<button type="submit" name="btn_insert"  >Submit</button>
</form>


</body>

</html>