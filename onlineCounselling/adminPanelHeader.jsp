<!--header-->
<!-- # for id of element . for class of element selection then name of subelement to which we want to apply css  -->
<style type="text/css">
  #collapse-target ul li a
  {
    font-weight: bold;
    font-family: verdana;
    font-style: italic;
    color: white;

  }
 #collapse-target ul li a:hover
  {
    border-bottom: 2px solid red;
  }
  #collapse-target ul li a:active
  {
    background-color: white;
  }
  #collapse-target ul li
  {
  opacity: .9;
  color: black;
  }
  #collapse-target ul 
  {
    
  }

   .dropdown ul li
  {
    margin:15px;
  }
  .dropdown
  {
    margin:2px;
  }
</style>
<!--navbar-->
<nav class="navbar navbar-expand-sm  navbar-dark sticky-top" style="background-color: #4d1d7c;font-family: Montserrat, sans-serif;min-height: 80px;z-index: 9999;border-bottom: 1px solid black;font-size: 12px !important;letter-spacing: 2px;color: white">

  <button class="navbar-toggler" data-toggle="collapse" data-target="#collapse-target" >
    <!--this button is to make the below division whose id is collpase-target .as responsive ..span is a icon shown when screeen collapse -->
    <span class="navbar-toggler-icon">
    </span>
  </button>
  <div class="collapse navbar-collapse" id="collapse-target" style="margin-left: 30px">
    
     <!-- 
     <ul class="navbar-nav col-sm-8">
      <li class="nav-item">
        <a class="nav-link active" href="/skillshare/homePage.jsp" style="" >Home
        </a>
      </li>
    
      <li class="navbar-nav pull-right">
        <a class="nav-link" href="#"    data-toggle="modal" data-target="#myModal">Add_Article
        </a>
      </li>
      <li class="navbar-nav pull-right">
        <a class="nav-link" href="#"    data-toggle="modal" data-target="#askQuestionModal">Ask_Question
        </a>
      </li>
    </ul>
    -->


<div class="dropdown" >
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Campus
 </button>
  <ul class="dropdown-menu" style="background-color: green;font-size: 12px;">
    <li><a href="#">View Campuses</a></li>
    <li onclick="javascript:addCampusFunction('block')"><a href="#">Add Campus</a></li>
  </ul>
</div>

<div class="dropdown" >
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Stream
 </button>
  <ul class="dropdown-menu" style="background-color: green;font-size: 12px;">
    <li><a href="#">View Streams</a></li>
    <li onclick="javascript:addStreamFunction('block')"><a href="#">Add Stream</a></li>
  </ul>
</div>

<div class="dropdown" >
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Branch
 </button>
  <ul class="dropdown-menu" style="background-color: green;font-size: 12px;">
    <li><a href="#">View Branches</a></li>
    <li onclick="javascript:addBranchFunction('block')"><a href="#">Add Branch</a></li>
  </ul>
</div>

<div class="dropdown" >
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">City
 </button>
  <ul class="dropdown-menu" style="background-color: green;font-size: 12px;">
    <li><a href="#">View Cities</a></li>
    <li onclick="javascript:addCityFunction('block')"><a href="#">Add City</a></li>
  </ul>
</div>

<div class="dropdown" >
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">State
 </button>
  <ul class="dropdown-menu" style="background-color: green;font-size: 12px;">
    <li><a href="#">View States</a></li>
    <li onclick="javascript:addStateFunction('block')"><a href="#">Add State</a></li>
  </ul>
</div>

<div class="dropdown" >
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Country
 </button>
  <ul class="dropdown-menu" style="background-color: green;font-size: 12px;">
    <li><a href="#">View Countries</a></li>
    <li onclick="javascript:addCountryFunction('block')"><a href="#">Add Country</a></li>
  </ul>
</div>



</div>

</nav>
<div id="aaabbb" style="display: none;background-color: black;z-index: 100001 !important;position: absolute;min-height: 500px" class="container col-sm-12">
<div id="searchDivision" class="container-fluid col-sm-7" style="background-color: #ed9393">
  
</div>
</div>
<!--navbar-->
<!--header-->






<script>
  //add campus division display none or block
  function addCampusFunction(dsply)
  {  
    document.getElementById("addCampus").style.display=dsply;
    document.getElementById("addStream").style.display='none';
    document.getElementById("addBranch").style.display='none';
    document.getElementById("addCity").style.display='none';
    document.getElementById("addState").style.display='none';
    document.getElementById("addCountry").style.display='none';
  }

  function addStreamFunction(dsply)
  {
    document.getElementById("addCampus").style.display='none';
    document.getElementById("addStream").style.display=dsply;
    document.getElementById("addBranch").style.display='none';
    document.getElementById("addCity").style.display='none';
    document.getElementById("addState").style.display='none';
    document.getElementById("addCountry").style.display='none';
  }

  function addBranchFunction(dsply)
  {
    document.getElementById("addCampus").style.display='none';
    document.getElementById("addStream").style.display='none';
    document.getElementById("addBranch").style.display=dsply;
    document.getElementById("addCity").style.display='none';
    document.getElementById("addState").style.display='none';
    document.getElementById("addCountry").style.display='none';
  }

  function addCityFunction(dsply)
  {
    document.getElementById("addCampus").style.display='none';
    document.getElementById("addStream").style.display='none';
    document.getElementById("addBranch").style.display='none';
    document.getElementById("addCity").style.display=dsply;
    document.getElementById("addState").style.display='none';
    document.getElementById("addCountry").style.display='none';
  }

  function addStateFunction(dsply)
  {
    document.getElementById("addCampus").style.display='none';
    document.getElementById("addStream").style.display='none';
    document.getElementById("addBranch").style.display='none';
    document.getElementById("addCity").style.display='none';
    document.getElementById("addState").style.display=dsply;
    document.getElementById("addCountry").style.display='none';
  }

  function addCountryFunction(dsply)
  {
    document.getElementById("addCountry").style.display=dsply;
    document.getElementById("addCampus").style.display='none';
    document.getElementById("addStream").style.display='none';
    document.getElementById("addBranch").style.display='none';
    document.getElementById("addCity").style.display='none';
    document.getElementById("addState").style.display='none';
  }
  
</script>
