%rebase("base.tpl",title="search")

<div class="top_wrapper">

<div class="img_wrapper">
  <img class="top_img" src="/static/img/vegetables-landscape.jpg">
  <div class="top_h">
    <h1>Vegetarian & Vegan<br class="br"> Restaurants</h1>
    <h3>in OKINAWA</h3>
  </div>
</div>

  <form class="restaurant_search" action="/search_list_en" accept-charset="UTF-8" method="get">
<!-- acept-charset="UTF-8" は文字入力のformで役立つかも？ -->
    <div class="top_search">

      <div class="search_title"><h4>Type</h4></div>

      <div class="checkbox01">

        <ul>
          <li>
            <label>
              <input type="radio" name="vegan_en" class="checkbox01-input" value="no">
              <span class="checkbox01-parts">Vegetarian<br class="br">(No meat ＆ fish)</span>
            </label>
          </li>
          <li>
            <label>
             <input type="radio" name="vegan_en" class="checkbox01-input" value="yes">
             <span class="checkbox01-parts">Vegan<br class="br">(No meat,fish,milk ＆ egg)</span>
            </label>
          </li>
        </ul>

      </div>

      <div class="search_title"><h4>Area</h4></div>
      <div class="checkbox01">
        <ul>
          <li>
            <label>
             <input type="radio" name="area_en" class="checkbox01-input" value="south_en">
             <span class="checkbox01-parts">Okinawa Southern</span>
            </label>
          </li>
          <li>
            <label>
             <input type="radio" name="area_en" class="checkbox01-input" value="mid_en">
             <span class="checkbox01-parts">Okinawa Middle</span>
            </label>
          </li>
          <li>
            <label>
             <input type="radio" name="area_en" class="checkbox01-input" value="north_en">
             <span class="checkbox01-parts">Okinawa North</span>
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
