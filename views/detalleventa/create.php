<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Detalleventa $model */

$this->title = 'Create Detalleventa';
$this->params['breadcrumbs'][] = ['label' => 'Detalleventas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="detalleventa-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
