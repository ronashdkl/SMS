<?php 
 
use \Illuminate\Database\Eloquent\Model as Eloquent;
 
class Library extends Eloquent {
 
   protected $primaryKey = 'id';
	protected $table = 'sms_library';
	protected $fillable =['name','publication','author','class_id','subject_id'];
	public $timestamps = FALSE;
	


protected $hidden = [
        'created_at', 'updated_at',
    ];


}