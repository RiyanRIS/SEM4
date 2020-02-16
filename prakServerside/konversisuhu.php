<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Konversi Suhu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<div class="container"><br><br>
    <div class="row">
        <div class="col-lg-12">
        <div class="card text-center">
            <div class="card-header">
                Konversi Suhu
            </div>
            <div class="card-body">
                <form action="index.php" method="post">
                <div class="form-group">
                    <input type="number" value="<?= @$_POST['derajat'] ?>" required id="aiu" name="derajat" class="form-control mb-2 mr-sm-2" placeholder="Masukkan suhu">
                </div>
                <div class="form-group">
                    <select class="form-control mb-2 mr-sm-2" name="dari" id="">
                    <option value="0" <?= (@$_POST['dari']==0)?'selected':'' ?>>Celcius</option>
                    <option value="1" <?= (@$_POST['dari']==1)?'selected':'' ?>>Farenheit</option>
                    <option value="2" <?= (@$_POST['dari']==2)?'selected':'' ?>>Reamur</option>
                    <option value="3" <?= (@$_POST['dari']==3)?'selected':'' ?>>Kelvin</option>
                    <option value="4" <?= (@$_POST['dari']==4)?'selected':'' ?>>Rankine</option>
                    <option value="5" <?= (@$_POST['dari']==5)?'selected':'' ?>>Desile</option>
                    <option value="6" <?= (@$_POST['dari']==6)?'selected':'' ?>>Newton</option>
                    </select>
                </div>
                <div class="form-group">
                Ke 
                </div>
                <div class="form-group">
                    <select class="form-control mb-2 mr-sm-2" name="ke" id="">
                    <option value="0" <?= (@$_POST['ke']==0)?'selected':'' ?>>Celcius</option>
                    <option value="1" <?= (@$_POST['ke']==1)?'selected':'' ?>>Farenheit</option>
                    <option value="2" <?= (@$_POST['ke']==2)?'selected':'' ?>>Reamur</option>
                    <option value="3" <?= (@$_POST['ke']==3)?'selected':'' ?>>Kelvin</option>
                    <option value="4" <?= (@$_POST['ke']==4)?'selected':'' ?>>Rankine</option>
                    <option value="5" <?= (@$_POST['ke']==5)?'selected':'' ?>>Desile</option>
                    <option value="6" <?= (@$_POST['ke']==6)?'selected':'' ?>>Newton</option>
                    </select>
                </div>
                <div class="form-group">
                    <input name="simpan" class="btn btn-primary mb-2 mr-sm-2" type="submit" value="Convert">
                </div>
                </form>
    <?php
        $macam = array("Celcius","Farenheit","Reamur","Kelvin","Rankine","Desile","Newton");
        $tb = array("0","32","0","273,15","491,67","150","0");
        $td = array("99,9839","211,97102","80","373,1339","671,64102","0","33");
        if(isset($_POST['simpan'])){
            $bil = floatval($_POST['derajat']);
            $dari = $_POST['dari'];
            $ke = $_POST['ke'];
            $a = $bil - floatval($tb[$dari]);
            $b = floatval($td[$dari]) - floatval($tb[$dari]);
            $awal = bcdiv($a,$b,30);
            $c = floatval($td[$ke]) - floatval($tb[$ke]);
            $hasil = ceil(bcmul($awal,$c,30)-(-1*floatval($tb[$ke])));
            ?>
            <hr>
            <?= $awal ?>
            <!-- <p><strong><?= $bil ?></strong> <?= $macam[$dari] ?> = <strong><?= $hasil ?></strong>
                <?= $macam[$ke] ?>
            </p> -->
        <?php
        }
    ?>
            </div>
            <div class="card-footer text-muted">
                &copy; <a href="http://riyanris.github.io">RiyanRis</a> <?= date('Y') ?> <small>Thanks To PHPID</small>
            </div>
            </div>
        </div>
    </div>
    <h2></h2>
    


    
</div>
</body>
</html>