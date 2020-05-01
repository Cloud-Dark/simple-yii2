<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "booking".
 *
 * @property int $id_booking
 * @property string $nama_booking
 * @property string $tanggal_booking
 * @property string $tanggal_checkout
 */
class Booking extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'booking';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_booking', 'tanggal_booking', 'tanggal_checkout'], 'required'],
            [['tanggal_booking', 'tanggal_checkout'], 'safe'],
            [['nama_booking'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_booking' => 'Id Booking',
            'nama_booking' => 'Nama Booking',
            'tanggal_booking' => 'Tanggal Booking',
            'tanggal_checkout' => 'Tanggal Checkout',
        ];
    }
}
