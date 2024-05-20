<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;

/** @var yii\web\View $this */
/** @var app\models\Alita $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="alita-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id')->textInput() ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'descripcion')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'precio')->textInput() ?>

   <!-- Reemplaza el campo de texto por el widget FileInput -->
   <?= $form->field($model, 'file')->widget(FileInput::className(), ['options' => ['accept' => 'file/*'],]) ?>

    <?= $form->field($model, 'fkSalsa')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
