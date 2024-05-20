<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Tbebida $model */

$this->title = 'Create Tbebida';
$this->params['breadcrumbs'][] = ['label' => 'Tbebidas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tbebida-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
