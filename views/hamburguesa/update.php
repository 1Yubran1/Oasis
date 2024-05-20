<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Hamburguesa $model */

$this->title = 'Update Hamburguesa: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Hamburguesas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="hamburguesa-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
