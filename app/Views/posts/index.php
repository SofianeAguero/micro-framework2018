<div class="row">
    <div class="col-sm-8">
        <?php foreach ($posts as $post): ?>

            <h2><?= $post->titre; ?></h2>

            <p class="extrait"><?= $post->extrait; ?></p>

        <?php endforeach; ?>
    </div>
</div>