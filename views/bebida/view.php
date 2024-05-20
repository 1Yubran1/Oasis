<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var app\models\Bebida $model */

$this->title = $model->nombre;
$this->params['breadcrumbs'][] = ['label' => 'Bebidas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="bebida-view">

    <h1><?= Html::encode($this->title) ?></h1>

    
        <p>
            <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
            <?= Html::a('Delete', ['delete', 'id' => $model->id], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => 'Are you sure you want to delete this item?',
                    'method' => 'post',
                ],
            ]) ?>
        </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'nombre',
            'descripcion',
            'precio',
            [
                'attribute' => 'img',
                'format' => 'raw',
                'value' => function($model){
                    return Html::img(
                        yii\helpers\Url::to("/img/bebida/".$model->img),
                        ['style' => 'width: 100px; height: 100px;']
                    );
                }
            ],
            [
                'attribute' => 'fkTipo',
                'value' => function ($model) {
                    return $model->tipo->tipo; // Accede al campo 'tipo' del modelo relacionado 'Tipo'
                }
            ],
        ],
    ]) ?>

</div>
