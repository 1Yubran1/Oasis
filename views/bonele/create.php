<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Bonele $model */

$this->title = 'Create Bonele';
$this->params['breadcrumbs'][] = ['label' => 'Boneles', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bonele-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
