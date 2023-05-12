<?php
include 'entete.php';

if(!empty($_GET['id'])){
    $todos=getTodo($_GET['id']);
}

?>

<div class="home-content">
    <div class="overview-boxes">
        <div class="box">
            <!-- Formulaire de modification de la tâche avec une méthode POST -->
            <form action="../Admin/modifTache.php" method="post">
                <label for="title">Titre</label>
                <!-- Champ pour saisir le titre, avec une valeur par défaut si l'ID est présent dans l'URL -->
                <input value="<?= !empty($_GET['id'])? $todos['title']:""?>" type="text" name="title" id="title" placeholder="Veuillez saisir le titre">
                <!-- Champ caché pour l'ID de la tâche à modifier -->
                <input value="<?= !empty($_GET['id'])? $todos['id']:""?>" type="hidden" name="id" id="id">
                <label for="description">Description</label>
                <!-- Champ pour saisir la description, avec une valeur par défaut si l'ID est présent dans l'URL -->
                <textarea value="<?= !empty($_GET['id'])? $todos['description']:""?>" type="text" name="description" id="description" placeholder="Veuillez saisir la description"></textarea>
                
                <?php
                // Récupérer la date et l'heure actuelles de l'ordinateur
                $date = date('Y-m-d\TH:i:s');

                // Utiliser la date et l'heure actuelles comme valeur par défaut pour le champ de formulaire, sauf si un ID est présent dans l'URL, auquel cas on utilise la date de création de la tâche
                $default_date = !empty($_GET['id']) ? $todos['creationDate'] : $date;
                ?>
                <label for="creationDate">Date de création</label>
                <!-- Champ pour saisir la date de création de la tâche, avec une valeur par défaut calculée ci-dessus -->
                <input value="<?= $default_date ?>" type="datetime-local" name="creationDate" id="creationDate" <?php if (!empty($_GET['id']) || isset($_POST['submit'])) { echo 'disabled'; } ?>>
                <label for="date_echeance">Date d'échéance</label>
                <!-- Champ pour saisir la date d'échéance de la tâche, avec une valeur par défaut si l'ID est présent dans l'URL -->
                <input value="<?= !empty($_GET['id'])? $todos['dueDate']:""?>" type="datetime-local" name="dueDate" id="dueDate">
                <label for="statusPk">Statut</label>
                <!-- Sélecteur pour le statut de la tâche, avec une valeur par défaut si l'ID est présent dans l'URL -->
                <select name="statusPk" id="statusPk">
                    <option <?= !empty($_GET['id']) && $todos['statusPk']=="En attente" ? "selected" :""?> value ="En attente">En attente</option>
                    <option <?= !empty($_GET['id']) && $todos['statusPk']=="En cours" ? "selected" :""?> value ="En cours">En cours</option>
                    <option <?= !empty($_GET['id']) && $todos['statusPk']=="Terminé" ? "selected":""?> value ="Terminé">Terminé</option>

     </select>
<button type="submit">Valider </button>
<input  type="button"  value="Voir les taches Enregistrées " onclick="window.location.href='enregistré.php'" >

<div class="alert 
<?=$_SESSION['message']['type'] ?>">
<?= $_SESSION['message']['text'] ?>

<script>
    setTimeout(function() {
        document.querySelector(".alert").style.display = "none";
    }, 500);
  
</script>

</div>
<?php
if (!empty($_SESSION['message']['text'])) {
?>
    

<?php
}
?>
        </form>
   
    </div>
    <div class="box">
<table class="mtable">
    <tr>
        <th>Titre</th>
     
        <th>Action</th>
        
</tr>
<?php
$taches= getTodo();
if (!empty($taches) && is_array($taches)) {
foreach ($taches as $key=> $value){
?>
<tr >
    <td><?=$value['title'] ?></td>

    <td><a href="afficherTache.php?id=<?= $value['id'] ?>"><i class='bx bx-glasses'></i></a>
<a href="?id=<?= $value['id'] ?>"><i class='bx bx-edit-alt'></i> </a> <a onclick="suppTache(<?= $value['id'] ?>)" style="color:red;">
<i class='bx bx-trash'></i>
</a>
</td>
    
</tr>



    <?php
}

}

?>
</div>

</div>
</div>

</div>

    </section>

    <?php

include 'pied.php';
?>
<script>
  function suppTache(id) {
    if (confirm("Voulez-vous vraiment supprimer cette tâche ?")) {
        // créer un objet XMLHttpRequest
        var xhr = new XMLHttpRequest();
        
        // définir la fonction de rappel à exécuter lorsque la réponse est reçue
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    // la suppression a réussi
                    alert("La tâche a été supprimée avec succès !");
                    // recharger la page pour afficher les changements
                    window.location.reload();
                } else {
                    // la suppression a échoué
                    alert("La suppression de la tâche a échoué. Veuillez réessayer plus tard."+id);
                }
            }
        };
        
        // préparer la requête HTTP DELETE pour supprimer la tâche avec l'ID donné
        xhr.open("DELETE", "../Admin/suppTache.php?id=" + encodeURIComponent(id), true);
        
        // envoyer la requête HTTP DELETE
        xhr.send();
    }
}


    </script>

<script>
// Récupérer la zone de texte de description
const descriptionTextarea = document.getElementById('description');

// Ajouter un écouteur d'événements pour détecter les changements de texte
descriptionTextarea.addEventListener('input', function () {
  // Récupérer la longueur de la chaîne de caractères
  const length = descriptionTextarea.value.length;

  // Ajuster la taille de la zone de texte en fonction de la longueur
  if (length < 50) {
    descriptionTextarea.rows = 4;
  } else if (length < 100) {
    descriptionTextarea.rows = 6;
  } else if (length < 150) {
    descriptionTextarea.rows = 8;
  } else {
    descriptionTextarea.rows = 10;
  }
});
</script>