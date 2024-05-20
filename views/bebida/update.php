<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Bebida $model */

$this->title = 'Actualizar Bebida: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Bebidas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="bebida-update">
    
    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>
    

</div>
