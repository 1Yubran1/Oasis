<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbebida".
 *
 * @property int $id
 * @property string $tipo
 *
 * @property Bebida[] $bebidas
 */
class TBebida extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tbebida';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tipo'], 'required'],
            [['tipo'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tipo' => 'Tipo',
        ];
    }

    /**
     * Gets query for [[Bebidas]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getBebidas()
    {
        return $this->hasMany(Bebida::class, ['fkTipo' => 'id']);
    }
}
