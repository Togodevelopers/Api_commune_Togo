<?php

class MysqlDB
{
    private $host;
    private $dbname;
    private $user;
    private $pass;
    private $conn;

    private $statement;
    
    /**
     * Initialize the PDO connection. Set the handler as
     * the new instance to be used throughout each additional
     * function.
     */
    function __construct($host, $dbUser, $dbPass, $dbName)
    {
        $this->host = $host;
        $this->user = $dbUser;
        $this->pass = $dbPass;
        $this->dbname = $dbName;
        $this->connect();
    }

    function connect()
    {
        $dsn = "mysql:host=$this->host;dbname=$this->dbname";

        $options = [
            PDO::ATTR_PERSISTENT => true,
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        ];

        try {
            $this->conn = new PDO($dsn, $this->user, $this->pass, $options);

            return $this->conn;
        } catch (PDOException $e) {
            echo "error" . $e->getMessage();
        }
    }


    /**
     * Prepare a statement.
     */
    public function query($query)
    {
        $this->statement = $this->conn->prepare($query);
    }
    
    /**
     * Execute a prepared statement.
     */
    public function execute()
    {
        try {
            return $this->statement->execute();
        } catch (PDOException $e) {
            echo "error" . $e->getMessage();
        }
    }

    /**
     * Fetch a single row as a result of a query.
     */
    public function result()
    {
        $this->execute();

        return $this->statement->fetch(PDO::FETCH_ASSOC);
    }

    /**
     * Fetch a set of rows as a result of a query.
     */
    public function resultset()
    {
        $this->execute();

        return $this->statement->fetchAll(PDO::FETCH_ASSOC);
    }

    //To close connection later
    function disconnect()
    {
        $this->conn = NULL;
        return $this->conn;
    }
}
