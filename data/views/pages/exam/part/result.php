<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


 
?>

<div class="box bg-warning">
    <div class="box-header text-center">
        <?= $subject->name; ?> Mark sheet. 
    </div>
    <div class="box-body">
        <table class="table">
            <tr>
                <th>Student</th>
                <th>Marks</th>
                
            </tr>
            <?php foreach ($marks as $mark){?>
            <tr>
                <td><?= $this->sms->get_user($mark->student_id)->full_name; ?></td>
                <td><?= $mark->marks?></td>
            </tr>
            <?php } ?>
        </table> 
    </div>
</div>