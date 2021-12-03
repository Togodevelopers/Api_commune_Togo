<?php

$rootDir = dirname(dirname(__FILE__));

require $rootDir . '/vendor/autoload.php';
include 'database/mysql_db.php';
include 'utils/utils.php';

$dotenv = Dotenv\Dotenv::createImmutable($rootDir);
$dotenv->load();

$dsn    = $_ENV['DB_HOST'];
$dbUser = $_ENV['DB_USER'];
$dbPass = $_ENV['DB_PASS'];
$dbName = $_ENV['DB_NAME'];

$database = new MysqlDB($dsn, $dbUser, $dbPass, $dbName);

/*
|----------------------------------------------
| Liste des communes avec leurs quartiers
|----------------------------------------------
*/
$municipalities = []; //Communes
$streets = []; //Quartiers

$municipalityStreetArray = [];

$query = "SELECT * FROM communes";

$database->query($query);
$municipalities = Utils::removeAttribute($database->resultset(), 'prefecture_id');
$municipalities = Utils::dataTypeConversion($municipalities);

foreach ($municipalities as $municipality) {
    // Fetching all streets based on municipality
    $query = "SELECT * FROM quartiers WHERE commune_id={$municipality['id']}";
    $database->query($query);
    $streets = $database->resultset();
    
    $municipality['quartiers'] = Utils::removeAttribute($streets, 'commune_id');

    $municipalityStreetArray[] = $municipality;
}

$baseDir = dirname(__DIR__, 2);//go up two level

$exportTo = $baseDir . '/communes+quartiers.json';
$fp = fopen($exportTo, 'w'); // Putting Array to JSON
fwrite($fp, json_encode($municipalityStreetArray, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT).PHP_EOL);
echo 'JSON Exported to ' .$exportTo . PHP_EOL;
fclose($fp);


/*
|--------------------------------------------------------------
| Liste des regions avec leurs villes, préfectures et communes
|--------------------------------------------------------------
*/
$regions = [];
$regionCityPrefectureArray = [];
$prefectureCommunesArray = [];

$query = "SELECT * FROM regions";

$database->query($query);
$regions = Utils::dataTypeConversion($database->resultset());

foreach ($regions as $region) {
    // Fetching all cities based on region
    $query = "SELECT * FROM villes WHERE region_id={$region['id']}";
    $database->query($query);
    $villes = $database->resultset();
    
    $region['villes'] = Utils::removeAttribute($villes, 'region_id');
    $region['villes'] = Utils::dataTypeConversion($region['villes']);


    // Fetching all prefectures based on region
    $query = "SELECT * FROM prefectures WHERE region_id={$region['id']}";
    $database->query($query);
    $prefectures = $database->resultset();

    foreach ($prefectures as $prefecture) {
        $query = "SELECT * FROM communes WHERE prefecture_id={$prefecture['id']}";
        $database->query($query);
        $communes = $database->resultset();

        $prefecture['communes'] = Utils::removeAttribute($communes, 'prefecture_id');
        $prefecture['communes'] = Utils::dataTypeConversion($prefecture['communes']);

        $prefectureCommunesArray[] = $prefecture;
    }

    
    $region['prefectures'] = Utils::removeAttribute($prefectureCommunesArray, 'region_id');
    $region['prefectures'] = Utils::dataTypeConversion($prefectureCommunesArray);

    $regionCityPrefectureArray[] = $region;
}

$exportTo = $baseDir . '/regions+villes+prefectures+communes.json';
$fp = fopen($exportTo, 'w'); // Putting Array to JSON
fwrite($fp, json_encode($regionCityPrefectureArray, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT).PHP_EOL);
echo 'JSON Exported to ' .$exportTo . PHP_EOL;
fclose($fp);


/*
|---------------------------------------------------
| Liste des prefectures avec leurs cantons
|---------------------------------------------------
*/
$prefectures = [];
$prefectureCantonArray = [];

$query = "SELECT * FROM prefectures";
$database->query($query);

$prefectures = Utils::removeAttribute($database->resultset(), 'region_id');
$prefectures = Utils::dataTypeConversion($prefectures);

foreach ($prefectures as $prefecture) {
    $query = "SELECT * FROM cantons WHERE prefecture_id={$prefecture['id']}";
    $database->query($query);
    $cantons = $database->resultset();

    $prefecture['cantons'] = Utils::removeAttribute($cantons, 'prefecture_id');
    $prefecture['cantons'] = Utils::dataTypeConversion($prefecture['cantons']);
    
    $prefectureCantonArray[] = $prefecture;
}



$exportTo = $baseDir . '/prefectures+cantons.json';
$fp = fopen($exportTo, 'w'); // Putting Array to JSON
fwrite($fp, json_encode($prefectureCantonArray, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT).PHP_EOL);
echo 'JSON Exported to ' .$exportTo . PHP_EOL;
fclose($fp);
