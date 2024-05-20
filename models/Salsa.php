<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "salsa".
 *
 * @property int $id
 * @property string $nombre
 * @property string $picor
 *
 * @property Alita[] $alitas
 * @property Bonele[] $boneles
 */
class Salsa extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'salsa';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'picor'], 'required'],
            [['nombre', 'picor'], 'string', 'max' => 50],
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
            'picor' => 'Picor',
        ];
    }

    /**
     * Gets query for [[Alitas]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAlitas()
    {
        return $this->hasMany(Alita::class, ['fkSalsa' => 'id']);
    }

    /**
     * Gets query for [[Boneles]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getBoneles()
    {
        return $this->hasMany(Bonele::class, ['fkSalsa' => 'id']);
    }
}
