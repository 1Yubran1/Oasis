<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Bebida $model */

$this->title = 'Agregar nueva bebida';
$this->params['breadcrumbs'][] = ['label' => 'Bebidas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bebida-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
