<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\DetalleventaSearch $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="detalleventa-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'fkVenta') ?>

    <?= $form->field($model, 'fkProducto') ?>

    <?= $form->field($model, 'cantidad') ?>

    <?= $form->field($model, 'subtotal') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
