<?php
session_start();
if (!isset($_SESSION['login_type']) || $_SESSION['login_type'] != 1) {
    header("Location: ../login.php");
    exit;
}
?>
