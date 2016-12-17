<?php 
 
use \Illuminate\Database\Eloquent\Model as Eloquent;
 
class Study extends Eloquent {
 
   protected $primaryKey = 'id';
	protected $table = 'sms_studyMaterial';
	protected $fillable =['name', 'file','detail','user_id','class_id','section_id','subject_id','count','session_id'];
	public $timestamps = true;
	





}