%rebase("base.tpl",title="Restaurant")

<div class="wrapper">
%for item in res_detail_list_en:

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
      <dt>Name</dt>
      <dd>{{item["res_name"]}}</dd>
      <dt>Genre</dt>
      <dd>{{item["style"]}}</dd>
      <dt>Tel</dt>
      <dd><p class="pc_phone">{{item["tel"]}}</p><a class="sp_phone" href="tel:{{item['tel'].replace('-','')}}"><span class="tel_icon fa fa-phone"></span>{{item["tel"]}}</a></dd>
      <dt>address</dt>
      <dd>{{item["address"]}}
        <br><iframe class="res_map" src="{{item['map']}}" frameborder="0" style="border:0" allowfullscreen></iframe></dd>
      <dt>Open</dt>
      <dd>{{item["time"]}}</dd>
      <dt>Rest day</dt>
      <dd>{{item["close"]}}</dd>
      <dt>Parking</dt>
      <dd>{{item["parking"]}}</dd>
      <dt>Smoking</dt>
      <dd>{{item["smoking"]}}</dd>
      <dt>credit card</dt>
      <dd>{{item["credit"]}}</dd>
  </dl>

</div>
%end

<!-- <a href="/en" class="research_botton_bottom">Research</a> -->

</div>
</div>
