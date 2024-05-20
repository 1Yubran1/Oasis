<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Postre $model */

$this->title = 'Update Postre: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Postres', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="postre-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
