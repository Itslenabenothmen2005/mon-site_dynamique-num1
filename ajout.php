<?php
$ty=$_POST['ty'];
$nc=$_POST['nc'];
$cc=$_POST['cc'];
$s=$_POST['s'];
$cnx=mpsqli_connect("localhost","root","bd_lilakalba");
$req1="select * from compte where numero='$nc';";
$res1=mysqli_query($cnx,$req1) or die("erreur req1".mysqli_error($cnx));
if(mysqli_num_rows($res1)>0){
    die("Erreur : compte existant");
}
else{
    $req2="insert into compte values('$nc','$cc','$ty','$s');";
    $res2=mysqli_query($cnx,$req2) or die("pbreq2".mysqli_error($cnx));
    if(mysqli_affaected_rows($cnx)>0){
        echo("Ajout d’un nouveau
        compte avec succès");
    }
}



mysqli_close($cnx);



?>