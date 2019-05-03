<?php
require_once('conexion.php');
 ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
	<META http-equiv=Content-Type content="text/html; charset=ISO-8859-1">
	<meta charset=»utf-8″ />
	<meta http-equiv=»Content-Type» content=»text/html; charset=utf-8″ />
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Decorarte</title>

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/dataTables.min.css">
    <link rel="stylesheet" href="css/responsive.dataTables.min.css">
  </head>
  <body style=" background-image: url('fondo.jpg');">

    <?php

    $con = new mysqli($servername, $username, $password, $dbname);;
    mysqli_set_charset($con, 'ISO-8859-1');
    // Check connection
    	if (!$con) {
    		die("Connection failed: " . mysqli_connect_error());
    	}
    	else
    	{
     ?>

     <div class="row">
       <div class="col-md-12 col-sm-12">
         <div class="text-center">
           <a class="btn btn-primary"  data-toggle="modal" data-target="#modalInfo">Ver informacion</a>
         </div>
       </div>
     </div>
    <div class="row">
      <div class="col-md-12 col-sm-10 col-xs-10" style=" background-color:white;">
        <table id="table" class="table table-striped table-bordered" style="width:100%">
          <thead>
            <tr>
              <td>Producto</td>
              <td>Categoria</td>
              <td>Valor</td>
              <td>Stock</td>
              <td>Vender</td>
              <td>Agregar stock</td>
            </tr>
          </thead>

          <tbody>
            <?php
            $sql = mysqli_query($con, "SELECT idProducto idProducto,cantidad cantidad,nombreProducto nombreProducto, categoriaProducto categoriaProducto, format(valorProducto,'$999g999g999') valorProducto from producto");

            mysqli_close($con);
            while ($row = mysqli_fetch_object($sql))
            {?>
              <tr>
                <td><?php echo $row->nombreProducto ?></td>
                <td><?php echo $row->categoriaProducto ?></td>
                <td><?php echo '$'. $row->valorProducto ?></td>
                <td><?php echo $row->cantidad ?></td>
                <td><a class="btn btn-success"  data-toggle="modal" data-target="#modalVender<?php echo $row->idProducto ?>">Vender</a></td>
                <td><a class="btn btn-primary"  data-toggle="modal" data-target="#modalAgregar<?php echo $row->idProducto ?>">Agregar stock</a></td>
              </tr>


              <!-- The Modal vender -->
        <div class="modal" id="modalVender<?php echo $row->idProducto ?>">
          <div class="modal-dialog">
            <div class="modal-content">

              <!-- Modal Header -->
              <div class="modal-header">
                <h4 class="modal-title">Vender <?php echo $row->nombreProducto ?></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
              </div>

              <!-- Modal body -->
              <div class="modal-body">
              <form class="" action="vender.php" method="post">
                  <div class="row">
                    <div class="col-md-3 col-sm-3">
                      <label>Cuanto se vendio</label>
                    </div>
                    <div class="col-md-6 col-sm-6">
                      <input type="text" name="nVendio" value="">
                      <input type="hidden" name="stock" value="<?php echo $row->cantidad ?>">
                      <input type="hidden" name="id" value="<?php echo $row->idProducto ?>">
                    </div>

                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <input type="submit" name="" value="Vender" class="btn btn-success">
                    </div>
                  </div>
              </form>
              </div>

              <!-- Modal footer -->
              <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
              </div>

            </div>
          </div>
        </div>


        <!-- The Modal Agregar -->
  <div class="modal" id="modalAgregar<?php echo $row->idProducto ?>">
    <div class="modal-dialog">
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Vender <?php echo $row->nombreProducto ?></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <!-- Modal body -->
        <div class="modal-body">
        <form class="" action="agregar.php" method="post">
            <div class="row">
              <div class="col-md-3 col-sm-3">
                <label>Cantidad a agregar</label>
              </div>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="cantidad" value="">
                <input type="hidden" name="stock" value="<?php echo $row->cantidad ?>">
                <input type="hidden" name="id" value="<?php echo $row->idProducto ?>">
              </div>

            </div>
            <div class="row">
              <div class="col-md-4">
                <input type="submit" name="" value="Agregar stock" class="btn btn-success">
              </div>
            </div>
        </form>
        </div>

        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>

      </div>
    </div>
  </div>





            <?php } ?>

          </tbody>
        </table>
      </div>
  </div>

  <?php } ?>

<?php
$sqll = mysqli_query($con, "SELECT sum(valorProducto * cantidad) ganancia from producto");
mysqli_close($con);
?>

  <!-- The Modal Por vender -->
<div class="modal" id="modalInfo">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Falta por vender</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
          <div class="row">
            <div class="col-md-6 col-sm-6">
            <?php
            while ($row = mysqli_fetch_object($sql))
            {?>
                <label><?php echo $row->ganancia ?></label>
            <?php } ?>

            </div>
          </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

<label><?php echo $row[0]; ?></label>



  <script src="js/bootstrap.js" charset="utf-8"></script>
  <script src="js/jquery-3.4.1.min.js" charset="utf-8"></script>
  <script src="js/dataTables.min.js" charset="utf-8"></script>
  <script src="js/dataTables.responsive.min.js" charset="utf-8"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script type="text/javascript">
      $(document).ready(function() {
      $('#table').DataTable({responsive: true});
    } );
  </script>
  </body>
</html>
