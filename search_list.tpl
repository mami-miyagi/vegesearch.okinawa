%rebase("base.tpl",title="検索結果")

<!-- <a href="/" class="research_botton_top">もう一度検索する</a> -->
<div class="wrapper">

%for item in restaurant_list:
<a href="/restaurant/{{item['id']}}">
<div class="shop_box">
  <div class="img_wrapper">
    <img src="static/img/{{item['img_1']}}" class="img_box">
  </div>
  <div class="text_box">
    <h3 class="res_name">{{item["res_name"]}}</h3>
    <ul>
      <li class="res_li address"><p><span class="search_icon fa fa-map-marker"></span>{{item["address"]}}</p></li>
      <li class="res_li time"><p><span class="search_icon fa fa-clock-o"></span>{{item["time"]}}</p></li>
      <li class="res_li style"><p><span class="search_icon fa fa-cutlery"></span>{{item["style"]}}</p></li>
    </ul>
  </div>
</div>
</a>
%end

<!-- <a href="/" class="research_botton_bottom">もう一度検索する</a> -->
</div>
