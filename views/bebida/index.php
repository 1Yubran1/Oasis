<?php

use app\models\Bebida;
use app\models\TBebida;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use kartik\select2\Select2;

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

            [
                'attribute' => 'nombre',
                'filter' => Select2::widget([
                    'model' => $searchModel,
                    'attribute' => 'nombre',
                    'data' => Bebida::find()->select(['nombre', 'nombre'])->indexBy('nombre')->column(),
                    'options' => ['placeholder' => 'Filtrar nombre'],
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ]),
            ],

            [
                'attribute' => 'descripcion',
                'filter' => Select2::widget([
                    'model' => $searchModel,
                    'attribute' => 'descripcion',
                    'data' => Bebida::find()->select(['descripcion', 'descripcion'])->indexBy('descripcion')->column(),
                    'options' => ['placeholder' => 'Filtrar descripcion'],
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ]),
            ],
            [
                'attribute' => 'precio',
                'filter' => Select2::widget([
                    'model' => $searchModel,
                    'attribute' => 'precio',
                    'data' => Bebida::find()->select(['precio', 'precio'])->indexBy('precio')->column(),
                    'options' => ['placeholder' => 'Filtrar precio'],
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ]),
            ],
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
                'filter' => Select2::widget([
                    'model' => $searchModel,
                    'attribute' => 'tipo', // Asigna el atributo correcto del modelo de búsqueda
                    'data' => TBebida::find()->select(['tipo', 'tipo'])->indexBy('tipo')->column(), // Ajusta esto para que coincida con tu modelo y atributo correctos
                    'options' => ['placeholder' => 'Filtrar tipo'], // Personaliza el placeholder según tu preferencia
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ]),
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
