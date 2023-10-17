<?php 

function shortestWordlength($str) {
    $words = explode(" ", $str);
    echo "$str";
    echo '<br>';
    echo '<br>';
$strlength = strlen($str);
    foreach ($words as $word) {
        $wordlength = strlen($word);
        if($wordlength < $strlength) {
            $strlength = $wordlength;
        }
    }
    return $strlength;
}

$input1 = "TRUE FRIENDS ARE ME AND YOU";
$output1 = shortestWordlength($input1);
echo "TEST CASE 1: $input1";
echo '<br>';
echo '<br>';
echo "OUTPUT: $output1";
echo '<br>';
echo '<br>';
$input2 = "I AM THE LEGENDARY VILLAIN";
$output2 = shortestWordlength($input2);
echo "TEST CASE 2: $input2";
echo '<br>';
echo '<br>';
echo "OUTPUT: $output2";

?>