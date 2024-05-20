<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pago".
 *
 * @property int $id
 * @property string $tPago |
 * @property int $fkVenta
 *
 * @property Venta $fkVenta0
 */
class Pago extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pago';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tPago', 'fkVenta'], 'required'],
            [['fkVenta'], 'integer'],
            [['tPago'], 'string', 'max' => 10],
            [['fkVenta'], 'exist', 'skipOnError' => true, 'targetClass' => Venta::class, 'targetAttribute' => ['fkVenta' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tPago' => 'T Pago',
            'fkVenta' => 'Fk Venta',
        ];
    }

    /**
     * Gets query for [[FkVenta0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getFkVenta0()
    {
        return $this->hasOne(Venta::class, ['id' => 'fkVenta']);
    }
}
