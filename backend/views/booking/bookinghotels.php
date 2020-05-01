<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Booking */
/* @var $form ActiveForm */
?>
<div class="bookinghotels">

    <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($model, 'nama_booking') ?>
        <?= $form->field($model, 'tanggal_booking') ?>
        <?= $form->field($model, 'tanggal_checkout') ?>
    
        <div class="form-group">
            <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- bookinghotels -->
