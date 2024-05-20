<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Snacks $model */

$this->title = 'Update Snacks: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Snacks', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="snacks-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
