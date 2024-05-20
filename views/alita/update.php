<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Alita $model */

$this->title = 'Update Alita: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Alitas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="alita-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
