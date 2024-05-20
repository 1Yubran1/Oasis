<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\datetime\DateTimePicker;

/** @var yii\web\View $this */
/** @var app\models\Venta $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="venta-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id')->textInput() ?>

    <?= $form->field($model, 'fkUsuario')->textInput() ?>

    <!-- Utiliza el DateTimePicker para el campo 'fecha' -->
    <?= $form->field($model, 'fecha')->widget(DateTimePicker::className(), [
        'options' => ['placeholder' => 'Seleccione la fecha y hora'],
        'pluginOptions' => [
            'autoclose' => true,
            'format' => 'yyyy-mm-dd hh:ii:ss' // formato de fecha y hora que desees
        ]
    ]); ?>

    <?= $form->field($model, 'total')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
