<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Bonele $model */

$this->title = 'Update Bonele: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Boneles', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="bonele-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
