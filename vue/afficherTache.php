<?php
include 'entete.php';

if(!empty($_GET['id'])){
    $todos=getTodo($_GET['id']);
}
?>


<div class="home-content">
    <div class="overview-boxes">
        <div class="box">
            <form >
                <label for="title"><strong>Titre:</strong></label>
                <input type="text" id="title" name="title"disabled value="<?= $todos['title'] ?>"><br>

                <label for="description"><strong>Description:</strong></label>
                <textarea id="description" name="description"disabled><?= $todos['description'] ?></textarea><br>
 

                <label for="creationDate"><strong>Date de création:</strong></label>
                <input type="text" id="creationDate" name="creationDate" disabled value="<?= $todos['creationDate'] ?>"><br>

                <label for="dueDate"><strong>Date d'échéance:</strong></label>
                <input type="text" id="dueDate" name="dueDate" disabled value="<?= $todos['dueDate'] ?>"><br>

                <label for="statusPk"><strong>Statut:</strong></label>
                <input type="text" id="statusPk" name="statusPk" disabled value="<?= $todos['statusPk'] ?>"><br>

                <input  type="button"  value="Retour à la des taches " onclick="window.location.href='liste.php'" >


                <input  type="button"  value="Creer une nouvelle tache " onclick="window.location.href='index.php'" >
            </form>
        </div>
    </div>
</div>


<?php
include 'pied.php';
?>
<script>
   const descriptionTextareas = document.querySelectorAll('textarea[name="description"]');

descriptionTextareas.forEach((textarea) => {
  textarea.addEventListener('input', function () {
    const length = textarea.value.length;
    const adjustedCols = Math.ceil(length / textarea.rows);
    textarea.cols = adjustedCols;
  });
});

</script>
