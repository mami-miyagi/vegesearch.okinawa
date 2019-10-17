%rebase("base.tpl",title="トップページ")

<div class="top_wrapper">

<div class="img_wrapper">
  <img class="top_img" src="/static/img/vegetables-landscape.jpg">
  <div class="top_h">
    <h1>Vegetarian & Vegan<br class="br"> Restaurants</h1>
    <h3>沖縄のベジタリアン＆<br class="br">ビーガンのお店</h3>
  </div>
</div>

  <form class="restaurant_search" action="/search_list" accept-charset="UTF-8" method="get">
<!-- acept-charset="UTF-8" は文字入力のformで役立つかも？ -->
    <div class="top_search">

      <div class="search_title"><h4>タイプ</h4></div>

      <div class="checkbox01">

        <ul>
          <li>
            <label>
              <input type="radio" name="vegan" class="checkbox01-input" value="0">
              <span class="checkbox01-parts">ベジタリアン<br class="br">（肉・魚なし）</span>
            </label>
          </li>
          <li>
            <label>
             <input type="radio" name="vegan" class="checkbox01-input" value="1">
             <span class="checkbox01-parts">ビーガン<br class="br">（肉・魚・乳・卵なし）</span>
            </label>
          </li>
        </ul>

      </div>

      <div class="search_title"><h4>エリア</h4></div>
      <div class="checkbox01">
        <ul>
          <li>
            <label>
             <input type="radio" name="area" class="checkbox01-input" value="south">
             <span class="checkbox01-parts">南部（那覇市近辺）</span>
            </label>
          </li>
          <li>
            <label>
             <input type="radio" name="area" class="checkbox01-input" value="mid">
             <span class="checkbox01-parts">中部（読谷村近辺）</span>
            </label>
          </li>
          <li>
            <label>
             <input type="radio" name="area" class="checkbox01-input" value="north">
             <span class="checkbox01-parts">北部（名護市近辺）</span>
            </label>
          </li>
        </ul>
      </div>
      <!-- <div> -->
        <input type="submit" name="commit" value="Search" class="search">
      <!-- </div> -->
    </div>
  </form>

</div>
