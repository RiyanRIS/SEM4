<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sistem Diskon</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> -->
</head>
<body>
<div class="container"><br><br>
    <div class="row">
        <div class="col-lg-12">
        <div class="card text-center">
            <div class="card-header">
                Sistem Diskon
            </div>
            <div class="card-body">
                
    <?php
        
        if(isset($_POST['simpan'])){
            $nama = $_POST['nama'];
            $nim = $_POST['nim'];
            $br1 = $_POST['br1'];
            $br2 = $_POST['br2'];
            $br3 = $_POST['br3'];
            $diskon = 0;
            $a = "0%";

            $total = $br1+$br2+$br3;
            if($total>1000000){
                $diskon = 10/100*$total;
                $a = "10%";
            }
            ?>
            <p>Nama : <?= $nama ?></p>
            <p>Nim : <?= $nim ?></p>
            <p>Harga Barang 1 : Rp.<?= number_format($br1) ?></p>
            <p>Harga Barang 2 : Rp.<?= number_format($br2) ?></p>
            <p>Harga Barang 3 : Rp.<?= number_format($br3) ?></p>
            <p>Total Belanja : Rp.<?= number_format($total) ?></p>
            <p>Anda Mendapatkan Diskon : <?= $a ?></p>
            <p>Total Bayar Anda : Rp.<?= number_format($total-$diskon) ?></p>

        <?php
        }else{ ?>
            <form action="" method="post">
            <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                  <label for="">Nama</label>
                  <input type="text" class="form-control" name="nama" id="" aria-describedby="helpId" placeholder="">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                  <label for="">Nim</label>
                  <input type="text" class="form-control" name="nim" id="" aria-describedby="helpId" placeholder="">
                </div>
            </div>
                <hr>
            <div class="col-sm-4">
                <div class="form-group">
                  <label for="">Harga Barang 1</label>
                  <input type="number" class="form-control" name="br1" id="" aria-describedby="helpId" placeholder="Masukkan Harga Barang 1">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                  <label for="">Harga Barang 2</label>
                  <input type="number" class="form-control" name="br2" id="" aria-describedby="helpId" placeholder="Masukkan Harga Barang 2">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                  <label for="">Harga Barang 3</label>
                  <input type="number" class="form-control" name="br3" id="" aria-describedby="helpId" placeholder="Masukkan Harga Barang 3">
                </div>
            </div>
            <div class="col-sm-12">
                <div class="form-group">
                    <input name="simpan" class="btn btn-primary mb-2 mr-sm-2" type="submit" value="Total">
                </div>
            </div>
            </div>
                </form>
        <?php } ?>
            </div>
            <div class="card-footer text-muted">
                &copy; <a href="http://riyanris.github.io">RiyanRis</a> <?= date('Y') ?>
            </div>
            </div>
        </div>
    </div>
    <h2></h2>
    


    
</div>
</body>
</html>