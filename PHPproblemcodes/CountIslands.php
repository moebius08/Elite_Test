<?php 

function IslandCount($matrix) {
    $rowCount = count($matrix);
    $columnCount = count($matrix[0]);

    $outputMatrix = [];
    
    for ($row = 0; $row < $rowCount; $row++ ) {
        for($col = 0; $col < $columnCount; $col++ ) {
            if($matrix[$row][$col] == 1) {
                $outputMatrix[$row][$col] = "*";  
            }else{
                $outputMatrix[$row][$col] = "~";  
            }
        }
    }
    return $outputMatrix;
    
}

$input1 = [
    [	1,1,1,1 ],
    [	0,1,1,0	],
    [	0,1,0,1	],
    [	1,1,0,0	]
    ];
$output1 = IslandCount($input1);

echo "TEST CASE 1: Input Matrix<br>";
echo '<pre>';
foreach ($input1 as $row) {
    echo implode(' ', $row) . "<br>";
}
echo '</pre>';
echo '<br>';
echo "OUTPUT: ";
echo '<br>';
echo '<br>';
foreach ($output1 as $row) {
    echo implode(' ', $row) . "<br>";
}
echo '<br>';
echo '<br>';