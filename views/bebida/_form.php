<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\TBebida;
use kartik\file\FileInput; // Importa la clase FileInput de Kartik

/** @var yii\web\View $this */
/** @var app\models\Bebida $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="bebida-form">

    <?php $form = ActiveForm::begin(); ?> <!-- Asegura que el formulario tenga enctype para la carga de archivos -->


    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'descripcion')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'precio')->textInput() ?>

    <!-- Reemplaza el campo de texto por el widget FileInput -->
    <?= $form->field($model, 'file')->widget(FileInput::className(), ['options' => ['accept' => 'file/*'],]) ?>

    <?= $form->field($model, 'fkTipo')->widget(\kartik\select2\Select2::classname(), [
    'data' => \yii\helpers\ArrayHelper::map(Tbebida::find()->all(), 'id', 'tipo'),
    'options' => ['placeholder' => 'Selecciona el tipo de bebida...'],
    'pluginOptions' => [
        'allowClear' => true
    ],
    ]); ?>


    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-primary', 'style' => 'background-color: #ce1212; border-color: #ce1212;']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

