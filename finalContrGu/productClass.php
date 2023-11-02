<?
$base = new mysqli("localhost", "root", "", "exam1");
echo $base->ping();

class CProducts{
    private $base;

    public function __construct(mysqli & $dataBase){
        $this->base = $dataBase;
        $this->base->query("CREATE TABLE IF NOT EXISTS Products (ID INT PRIMARY KEY, PRODUCT_ID INT, PRODUCT_NAME TEXT, PRODUCT_PRICE INT,
                            PRODUCT_ARTICLE TEXT, PRODUCT_QUANTITY TEXT, DATA_CREATE datetime, VISIBILITY TEXT)");
    }

    public function getProducts($numberOfTitles){
        $arrResult = $this->base->query("SELECT * FROM Products WHERE VISIBILITY = 'true' ORDER BY DATA_CREATE DESC LIMIT $numberOfTitles ")->fetch_all(MYSQLI_ASSOC);
        return $arrResult;
    }

    public function hide($id){
        $this->base->query("UPDATE `products` SET `VISIBILITY`='false' WHERE ID = '$id'");
    }

    public function qualityChanges($id, $quality){
        $this->base->query("UPDATE products SET PRODUCT_QUANTITY = PRODUCT_QUANTITY + '$quality' WHERE ID = '$id'");
    }
}


$product = new CProducts($base);


