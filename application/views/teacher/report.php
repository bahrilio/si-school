<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <title><?= get_page_title(); ?></title>
  </head>
  <body>
      <div class="container">
          <table style="width: 100%;">
              <tr style="border-bottom: 3px solid black;">
                  <td style=" padding-bottom: 15px;"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG0hUwXdFrc5OtXL9A3jA7laZZWdyF45ndpFXDyF_Rly-OaKUSPrX_bF7mpdIAlPhdepU&usqp=CAU" alt=""></td>
                  <td style=" padding-bottom: 15px;">
                    <div class="text-center p-3">
                        <h2>Pemerintah Kabupaten Tanah Bumbu</h2>
                        <h2>Dinas Pendidikan</h2>
                        <h2 class="fw-bold">SI SEKOLAH</h2>
                        <P>Jl, Semangat Dalam Tlp (0813) 5037 5976</P>
                    </div>
                  </td>
                  <td style=" padding-bottom: 15px;"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDf1SI2KsIQq942H9zaNMkVzGXkw7vQGOgjpzI_MrVVaJqhX4jDeLAcoMarYiamgVrUNc&usqp=CAU" alt=""></td>
              </tr>
              <tr>
                  <td colspan="3">
                      <div class="py-5 text-center">
                        <h2>Laporan Data Siswa</h2>
                        <p><?= date("Y/m/d"); ?></p>
                      </div>
                        <table class="table table dataTable">
                        <thead>
                            <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>NIP</th>
                            <th>Phone Number</th>
                            <th>Address</th>
                            <th>Email</th>
                            <th>Gender</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($teachers as $index => $teacher) : ?>
                                <tr>
                                    <td><?= ++$index; ?></td>
                                    <td><?= $teacher['name']; ?></td>
                                    <td><?= $teacher['nip']; ?></td>
                                    <td><?= $teacher['phone_number']; ?></td>
                                    <td><?= $teacher['address']; ?></td>
                                    <td><?= $teacher['email']; ?></td>
                                    <td><?= $teacher['gender']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                        </table>
                  </td>
              </tr>
              <tr>
                  <td colspan="3">
                        <div style="float: right;">
                            <div style="text-align: end;">
                                <p>Hromat Saya</p>
                                <img width="120px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmNQkbah-5zK9rEQp9O0tLnpFwcXa3-G9qWQ&usqp=CAU" alt="">
                                <p>M. Bahril Ilmi</p>
                                <p>Kepala Sekolah</p>
                            </div>
                        </div>
                  </td>
              </tr>
          </table>
      </div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    -->
    <script>
         window.print();
    </script>
  </body>
</html>

