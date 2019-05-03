<?php
require_once('conexion.php');

  $stock = $_POST['stock'];
  $nVendio = $_POST['nVendio'];
  $id = $_POST['id'];

echo  $total = $stock - $nVendio;

$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "UPDATE producto set cantidad = $total where idProducto = $id";

if ($conn->query($sql) === TRUE) {
      echo '<script language="javascript">alert("Exito al acualizar stock"); window.location.href="index.php";</script>';
      $conn->close();
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    $conn->close();
}



 ?>
