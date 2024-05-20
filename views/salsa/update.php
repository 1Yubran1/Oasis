<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Salsa $model */

$this->title = 'Update Salsa: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Salsas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="salsa-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
