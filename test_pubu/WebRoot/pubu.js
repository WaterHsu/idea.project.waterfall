/* *
  * 基于固定宽度的浮动定位的瀑布流
  * 实现简单，其实就是一个滚动加载数据而已
  * 缺点布局不随宽度的变化而改变，如果有图片特别长的时候，最高的列与最低的列有可能差距大，空白大
  * by VVG http://www.cnblogs.com/NNUF/
  */
var WaterFull = {
    $:function(id){return document.getElementById(id);},
    // 每次滚动需要加载的数据，可以用ajax替代读取，每次分批加载
    data:[{imgUrl:'images/1.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位01'},
          {imgUrl:'images/2.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位02'},
          {imgUrl:'images/3.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位03'},
          {imgUrl:'images/5.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位04'},
          {imgUrl:'images/6.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位05'},
          {imgUrl:'images/7.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位06'},
          {imgUrl:'images/8.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位07'},
          {imgUrl:'images/9.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位08'},
          {imgUrl:'images/10.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位09'},
          {imgUrl:'images/11.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位10'},
          {imgUrl:'images/12.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位11'},
          {imgUrl:'images/13.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位12'},
          {imgUrl:'images/14.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位13'},
          {imgUrl:'images/15.jpg',link:'javascript:void(0)',title:'瀑布流浮动定位14'}
          ],
    createChild:function(link,imagesUrl,title){
        var str = '<a href="' + link + '"><img src="/test_pubu/' + imagesUrl + '" width="200"></a>' + '<p class="title">' + title + '</p>';
        var div = document.createElement('div');
        div.className = 'water';
        div.innerHTML = str; 
        return div;
    },
    
    loadXMLDoc:function(data)
    {
    //	alert("okkk");
    	var strr = "ff";
    	var xmlhttp;
    	if(window.XMLHttpRequest)
    		{
    			xmlhttp=new XMLHttpRequest();
    		}
    	else
    		{
    			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    		}
    	
    	xmlhttp.onreadystatechange=function()
    	{
    		if (xmlhttp.readyState==4 && xmlhttp.status==200)
    			{
    				xmlDoc=xmlhttp.responseXML;
    			//	alert("ttt");
    				for(var k=0; k < 14;k++)
    					{
    						data[k].imgUrl =xmlDoc.getElementsByTagName("pic")[k].childNodes[0].nodeValue;
    						data[k].link = xmlDoc.getElementsByTagName("addr")[k].childNodes[0].nodeValue;
    						data[k].title = xmlDoc.getElementsByTagName("name")[k].childNodes[0].nodeValue;
    						//alert(strr);
    						//alert(k + data[k].imgUrl);
    						//alert(WaterFull.mark + 1);
    						
    					}
    				//WaterFull.mark[0].ajaxmark = '1';
    				var j = 0;
    				var m, div;
    				var rows = WaterFull.getRowByHeight();
    				//alert(data[0].imgUrl);
    				for(;data[j];j++)
    					{
    						//alert(data[j].imgUrl);
    					 	div = WaterFull.createChild(data[j].link, data[j].imgUrl,data[j].title);
    			            // 因为是4列，所以数据以4列一个轮回加载
    			            m = ((j+1)>4)?j%4:j;          //i+1 > 4   就取 i %4  如果 不是  就取i    
    						// 在列上添加数据
    						rows[m].appendChild(div);
    					}
    			}
    	}
    	
    	xmlhttp.open("GET","ajax.jsp",true);
		xmlhttp.send();
		
		//alert("555");
    },
    
    //绑定事件
    on:function(element, type, func) {
        if (element.addEventListener) {
            element.addEventListener(type, func, false); //false 表示冒泡
        } else if (element.attachEvent) {
            element.attachEvent('on' + type, func);
        } else {
            element['on' + type] = func;
        }
    },
    //获取列高度，返回数组，从小到大排序
    getRowByHeight:function(){
        var row = [this.$('row1'),this.$('row2'),this.$('row3'),this.$('row4')];
        var height = [];
        for(var i = 0;row[i];i++){
            row[i].height = row[i].offsetHeight;
            height.push(row[i]);
        }
        // 对高度进行排序，低--》高,保证最矮的优先加载
        height.sort(function(a,b){
            return a.height - b.height;
        });
        return height;
    },
    //获取页面总高度（总高度 = 卷去高度 + 可视区域高度）
    getPageHeight:function(){
        return document.documentElement.scrollHeight || document.body.scrollHeight ;
    },
    // 获取页面卷去的高度
    getScrollTop:function(){
        return document.documentElement.scrollTop || document.body.scrollTop;
    },
    // 获取页面可视区域宽度
    getClientHeigth:function(){
        return document.documentElement.clientHeight || document.body.clientHeight;
    },
    append:function(){
        var i = 0,rows = this.getRowByHeight(),div,k;
        
      
        this.loadXMLDoc(this.data);
        
        
     /*   for(;this.data[i];i++){
            div = this.createChild(this.data[i].link, this.data[i].imgUrl,this.data[i].title);
            // 因为是4列，所以数据以4列一个轮回加载
            k = ((i+1)>4)?i%4:i;          //i+1 > 4   就取 i %4  如果 不是  就取i    
			// 在列上添加数据
			rows[k].appendChild(div);
        }*/
    },
	onScroll:function(){
        // 获取高度等数据
        var height = WaterFull.getPageHeight();
        var scrollTop = WaterFull.getScrollTop();
        var clientHeight = WaterFull.getClientHeigth();
        // 如果滚动到最底部，就加载
        if(scrollTop + clientHeight > height - 50){
            WaterFull.append();
        }
    },
    timer:null
};
WaterFull.on(window, 'scroll',function(){
    clearTimeout( WaterFull.timer ); //清除上一次，性能优化
    WaterFull.timer = setTimeout(WaterFull.onScroll,500);
});


function firstload()
{
	
	WaterFull.append();
	
}


