<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Salsa $model */

$this->title = 'Create Salsa';
$this->params['breadcrumbs'][] = ['label' => 'Salsas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="salsa-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
