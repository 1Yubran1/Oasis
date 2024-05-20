<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bonele".
 *
 * @property int $id
 * @property string $nombre
 * @property string $descripcion
 * @property float $precio
 * @property string $img
 * @property int $fkSalsa
 *
 * @property Salsa $fkSalsa0
 * @property Detalleventa $id0
 */
class Bonele extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'bonele';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'descripcion', 'precio', 'img', 'fkSalsa'], 'required'],
            [['precio'], 'number'],
            [['fkSalsa'], 'integer'],
            [['nombre'], 'string', 'max' => 50],
            [['descripcion', 'img'], 'string', 'max' => 255],
            [['fkSalsa'], 'exist', 'skipOnError' => true, 'targetClass' => Salsa::class, 'targetAttribute' => ['fkSalsa' => 'id']],
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
            'fkSalsa' => 'Fk Salsa',
        ];
    }

    /**
     * Gets query for [[FkSalsa0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getFkSalsa0()
    {
        return $this->hasOne(Salsa::class, ['id' => 'fkSalsa']);
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
