<?php

use app\models\Bebida;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\BebidaSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Bebidas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bebida-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
    <?= Html::a('Crear bebida', ['create'], ['class' => 'btn btn-primary', 'style' => 'background-color: #ce1212; border-color: #ce1212;']) ?>
    
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

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
            [
                'class' => 'yii\grid\ActionColumn',
                'header' => 'Ver',
                'headerOptions' => ['style' => 'color: #ce1212;'],
                'template' => '{view}',
                'contentOptions' => ['class' => 'action-column'],
                'buttons' => [
                    'view' => function ($url, $model, $key) {
                        return Html::a('<center><i class="far fa-eye"></i></center> ', $url, ['style' => 'color: #ce1212;']);
                    },
                ],
            ],
    
            [
                'class' => 'yii\grid\ActionColumn',
                'header' => 'Actualizar',
                'headerOptions' => ['style' => 'color: #ce1212;'],
                'template' => '{update}',
                'contentOptions' => ['class' => 'action-column'],
                'buttons' => [
                    'update' => function ($url, $model, $key) {
                        return Html::a('<center><i class="far fa-edit"></i></center>', $url, ['style' => 'color: #ce1212;']);
                    },
                ],
            ],
    
            [
                'class' => 'yii\grid\ActionColumn',
                'header' => 'Eliminar',
                'headerOptions' => ['style' => 'color: #ce1212;'],
                'template' => '{delete}',
                'contentOptions' => ['class' => 'action-column'],
                'buttons' => [
                    'delete' => function ($url, $model, $key) {
                        return Html::a('<center><i class="far fa-trash-alt"></i></center>', $url, [
                            'data' => [
                                'confirm' => '¿Estás seguro de que quieres eliminar este elemento?',
                                'method' => 'post',
                            ]
                        ]);
                    },
                ],
            ],
        ],
    ]); ?>


</div>
