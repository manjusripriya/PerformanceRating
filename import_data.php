<?php  

//connect to the database 
$connect = mysqli_connect("localhost","root","","project"); //select the table 
// 
if (isset($_POST['Submit'])) {
  
   //get the csv file 
   echo $file = $_FILES['csv']['tmp_name']; 
    $handle = fopen($file,"r"); 
     
     $fact="";
    //loop through the csv file and insert into database 
    while ($data = fgetcsv($handle,1000,",","'"))  { 
      
       if ($data[0] == "On time payments") { 
            $fact="On time payments";
        }
        elseif ($data[0] == "Accounting upkeep") { 
            $fact="Accounting upkeep";
        } 
         elseif ($data[0] == "SOD") { 
            $fact="SOD";
        } 
         elseif ($data[0] == "Expenses summarry") { 
            $fact="Expenses summarry";
        } 
         elseif ($data[0] == "Auditing support") { 
            $fact="Auditing support";
        } 
         elseif ($data[0] == "Reconciliations") { 
            $fact="Reconciliations";
        } 
         elseif ($data[0] == "Payables") { 
            $fact="Payables";
        } 
         elseif ($data[0] == "Recivables") { 
            $fact="Recivables";
        } 


        $result =mysqli_query($connect,"SELECT COUNT(*) as COUNT FROM `test` WHERE Name='".$data[0]."' and Factor='".$fact."'");
        $my_id_array=mysqli_fetch_assoc($result);
        $count=(int)$my_id_array['COUNT'];

        if ($count == 0) {

        mysqli_query($connect,"INSERT INTO test (Factor,Name,rating50,Jul_target,Jul_acheived,Aug_target,Aug_acheived,Sep_target,Sep_acheived,Q2_cumulative_target,Q2_cumulative_acheived,Oct_target,Oct_acheived,Nov_target,Nov_acheived,Dec_target,Dec_acheived,Q3_cumulative_target,Q3_cumulative_acheived,Jan_target,Jan_acheived,Feb_target,Feb_acheived,Mar_target,Mar_acheived,Q4_cumulative_target,Q4_cumulative_acheived,Apr_target,Apr_acheived,May_target,May_acheived,Jun_target,Jun_acheived,Q1_cumulative_target,Q1_cumulative_acheived) VALUES 
                ( 
                    '".addslashes($fact)."',
                    '".addslashes($data[0])."',
                    '".addslashes($data[9])."',
                    '".addslashes($data[9])."', 
                    '".addslashes($data[10])."', 
                    '".addslashes($data[11])."',
                    '".addslashes($data[12])."',
                    '".addslashes($data[13])."',
                    '".addslashes($data[14])."',
                    '".addslashes($data[15])."',
                    '".addslashes($data[16])."',
                    '".addslashes($data[17])."',
                    '".addslashes($data[18])."',
                    '".addslashes($data[19])."',
                    '".addslashes($data[20])."',
                    '".addslashes($data[21])."',
                    '".addslashes($data[22])."',
                    '".addslashes($data[23])."',
                    '".addslashes($data[24])."',
                    '".addslashes($data[25])."',
                    '".addslashes($data[26])."',
                    '".addslashes($data[27])."',
                    '".addslashes($data[28])."',
                    '".addslashes($data[29])."',
                    '".addslashes($data[30])."',
                    '".addslashes($data[31])."',
                    '".addslashes($data[32])."',
                    '".addslashes($data[1])."',
                    '".addslashes($data[2])."',
                    '".addslashes($data[3])."',
                    '".addslashes($data[4])."',
                    '".addslashes($data[5])."',
                    '".addslashes($data[6])."',
                    '".addslashes($data[7])."',
                    '".addslashes($data[8])."') 
            "); 
     
               }
        else{

            mysqli_query($connect,"UPDATE test SET Apr_target='10',
                Apr_acheived='10',
                May_target='10',
                May_acheived='10',
                Jun_target='10',
                Jun_acheived='10',
                Q1_cumulative_target='10',
                Q1_cumulative_acheived='10',
                Jul_target='30',
                Jul_acheived='30',
                Aug_target='30',
                Aug_acheived='30',
                Sep_target='30',
                Sep_acheived='30',
                Q2_cumulative_target='30',
                Q2_cumulative_acheived='30',
                Oct_target='10',
                Oct_acheived='10',
                Nov_target='10',
                Nov_acheived='10',
                Dec_target='10',
                Dec_acheived='10',
                Q3_cumulative_target='10',
                Q3_cumulative_acheived='10',
                Jan_target='10',
                Jan_acheived='10',
                Feb_target='10',
                Feb_acheived='10',
                Mar_target='10',
                Mar_acheived='10',
                Q4_cumulative_target='10',
                Q4_cumulative_acheived='10'  WHERE Name='$data[0]' AND Factor='$fact'");
        }  
        
        
           

      
    } 
    // 

    //redirect 
    header('Location: import_data.php?success=1'); die; 

} 

?> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<title>Import a CSV File with PHP & MySQL</title> 
</head> 

<body> 

<?php if (!empty($_GET['success'])) { echo "<b>Your file has been imported.</b><br><br>"; } //generic success notice ?> 

<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1"> 
  Choose your file: <br /> 
  <input name="csv" type="file" id="csv" /> 
  <input type="submit" name="Submit" value="Submit" /> 
</form> 

</body> 
</html> 
