%rebase("base.tpl",title="店舗詳細")

<div class="wrapper">

%for item in res_detail_list:

<div class="restaurant">

  <h1 class="restaurant_name">{{item["res_name"]}}</h1>

  <p class="tel pc_phone">
  <span class="fa fa-phone"></span>{{item["tel"]}}
  </p>


  <div class="portfolio single-item">

  <img src="/static/img/{{item['img_1']}}" alt="">
  <img src="/static/img/{{item['img_2']}}" alt="">
  <img src="/static/img/{{item['img_3']}}" alt="">

  </div>

<div class="table">
  <dl>
      <dt>店名</dt>
      <dd>{{item["res_name"]}}</dd>
      <dt>ジャンル</dt>
      <dd>{{item["style"]}}</dd>
      <dt>TEL</dt>
      <dd><p class="pc_phone">{{item["tel"]}}</p><a class="sp_phone" href="tel:{{item['tel'].replace('-','')}}"><span class="tel_icon fa fa-phone"></span>{{item["tel"]}}</a></dd>
      <dt>住所</dt>
      <dd>{{item["address"]}}
        <br><iframe class="res_map" src="{{item['map']}}" frameborder="0" style="border:0" allowfullscreen></iframe></dd>
      <dt>営業時間</dt>
      <dd>{{item["time"]}}</dd>
      <dt>定休日</dt>
      <dd>{{item["close"]}}</dd>
      <dt>駐車場</dt>
      <dd>{{item["parking"]}}</dd>
      <dt>喫煙・禁煙</dt>
      <dd>{{item["smoking"]}}</dd>
      <dt>クレジットカード決済</dt>
      <dd>{{item["credit"]}}</dd>
  </dl>

</div>
%end

<!-- <a href="/" class="research_botton_bottom">もう一度検索する</a> -->

</div>
</div>
