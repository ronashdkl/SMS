

<div class="box bg-warning">
    <div class="box-header text-center">

    </div>
    <div class="box-body">
        <table class="table">
            <tr>
                <th>Routine</th>
                <th>Published On</th>
                <th>Option</th>
                
            </tr>
            <?php foreach ($exams as $exam){?>
            <tr>
                <td><?= $exam->name; ?></td>
                <td><?= $exam->created_at;?></td>
                <td><a href="<?= base_url('exam/routine/download/')."/".$exam->id."/".$exam->routine ?>" class="btn btn-success">Download</a></td>
            </tr>
            <?php } ?>
        </table> 
    </div>
</div>