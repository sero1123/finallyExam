<?
include_once "productClass.php";
$products = $product->getProducts(3);
$result = '';
foreach ($products as $key => $value){
    $id = $value['ID'];
    $result .= "<tr class='strTable' id = '$id'>";
    foreach($value as $keyResult => $valueResult){
        if ($keyResult == 'PRODUCT_QUANTITY'){
            $result .= "<td class='$keyResult'><p>" . $valueResult . "</p></td>";
        }
        else if ($keyResult == "VISIBILITY"){
            continue;
        }else{
            $result .= "<td class='$keyResult'>" . $valueResult . "</td>";
        }
    }
    $result .= "</tr>" . "<br>";
}

header('Content-Type: HTML');
echo $result;

