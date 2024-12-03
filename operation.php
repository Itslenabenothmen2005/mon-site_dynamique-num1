<!DOCTYPE html>
<head>
<title>index</title>
<meta charset="utf-8">
<link rel="stylesheet" href="mesStyles.css">
<script src="controles.js"></script>
</head>
<body>
<form method="post" action="mouvement.php" onsubmit="return verif2()">
        <fieldset>
            <legend>opération sur le compte</legend>
            <select id="ag" name="ag">
                <label><option>selectionner votre agence</option>
                <?php
$cnx=mpsqli_connect("localhost","root","bd_lilakalba");
$req1="select * from agence ;";
$res1=mysqli_query($cnx,$req1) or die("pb req".mysqli_error($cnx));
while($t=mysqli_fetch_array($res1)){
    echo("<option value="$t[0]">$t[0]</option>")
}
mysqli_close($cnx);
?>

            </select></label></br>
            <label>numero de comte</label><input type=" text" id="nc" name="nc"></label><br>
            <label>type operation
                <input type="radio" id="d" name="D" value="dépot">dépot
                <input type="radio" id="r" name="R" value="retrait">retrait</label></br>
                <label>montant</label><input type=" text" id="m" name="m"></label><br>
                <label> <input type="submit" value="valider"><input type="reset" value="annuler"></label></fieldset></form>
</body></html>










