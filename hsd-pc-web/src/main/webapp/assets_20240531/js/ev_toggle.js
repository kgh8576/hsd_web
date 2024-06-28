function toggle_object()
{   
	var obj = document.getElementById('check_01');   
	if(!obj) return; 
	
	var _url=obj.src.split(".png")[0];

  
	if(_url.substr(-1,1) == 1)
	{   
		obj.src="http://devcdn.cocas.co.kr/2018/hansot/images/check_02.png"; 
		
	} 
	else 
	{   
		obj.src="http://devcdn.cocas.co.kr/2018/hansot/images/check_01.png";
	}

	return false;
}

function close_banner()
{
	var obj = document.getElementById('check_01');   
	var _url=obj.src.split(".png")[0];
	var _today = (_url.substr(-1,1) == 1) ? false:true;
	if(_today)
	{
		closePopupNotToday();
	}
	document.getElementById('mWrap').style.display = "none";  
	return false;
}

function now_get()
{
	 close_banner();
	window.open("http://w7.ohpoint.co.kr/v2/reqJoin/cpaWeb.do?mId=hsd&eId=finnqwebcpa", "_self");
	return false;
}

var setCookie = function(name, value, exp) {
  var date = new Date();
  date.setTime(date.getTime() + exp*24*60*60*1000);
  document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
};

var getCookie = function(name) {
  var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
  return value? value[2] : null;
};

function closePopupNotToday(){	             
		setCookie('notToday','Y', 1);
} 

function init()
{
  var myCookie = getCookie("notToday");
	if(myCookie!="Y" || myCookie === null ){
		document.getElementById('mWrap').style.display="block";
	} else
	{
		document.getElementById('mWrap').style.display = "none";
	}
}

function resetCoo()
{
	setCookie('notToday','N', 1);
}