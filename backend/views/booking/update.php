<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Booking */

$this->title = 'Update Booking: ' . $model->id_booking;
$this->params['breadcrumbs'][] = ['label' => 'Bookings', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_booking, 'url' => ['view', 'id' => $model->id_booking]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="booking-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
