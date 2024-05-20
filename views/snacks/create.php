<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Snacks $model */

$this->title = 'Create Snacks';
$this->params['breadcrumbs'][] = ['label' => 'Snacks', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="snacks-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
