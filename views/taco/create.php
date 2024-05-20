<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Taco $model */

$this->title = 'Create Taco';
$this->params['breadcrumbs'][] = ['label' => 'Tacos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="taco-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
