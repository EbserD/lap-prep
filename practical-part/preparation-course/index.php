<!DOCTYPE html>
<html>

<head>
    <title>LAP-Preparation</title>
</head>

<body>
    <h1>LAP-Preparation</h1>

    <form action="index.php" method="post">
        <label for="brand"></label>
        <select name="brand" id="brand">
            <option value="1">Volkswagen</option>
            <option value="2">Audi</option>
            <option value="3">Seat</option>
        </select>

        <input type="submit" value="search">
    </form>

    <?php
    if (!empty($_POST['brand'])) {
        run();
    }

    function run()
    {
        $conn = connectDB();
        $models = fetchModels($conn);
        displayModels($conn, $models);
        $conn->close();
    }

    function connectDB()
    {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "lap_prep";
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        return $conn;
    }

    function displayModels($conn, $result)
    {
        if ($result->num_rows > 0) {
            echo '<h2>Result</h2>';
            echo '<table border="1" cellspacing="0" cellpadding="3">';
            echo '<tr><td>Brand</td><td>Model</td><td>Price</td></tr>';
            while ($row = $result->fetch_assoc()) {
                echo '<tr>';
                echo '<td>xx</td>';
                echo '<td>'. $row["name_model"]. '</td>';
                echo '<td>'. number_format($row["price_model"],2,',','.'). '</td>';
                echo '<td>'. fetchDetails($conn, $row["id_model"]). '</td>';
                echo '</tr>';
            }
            echo '</table>';
        } else {
            echo "We are sorry, we couldn't find any results";
        }
    }

    function fetchModels($conn)
    {
        $fiterBrand = $_POST["brand"];
        $sql = "SELECT id_model, name_model, price_model FROM models WHERE brands_id_brand=$fiterBrand;";
        return $conn->query($sql);
    }

    function fetchDetails($conn, $model) {
        $sql = "SELECT prop_name, unit_prop, value_models_propscol FROM props
        INNER JOIN models_props ON props.id_prop=models_props.props_id_prop
        WHERE models_id_model=$model;";
        $result = $conn->query($sql);
        $props = "";
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $props .= $row["prop_name"]. ':'. $row["value_models_propscol"]. ' '. $row["unit_prop"]. '<br>';
            }
        }
        else {
            $props = 'No properties found!';
        }
        return $props;
    }
    ?>
</body>

</html>