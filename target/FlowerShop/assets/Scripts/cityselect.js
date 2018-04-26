var CitySelect = {
	_zxs:[11,12,31,50],
	level:[],
	isZxs:false,
	code:null,
	init:function(arr,callback){
		if(!arr || !(arr instanceof Array)){
			throw new ReferenceError("第一个参数必须为城市的层级数组.[{text:'北京',value:'210000',children:[...]}]");
		}
		this.data = arr||[];
		this.callback = callback||function(){};
		this.updata();
		this.bindEvent();
	},
	bindEvent:function(){
		var _this = this;
		$(".address-tab .item").on("click","li",function(e){
			e.stopPropagation();
			var index = $(this).index();
			var level = $(this).parent().attr("data-level");
			_this.checkZxs($(this).attr("data-code").slice(0,2));
			if(level == 2){
				_this.level[2] = index;
				$(".address-tab .tab>li").eq(2).text($(this).text()).siblings().removeClass("current");
				$(".stock-address .head .text").text(_this.getCity());
				$(".stock-address").removeClass("open");
				_this.code = $(this).attr("data-code");
				_this.callback(_this.code);
			}else{
				_this.level[level] = index;
				$(".address-tab .tab>li").eq(level).text($(this).text()).removeClass("current").next().addClass("current").removeClass("hide");
				if(_this.isZxs && level == 0){
					_this.level[1] = 0; 
					$(".address-tab .tab>li").eq(2).text("请选择").addClass("current").removeClass("hide").prev().addClass("hide");
				}
				_this.updata();
			}
		});
		$(".address-tab .tab>li").click(function(){
			var index = $(this).index();
			$(".tab-con .item").eq(index).removeClass("hide").siblings().addClass("hide");
			$(this).addClass("current").nextAll().removeClass("current").addClass("hide").text("请选择");
			_this.level = _this.level.slice(0,index);
		})
		//topclick
		$("body").click(function(e){
			$(".stock-address").removeClass("open");
			e.stopPropagation();
		});
		$(".stock-address .head").click(function(){
		   $(this).parent().toggleClass('open'); 
		});
		//hover
		$(".stock-address").hover(function(e){
			$(".stock-address").addClass("open");
			e.stopPropagation();
		},function(e){
		    $(".stock-address").removeClass("open");
		}).click(function(e){
			e.stopPropagation();
		});
	},
	checkZxs:function(index){
		var res = false;
		for(var i=0;i<this._zxs.length;i++){
			if(index == this._zxs[i])res = true;
			if(this.level[0] == this._zxs[i])res = true;
		}
		this.isZxs = res;
	},
	getCity:function(){
		if(this.isZxs){
			return this.data[this.level[0]].text+this.data[this.level[0]].children[this.level[1]].children[this.level[2]].text;
		}
		return this.data[this.level[0]].text + this.data[this.level[0]].children[this.level[1]].text 
			+ this.data[this.level[0]].children[this.level[1]].children[this.level[2]].text;
	},
	updata:function(){
		var data =null;
		switch (this.level.length){
			case 0:
				data = this.data;
				break;
			case 1:
				data = this.data[this.level[0]].children;
				break;
			case 2:
				data = this.data[this.level[0]].children[this.level[1]].children;
				break;
			default:
				break;
		}
		var html = "";
		for(var i=0;i<data.length;i++){
			html += "<li data-code="+data[i].value +">" + data[i].text+"</li>";
		}
		$(".tab-con .item").eq(this.level.length).html(html).removeClass("hide").siblings().addClass("hide");
	}
}
