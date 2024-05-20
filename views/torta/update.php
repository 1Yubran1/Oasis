<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Torta $model */

$this->title = 'Update Torta: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Tortas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="torta-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
