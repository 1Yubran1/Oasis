<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "usuario".
 *
 * @property int $id
 * @property string $nombre
 * @property string $apaterno
 * @property string $amaterno
 * @property string $nickname
 * @property string $contraseña
 * @property string $tipo
 * @property string $ingreso
 *
 * @property Venta $id0
 */
class Usuario extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuario';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'apaterno', 'amaterno', 'nickname', 'contraseña', 'tipo'], 'required'],
            [['nombre'], 'string', 'max' => 50],
            [['apaterno', 'amaterno', 'tipo'], 'string', 'max' => 30],
            [['nickname', 'contraseña'], 'string', 'max' => 20],
            [['ingreso'], 'safe'],
            [['id'], 'exist', 'skipOnError' => true, 'targetClass' => Venta::class, 'targetAttribute' => ['id' => 'fkUsuario']],
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
            'apaterno' => 'Apaterno',
            'amaterno' => 'Amaterno',
            'nickname' => 'Nickname',
            'contraseña' => 'Contraseña',
            'tipo' => 'Tipo',
            'ingreso' => 'Fecha Ingreso',
        ];
    }

    /**
     * Gets query for [[Id0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getId0()
    {
        return $this->hasOne(Venta::class, ['fkUsuario' => 'id']);
    }
}
