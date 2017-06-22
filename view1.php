<script type="text/javascript">     
    /*function PrintDiv() {    
       var divToPrint = document.getElementById('divToPrint');
       var popupWin = window.open('', '_blank', 'width=300,height=300');
       popupWin.document.open();
       popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
        popupWin.document.close();
            }*/




function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}

 </script>
<?php 
  $name = "";
 if(isset($_REQUEST['sub_name'])){
  $name = $_REQUEST['sub_name'];
 }
/* $rating = "";
 if (isset($_POST['text1'])) {
  echo $rating = $_POST['text1'];
 }*/

?>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/style.css">
   <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        var country = [""];
        $("#country").select2({
          data: country
        });
      });
    </script>
</head>
<body>
  <br>
  <div class="container_fluid">
      <div id="printableArea">
<form method="GET" id="select_form">

  <label>Select Name:</label>
  <select name="sub_name"  style="width:auto;" id="country">
    <option>Select Name...</option>
    <?php
     include('config.php');
           $sql = "select DISTINCT Name from performance";
           $res = mysqli_query($conn,$sql);
           while ($row = mysqli_fetch_array($res)) {  ?>
           <option <?php echo ($row['Name'] == $name) ? 'selected':""; ?> value="<?php echo $row['Name']; ?>"><?php echo $row['Name'] ?></option>
         <?php }
        
         ?>
  </select><br>
</form>
 <br>
  <table class="table table-bordered">
    <tr>
  <th rowspan="2">Performance factors</th>
  <th rowspan="2">Rating for 50</th>
  <th colspan="3">Quarter 1</th>
  <th colspan="3">Quarter 2</th>
  <th colspan="3">Quarter 3</th>
  <th colspan="3">Quarter 4</th>
  <th rowspan="2">Cumulative</th>
  <th rowspan="2">year 17-18 Final Score</th>
 </tr>
  <tr>
      
        <td>Target</td>
      <td>Achived</td>
      <td>Rating</td>
      <td>Target</td>
      <td>Achived</td>
      <td>Rating</td>
      <td>Target</td>
      <td>Achived</td>
      <td>Rating</td>
       <td>Target</td>
      <td>Achived</td>
      <td>Rating</td>
      </tr>
     
      <?php
           include('config.php');
           $sql = "SELECT id,rating50,Name,Factor,Q1_cumulative_target,Q1_cumulative_acheived,Q1_rating,Q2_cumulative_target,Q2_cumulative_acheived,Q2rating,
                   Q3_cumulative_target,Q3_cumulative_acheived,Q3rating, Q4_cumulative_target,Q4_cumulative_acheived,Q4rating,
                   Qs_cumulative, Year17_18_Final_Score
                  FROM performance where Name='".$name."'";
           $res = mysqli_query($conn,$sql);
           while ($row1 = mysqli_fetch_array($res)) {  ?>

           <tr class="primary">
              <td><?php echo $row1['Factor']; ?></td>
              <td><form name="input_form" method="POST" action=""/>
              <input type="text" id="<?php echo $row['rating50']; ?>" value="<?php echo isset($_POST['text1']) ? $rating : ''; ?>" name="text1" style="width: 50px;"/>
              <!--  <input type="text" id="<?php echo $row['rating50']; ?>" name="rate" style="width: 50px;"/> -->
            </form></td>
            <td id='q1targ'><?php echo $row1['Q1_cumulative_target']; ?></td>
            <td id='q1achiv'><?php echo $row1['Q1_cumulative_acheived']; ?></td>
            <td id=""><?php echo round($row1['Q1_rating'],2); ?>
            </td>
            <td id='q2targ'><?php echo $row1['Q2_cumulative_target']; ?></td>
            <td id='q2achiv'><?php echo $row1['Q2_cumulative_acheived']; ?></td>
            <td id="ans1"><?php echo round($row1['Q2rating'],2); ?>
                    </td>
            <td id='q3targ'><?php echo $row1['Q3_cumulative_target']; ?></td>
            <td id='q3achiv'><?php echo $row1['Q3_cumulative_acheived']; ?></td>
            <td id="ans2">
             <?php echo round($row1['Q3rating'],2); ?>
            </td>
            
            <td id='q4targ'><?php echo $row1['Q4_cumulative_target']; ?></td>
             <td id='q4achiv'><?php echo $row1['Q4_cumulative_acheived']; ?></td>
             <td id="ans3">
             <?php echo round($row1['Q4rating'],2); ?>
             </td>
             <td>
             <?php echo round($row1['Qs_cumulative'],2); ?>
            </td>
             <td> <?php echo round($row1['Year17_18_Final_Score'],2); ?></td>
            <!-- <<a  href="update.php?id=<?php echo $row1['id'];?>&&name=<?php echo $row1['Name'];?>">Update</a></td> -->
            </tr>
      <?php }
           ?>
            <tr>
              <td colspan="1">Experience</td>
               <td colspan="1"><input style="width: 50px;"></td>
              <!--  <td colspan="14" align="right"><input value="" style="width: 50px;" ></td> -->
            </tr>
             <tr>
              <td colspan="1">Future prospects </td>
               <td colspan="1"><input style="width: 50px;"></td>
               <!-- <td colspan="14" align="right"><input value="" style="width: 50px;" ></td> -->
            </tr>
            <tr>
              <td colspan = "15" align="right">Performance Score Out of 50</td>
              <td colspan="1">45</td>

            </tr>
     


           
          

  </table>
 
</div>
<div>
  <p align="right">
    <input type="button" value="Save" class="btn btn-primary btn-lg" /> 
    <input type="button" value="Print" onclick="printDiv('printableArea')" class="btn btn-success btn-lg" /> 
    </p>
</div>
  </form>
</div>
<script type="text/javascript">
  $(document).ready(function(){
    $('select').on('change', function() {
      $('#select_form').submit();
    })
     $('text').on('change', function() {
      $('#input_form').submit();
    })


  $("#rate").on("input", function(e) {  
  var mul = parseInt($("#q1achiv").text()) / parseInt($("#q1targ").text());
  $("#ans").text(mul * parseInt($(e.target).val()));
   var mul1 = parseInt($("#q2achiv").text()) / parseInt($("#q2targ").text());
  $("#ans1").text(mul1 * parseInt($(e.target).val()));
   var mul2= parseInt($("#q3achiv").text()) / parseInt($("#q3targ").text());
  $("#ans2").text(mul2 * parseInt($(e.target).val()));
   var mul3 = parseInt($("#q4achiv").text()) / parseInt($("#q4targ").text());
  $("#ans3").text(mul3 * parseInt($(e.target).val()));
   var mul4 = parseInt($("#q5achiv").text()) / parseInt($("#q5targ").text());
  $("#ans4").text(mul4 * parseInt($(e.target).val()));
});
  })
  </script>
</body>
</html>

<?php
$sq = mysqli_query($conn,"UPDATE test SET rating50 = $")
?>
