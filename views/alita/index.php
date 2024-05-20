<?php

use app\models\Alita;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\AlitaSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Alitas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="alita-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Alita', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'nombre',
            'descripcion',
            'precio',
            [
                'attribute' => 'img',
                'format' => 'raw',
                'value' => function($model){
                    return Html::img(
                        yii\helpers\Url::to("/img/alita/".$model->img),
                        ['style' => 'width: 100px; height: 100px;']
                    );
                }
            ],
            //'fkSalsa',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Alita $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>


</div>
