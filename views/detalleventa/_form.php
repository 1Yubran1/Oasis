<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\Detalleventa $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="detalleventa-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'fkVenta')->textInput() ?>

    <?= $form->field($model, 'fkProducto')->textInput() ?>

    <?= $form->field($model, 'cantidad')->textInput() ?>

    <?= $form->field($model, 'subtotal')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
