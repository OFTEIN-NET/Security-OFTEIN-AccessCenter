<html>
<body>
<?php
$name = $_POST['name'];
$mail = $_POST['mail'];
$affiliation = $_POST['affiliation'];
$bandwidth = $_POST['bandwidth'];
$ports = $_POST['ports'];
$subject = "Account Request from " . $name;
$content = "Detail Request : " . $name . " : " . $mail . " : " . $affiliation . " : " . $bandwidth . " : " . $ports;
$res = mail ( "aris@smartx.kr", $subject , $content );
var_export( $res );
?>

<p><a href="index.html">Back to Previous Page</a></p>

</body>
</html> 
