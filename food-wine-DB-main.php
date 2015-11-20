<?php
//Turn on error reporting
ini_set('display_errors', 'On');
//Connects to the database
$mysqli = new mysqli("oniddb.cws.oregonstate.edu","lallyk-db","2eAZ1GEvgLgqcnDe","lallyk-db");
if($mysqli->connect_errno){
	echo "Connection error " . $mysqli->connect_errno . " " . $mysqli->connect_error;
	}
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <!-- link to style sheet -->
    <link rel="stylesheet" href="foodWineDB.css" type="text/css">
 
    <script></script>  
   </head>
  <body>
     
   <!-- ------------------------------------ this starts the form ---------------------------->   
      <form>
          
            <fieldset>
            <legend class="topLabel"> Perfect Match: A food and wine pairing application     </legend>
            <br>
<!-- ------------------------------------ this starts the testing table ---------------------------->       
                
                <div>
	       <table>
		   <tr>
			   <td>Food</td>
		   </tr>
		       <tr>
			       <td>Category</td>
			       <td>Name</td>
			
		  </tr>
 <!-- ------------------------------------ php for populating the testing table ---------------------------->           
<?php

if(!($stmt = $mysqli->prepare("SELECT food_category, name FROM food "))){
	echo "Prepare failed: "  . $stmt->errno . " " . $stmt->error;
}

if(!$stmt->execute()){
	echo "Execute failed: "  . $mysqli->connect_errno . " " . $mysqli->connect_error;
}
if(!$stmt->bind_result($category, $name)){
	echo "Bind failed: "  . $mysqli->connect_errno . " " . $mysqli->connect_error;
}
while($stmt->fetch()){
 echo "<tr>\n<td>\n" . $category . "\n</td>\n<td>\n" .  $name . "\n</td>\n</tr>";
}
$stmt->close();
?>
	</table>
</div>
                
  <!-- ------------------------------------ this starts the section for food search  ---------------------------->                     
                
                             
     <label for="wineInput">Find food suggestions for your wine:</label>
                    
        <br>
               
                
   <!-- -------------------------------- php for populating select drop down menu ---------------------------->               
    <fieldset>
			<legend>Current Wine List: </legend>
			<select name="wines">
<?php
if(!($stmt = $mysqli->prepare("SELECT id, wine.name FROM wine"))){
	echo "Prepare failed: "  . $stmt->errno . " " . $stmt->error;
}

if(!$stmt->execute()){
	echo "Execute failed: "  . $mysqli->connect_errno . " " . $mysqli->connect_error;
}
if(!$stmt->bind_result($id, $name)){
	echo "Bind failed: "  . $mysqli->connect_errno . " " . $mysqli->connect_error;
}
while($stmt->fetch()){
	echo '<option value=" '. $id . ' "> ' . $name . '</option>\n';
}
$stmt->close();
?>
			</select>
		</fieldset>
                
                
    <!-- ------------------------------------ this ends the php update!!  ---------------------------->       
                    <br>
                <br>
                
                   <label for="foodFilter">Filter my menu:</label>
                <br>
                   <select name="foodChoices" size="4" multiple >   
                   <option selected> Cheese
                   <option> Dessert
                   <option> Herbs & Spices
                   <option> Meat
                  <option> Vegetable
                  <option> Starch
                   </select>
                    <br>
                   <input type="submit" id="searchSubmit">
                  <br>
                  <br>
                   <label for="foodInput">Find wine suggestions for your menu:</label>
                    <input type="text" name="foodInput" id="foodInput">
                       <br>
                <label for="wineFilter">Filter my wine type:</label>
                    <br>
                    <select name="wineChoices" size="4" multiple >   
                   <option selected> Bold Red
                   <option> Medium Red
                   <option> Light Red
                   <option> Rose
                  <option> Rich White
                  <option> Light White
                <option> Sparkling
                    <option> Sweet White
                    <option> Dessert
                   </select>
                    <br>
                 
                    
                    <input type="submit" id="searchSubmit">
                    <br>
             
            </fieldset>
        </form>      
  </body>
</html>