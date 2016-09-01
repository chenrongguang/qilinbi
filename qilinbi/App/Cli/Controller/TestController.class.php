<?php
namespace Cli\Controller;
use Think\Controller;

class TestController extends Controller {
	//空操作
	public function task_test(){
		//header("HTTP/1.0 404 Not Found");
		//$this->display('Public:404');
		\Think\Log::write('hello:crg');
		exit('done');
	}
}