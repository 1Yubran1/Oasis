<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bebida".
 *
 * @property int $id
 * @property string $nombre
 * @property string $descripcion
 * @property float $precio
 * @property string $img
 * @property int $fkTipo
 *
 * @property Tbebida $fkTipo0
 * @property Detalleventa $id0
 */
class Bebida extends \yii\db\ActiveRecord
{
    public $file;
    /**
     * @var \yii\web\UploadedFile
     */
    // Agrega una propiedad para manejar la carga de archivos

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'bebida';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'descripcion', 'precio', 'fkTipo'], 'required'],
            [['precio'], 'number'],
            [['fkTipo'], 'integer'],
            [['nombre'], 'string', 'max' => 50],
            [['descripcion'], 'string', 'max' => 255],
            [['img'], 'string', 'max' => 255],
            [['fkTipo'], 'exist', 'skipOnError' => true, 'targetClass' => Tbebida::class, 'targetAttribute' => ['fkTipo' => 'id']],
            [['file'], 'file', 'extensions' => 'jpg, png, jpeg, gif, webp', 'maxFiles' => '1'],  // Regla de validación para la carga de archivos
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
            'fkTipo' => 'Tipo de bebida',
            'file' => 'Imagen', // Etiqueta para el campo de carga de imágenes en los formularios
        ];
    }

    /**
     * Gets query for [[FkTipo0]].
     *
     * @return \yii\db\ActiveQuery
     */
    // Define la relación 'tipo' con el modelo 'Tipo'
    public function getTipo()
    {
        // Si la clave foránea es 'fkTipo' en la tabla 'Bebida'
        return $this->hasOne(TBebida::className(), ['id' => 'fkTipo']);
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
