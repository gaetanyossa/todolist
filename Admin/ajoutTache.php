

<?php
require_once 'connexion.php';

if(isset($_POST['title'], $_POST['description'], $_POST['creationDate'], $_POST['dueDate'], $_POST['statusPk'])){

    $sql = "INSERT INTO {$nom_base_de_donnee}.todolist (title, description, creationDate, dueDate, statusPk) 
    VALUES (:title, :description, :creationDate, :dueDate, :statusPk)";
    $req = $connexion->prepare($sql);
    $req->bindParam(':title', $_POST['title']);
    $req->bindParam(':description', $_POST['description']);
    $req->bindParam(':creationDate', $_POST['creationDate']);
    $req->bindParam(':dueDate', $_POST['dueDate']);
    $req->bindParam(':statusPk', $_POST['statusPk']);
    $req->execute();

    if($req->rowCount() != 0){
        $_SESSION['message'] = ['text' => 'Todo ajoutée avec succès', 'type' => 'success'];
    }else{
        $_SESSION['message'] = ['text' => "Une erreur s'est produite lors de l'ajout de la todo", 'type' => 'danger'];
    }

}else{
 
}

header('Location: ../vue/index.php');
exit();