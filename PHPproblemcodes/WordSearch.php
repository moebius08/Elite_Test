<?php 

function WordSearch($array, $target) {
    $indexes = []; 

    foreach ($array as $index => $word) {
        if($target === $word) {
            $indexes[] = $index;
        }
    }
    return $indexes;
}

$input1 =  ["I", "TWO", "FORTY", "THREE", "JEN", "TWO", "tWo", "Two"];
$target = "TWO";

$output1 = WordSearch($input1, $target);

echo "TEST CASE 1: Input Matrix<br>";
echo '<br>';
foreach($input1 as $word) {
    echo "$word" . " ";
}

echo '<br>';
echo '<br>';
echo "OUTPUT: ";
echo "INDEXES:   ";
foreach($output1 as $index) {
    echo "$index". ",";
};
echo '<br>';
echo '<br>';
print_r($output1);
echo '<br>';
echo '<br>';
echo '<br>';
echo '<br>';