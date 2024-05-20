<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "detalleventa".
 *
 * @property int $id
 * @property int $fkVenta
 * @property int $fkProducto
 * @property float $cantidad
 * @property float $subtotal
 *
 * @property Alita $alita
 * @property Bebida $bebida
 * @property Bonele $bonele
 * @property Hamburguesa $hamburguesa
 * @property Postre $postre
 * @property Snacks $snacks
 * @property Taco $taco
 * @property Torta $torta
 * @property Venta $venta
 */
class Detalleventa extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'detalleventa';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fkVenta', 'fkProducto', 'cantidad', 'subtotal'], 'required'],
            [['fkVenta', 'fkProducto'], 'integer'],
            [['subtotal', 'cantidad'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'fkVenta' => 'Fk Venta',
            'fkProducto' => 'Fk Producto',
            'cantidad' => 'Cantidad',
            'subtotal' => 'Subtotal',
        ];
    }

    /**
     * Gets query for [[Alita]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAlita()
    {
        return $this->hasOne(Alita::class, ['id' => 'fkProducto']);
    }

    /**
     * Gets query for [[Bebida]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getBebida()
    {
        return $this->hasOne(Bebida::class, ['id' => 'fkProducto']);
    }

    /**
     * Gets query for [[Bonele]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getBonele()
    {
        return $this->hasOne(Bonele::class, ['id' => 'fkProducto']);
    }

    /**
     * Gets query for [[Hamburguesa]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getHamburguesa()
    {
        return $this->hasOne(Hamburguesa::class, ['id' => 'fkProducto']);
    }

    /**
     * Gets query for [[Postre]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPostre()
    {
        return $this->hasOne(Postre::class, ['id' => 'fkProducto']);
    }

    /**
     * Gets query for [[Snacks]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSnacks()
    {
        return $this->hasOne(Snacks::class, ['id' => 'fkProducto']);
    }

    /**
     * Gets query for [[Taco]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTaco()
    {
        return $this->hasOne(Taco::class, ['id' => 'fkProducto']);
    }

    /**
     * Gets query for [[Torta]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTorta()
    {
        return $this->hasOne(Torta::class, ['id' => 'fkProducto']);
    }

    /**
     * Gets query for [[Venta]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getVenta()
    {
        return $this->hasOne(Venta::class, ['id' => 'fkVenta']);
    }
}
