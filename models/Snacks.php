<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "snacks".
 *
 * @property int $id
 * @property string $nombre
 * @property string $descripcion
 * @property float $precio
 * @property string $img
 *
 * @property Detalleventa $id0
 */
class Snacks extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'snacks';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'descripcion', 'precio', 'img'], 'required'],
            [['precio'], 'number'],
            [['nombre'], 'string', 'max' => 50],
            [['descripcion', 'img'], 'string', 'max' => 255],
            [['id'], 'exist', 'skipOnError' => true, 'targetClass' => Detalleventa::class, 'targetAttribute' => ['id' => 'fkProducto']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Nombre',
            'descripcion' => 'Descripcion',
            'precio' => 'Precio',
            'img' => 'Img',
        ];
    }

    /**
     * Gets query for [[Id0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getId0()
    {
        return $this->hasOne(Detalleventa::class, ['fkProducto' => 'id']);
    }
}
