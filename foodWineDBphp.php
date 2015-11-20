<?php
error_reporting(E_ALL);
$mysqli = new mysqli("oniddb.cws.oregonstate.edu","lallyk-db","2eAZ1GEvgLgqcnDe","lallyk-db")
if($mysqli->connect_errno){
	echo "Connection error" . $mysqli->connect_errno . " " . $mysqli->connect_error;
	}
	echo "THIS WORKS";
?>


<!DOCTYPE html>

<html>
  <head>
    <meta charset="utf-8">
    <!-- link to style sheet -->
    <link rel="stylesheet" href="foodWineDB.css" type="text/css">
 
    <script></script>  
   </head>
  <body>
       <form>
          
            <fieldset>
            <legend class="topLabel"> Perfect Match: A food and wine pairing application     </legend>
            <br>
           
                <label for="wineInput"><h2>Find food suggestions for your wine:</h2></label>
                <!-- Collapse boarder and padding -->
                <br>
                   <label for="foodFilter">Select your wine:</label>
                   <br>
                   <select name="wineChoices" size="4" multiple >   
                       <option selected> Mourvédre
                       <option> Pinotage
                       <option> Petite Sirah
                       <option> Touriga Nacional
                       <option> Cabernet Sauvignon
                       <option> Meritage
                       <option> Sangiovese
                       <option> Zinfandel
                       <option> Cabernet Franc
                       <option> Tempranillo
                       <option> Nebbiolo
                       <option> Barbera
                       <option> Mourvédre
                       <option> Grenache
                       <option> Gamay
                       <option> St. Laurent
                       <option> Carignan
                       <option> Counoise
                       <option> Provencal Rose
                       <option> Shiraz
                       <option> Malbec
                       <option> Merlot
                       <option> Pinot Noir   
                       <option> White Zinfandel
                       <option> Sémillon
                       <option> Viognier
                       <option> Marsanne
                       <option> Roussanne
                       <option> Sauvignon Blanc
                       <option> Albariño
                       <option> Pinot Blanc
                       <option> Vermentino
                       <option> Melon De Bourgogne
                       <option> Gargenega
                       <option> Trebbiano
                       <option> Champagne
                       <option> Prosecco
                       <option> Crémant
                       <option> Lomardia wine
                       <option> Riesling    
                       <option> Chenin Blanc
                       <option> Gewürztraminer
                       <option> Ice Wine
                       <option> Chardonnay    
                       <option> Moscato
                       <option> Port
                       <option> Sherry    
                   </select>
				   <?php
						if(!($stmt = $mysqli->prepare("SELECT food_category Category, food.name Name
						FROM food 
						INNER JOIN pair ON food.id=pair.food_id
						INNER JOIN wine ON wine.id=pair.wine_id
						WHERE wine.wine_type = 'Bold Red' 
						ORDER BY food_category ASC;"))){
							echo "Prepare failed line 83 php.php" . $stmt->errno . " " . $stmt->error;
						}
						STM->bind_result($foods);
						while ($stmt->fetch()){
							echo "<tr>\n<td>".$foods . "\n</td>";
						}
				   
				   ?>
                    <br>
                    <!-- Collapse boarder and padding -->
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
                    <label for="foodInput"><h2>Find wine suggestions for your food item:</h2></label>
                    <!-- Collapse boarder and padding -->
                    <p>Select a food item that you would like to pair a wine too: </p>
                    <select name="foodChoices" size="4" multiple >   
                       <option selected> Cheese
                       <option> Dessert
                       <option> Herbs & Spices
                       <option> Meat
                       <option> Vegetable
                       <option> Starch
                    </select>
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
