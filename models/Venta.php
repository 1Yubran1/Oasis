<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "venta".
 *
 * @property int $id
 * @property int $fkUsuario
 * @property string $fecha
 * @property float $total
 *
 * @property Detalleventa $id0
 * @property Pago[] $pagos
 * @property Usuario $usuario
 */
class Venta extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'venta';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fkUsuario', 'fecha', 'total'], 'required'],
            [['fkUsuario'], 'integer'],
            [['fecha'], 'safe'],
            [['total'], 'number'],
            [['id'], 'exist', 'skipOnError' => true, 'targetClass' => Detalleventa::class, 'targetAttribute' => ['id' => 'fkVenta']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'fkUsuario' => 'Fk Usuario',
            'fecha' => 'Fecha',
            'total' => 'Total',
        ];
    }

    /**
     * Gets query for [[Id0]].
     *
     * @return \yii\db\ActiveQuery
     */
   /* public function getId0()
    {
        return $this->hasOne(Detalleventa::class, ['fkVenta' => 'id']);
    }*/

    /**
     * Gets query for [[Pagos]].
     *
     * @return \yii\db\ActiveQuery
     */
   /* public function getPagos()
    {
        return $this->hasMany(Pago::class, ['fkVenta' => 'id']);
    }*/

    /**
     * Gets query for [[Usuario]].
     *
     * @return \yii\db\ActiveQuery
     */
   /* public function getUsuario()
    {
        return $this->hasOne(Usuario::class, ['id' => 'fkUsuario']);
    }*/
}
