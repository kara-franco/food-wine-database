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
       <form>
          
            <fieldset>
            <legend class="topLabel"> Perfect Match: A food and wine pairing application     </legend>
            <br>
           
                <label for="wineInput">Find food suggestions for your wine:</label>
                    <input type="text" name="wineInput" id="wineInput">
                <br>
                   <label for="foodFilter">Select your wine:</label>
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