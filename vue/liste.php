<?php
include 'entete.php';
if(!empty($_GET['id'])){
    $todos=getTodo($_GET['id']);
}

?>

<div class="home-content">
    <div class="overview-boxes ">
        <div class="box">
            <table class="mtable">
                <tr>
                    <th>Titre</th>
                    <th>Description</th>
                    <th>Date de création</th>
                    <th>Date d'échéance</th>
                    <th>Statut</th>
                </tr>

                <?php
                $taches = getTodo();
                if (!empty($taches) && is_array($taches)) {
                    foreach ($taches as $key => $value) {
                        ?>
                        <tr>
                            <td><?= $value['title'] ?></td>
                            <td class="description-col">
                                <textarea name="description" disabled rows="4" cols="<?=$adjusted_length?>"><?=$value['description'] ?></textarea>
                            </td>
                            <td><?= $value['creationDate'] ?></td>
                            <td><?= $value['dueDate'] ?></td>
                            <td><?= $value['statusPk'] ?></td>
                        </tr>
                        <?php
                    }
                }
                ?>
            </table>
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
