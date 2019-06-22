<?php 

session_start();

$hostname = 'localhost';
$username = 'root';
$password = '';
$db = 'quanlycuusv';

$connection = new mysqli($hostname, $username, $password, $db);
mysqli_set_charset($connection, 'UTF8');
if($connection -> connect_error) {
    exit('Kết nối CSDL không thành công. Lỗi: ' . $connection -> connect_error);
}
    $_SESSION['MaSV'] = $_SESSION['name_account'];

?>
