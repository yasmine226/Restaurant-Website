<?php
class config1
{
  private static $instance = NULL;

  public static function getConnexion()
  {
    if (!isset(self::$instance)) {

      try {
        self::$instance = new PDO('mysql:host=localhost;dbname=bosstacos', 'root', '');
        self::$instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      } catch (Exception $c) {
        die('Erreur: ' . $c->getMessage());
      }
    }
    return self::$instance;
  }
}
