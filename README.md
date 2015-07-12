== javascript  drop down on select
--------------------------------
properties/_form.html.erb
-----------------------
 <div class="form-field">
      <%= f.label :State%>
      <div class= "form-action">
        <%= f.select :state, options_for_select([ ["Select",""], ["Andhrapradesh","Andhrapradesh"], ["Tamilnadu","Tamilnadu"], ["Karnataka","Karnataka"]], :selected => f.object.state)  %>
      </div>
    </div>


  <div class="control-group kcity">
   <%= f.label :city, :class => 'control-label' %>
 <div class="controls">
   <%= select_tag :k_city, options_for_select([["Select City", ""]] + K_CITIES.map {|kcity| kcity}) %>
 </div>
</div>

<div class="control-group acity">
    <%= f.label :city, :class => 'control-label' %>
 <div class="controls">
   <%= select_tag :a_city, options_for_select([["Select City", ""]] + A_CITIES.map {|kcity| kcity}) %>
 </div>
</div>

<div class="control-group tcity">
   <%= f.label :city, :class => 'control-label' %>
 <div class="controls">
   <%= select_tag :t_city, options_for_select([["Select City", ""]] + T_CITIES.map {|kcity| kcity}) %>
 </div>
</div>
-------------------
<script>
$(document).ready(function() {
    $(".kcity").hide();
    $(".acity").hide();
    $(".tcity").hide();
  });

$("#property_state").change(function() {
    var val = $("#property_state").val();
    if (val == 'Andhrapradesh') {
      $(".kcity").hide();
      $(".acity").show();
      $(".tcity").hide();
    } else if (val == 'Karnataka') {
      $(".kcity").show();
      $(".acity").hide();
      $(".tcity").hide();
    } else if (val == 'Tamilnadu') {
     $(".kcity").hide();
     $(".acity").hide();
     $(".tcity").show();
   }
 });


</script>
-------------------------------
constant.rb
-----------------
  CITES = ["Anantapur","Bagalur","Berigai","Bhagepalli","Bangalore","Chittoor","Chikkaballpur","Denkanikottai","Gauribidanur","Hosur","Hindupur","Jawalgiri","Kanakapur","Kelamangalam", "Kadiri","Kolar","Mysore","Madanapalli","Penukonda","Shoolagiri","Thally","Tumakuru"]

K_CITIES = ["Bangalore","Bhagepalli","Chikkaballpur","Gauribidanur","Kanakapur","Kolar","Mysore","Tumakuru"]
	A_CITIES = ["Anantapur","Chittoor","Hindupur","Kadiri","Madanapalli","Penukonda" ]
	T_CITIES = ["Bagalur","Berigai","Denkanikottai","Hosur","Jawalgiri","Kelamangalam","Shoolagiri","Thally"]
	------------------------------------------------------------------------------------------------

	properties controller create action
	------------------------------------------
		@property = Property.new(property_params)
		@city = params[:k_city] if params[:k_city].present?
		@city = params[:a_city] if params[:a_city].present?
		@city = params[:t_city] if params[:t_city].present?
		@property.city= @city
		---------------------------------------------------------------------------------------------------------------------