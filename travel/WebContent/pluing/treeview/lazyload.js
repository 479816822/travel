LazyLoad = (function(win,undefined){
/*��������ϵ*/
var requires = {
		   "js":{			  
			   "jquery":{
					 "require":["js/jquery-1.4.2.min"]
					},
			   "json":{
					 "require":["js/json2"],							   
					},
			   "jquery.gameframe":{
					"require":["js/jquery.gameframe"]
			   },
			   "jquery.treeview":{
					 "require":["js/jquery-1.4.2.min","js/json2","js/jquery.gameframe","js/jquery.treeview"]				 
					}				
			},
			"css":{
				"all":{
					"require":["css/all"]
				}
			}
		};
//ȫ�ֱ���
var doc = document;
	head = doc.getElementsByTagName("head")[0],
	pending = {}, 								//�ȴ�����
	queue = { css:[],js:[] },            		//����
	checklist = {},                      		//��Դ����
	Nav = {},                                   //�������ʶ��
	ua =  navigator.userAgent.toLowerCase();  
	var n;
	( n = ua.match(/msie ([\d.]+)/)) ? Nav.ie =  n[1]:
	( n = ua.match(/firefox\/([\d.]+)/)) ? Nav.firefox = n[1]:
	( n = ua.match(/chrome\/([\d.]+)/)) ? Nav.chrome =  n[1]:
	( n = ua.match(/opera.([\d.]+)/)) ? Nav.opera =  n[1]:
	( n = ua.match(/version\/([\d.]+).*safari/)) ? Nav.safari = n[1]:0;
//�����ڵ�
function createNode(name,attrs) {
	var node = doc.createElement(name),attr;
	for (attr in attrs) {
	  if (attrs.hasOwnProperty(attr)) {
		node.setAttribute(attr, attrs[attr]);
	  }
	}
	return node;
};
//������Դ
function load(type,urls,callback){
	var i, len,rlen, node, p, url,filetype,require;
	if(type=="css"){
		filetype = ".css";	 
		require = requires["css"];
	}	
	else{
		filetype = ".js";	 
		require = requires["js"];
	}	
	if (urls) {
	    urls = urls instanceof Array ? urls:urls.split(",");
		for (i=0,len=urls.length;i<len;i++) {
		  url = urls[i];
		  //��ȡ������ϵ
		  if(require.hasOwnProperty(url.toLowerCase())){
			  for( var j=0;rlen=require[url]["require"].length,j<rlen;j++){
				  var rurl = require[url]["require"][j];
				  queue[type].push({
						urls    : [  rurl + filetype ],//�޸�����Ӧ����ϵͳ
						callback: (i === len-1 && j=== rlen-1) ? callback:null//ȷ����������Դload������лص�����
					  });

			  }
		  }
		}
	};
    if (pending[type] || !(p = pending[type] = queue[type].shift()))return; //������Դ�Ƴ����ȴ�����
	urls = p.urls;
	var len = urls.length;
	for (var i=0;i<len;i++) {
	  var url = urls[i];
	  //mod by lisen #2
	  if(checklist.hasOwnProperty(url))if( true == checklist[url] ){
		finish(type);
		continue;
	   }
	  //mod by lisen #2
	  //�ж�
	  if (type === 'css') {
		node = createNode('link', {
		  href : url,
		  rel  : 'stylesheet',
		  type : 'text/css'
		});
	  } else node = createNode( 'script', {src: url,type:"text/javascript"} );
	  if (Nav.ie){
		node.onreadystatechange = function () {
		  var readyState = this.readyState;
		  if (readyState === 'loaded' || readyState === 'complete') {
			this.onreadystatechange = null;
			finish(type);
		  }
		};
	  } else if (type === 'css' && !(Nav.ie)){
		  setTimeout(function () { finish(type); }, 50);
	  } else  node.onload = node.onerror = function (){ finish(type); };
	  checklist[url] = true; //mod by lisen #3
	  head.appendChild(node);
	}
};
//�ص�����
function finish(type) {
	var p = pending[type];
	if (!p)return;
	var callback = p.callback,
		urls     = p.urls;
	urls.shift();
	if (!urls.length) {
	  if (callback)callback.call(win);
	  pending[type] = null;
	  if (queue[type].length)load(type);
	}
};
//LazyLoad  public method;
return {
	css: function (urls, callback) {
	  load('css', urls, callback);
	},
	js: function (urls, callback) {
	  load('js', urls, callback);
	}
};
})(window);