<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Alita $model */

$this->title = 'Create Alita';
$this->params['breadcrumbs'][] = ['label' => 'Alitas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="alita-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
