<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html ng-app="ui.bootstrap.demo">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
 content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
 <link
  href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700|Open+Sans:300italic,400,300,700'
  rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Audiowide'
   rel='stylesheet' type='text/css'>
   <link href='http://fonts.googleapis.com/css?family=Oswald'
    rel='stylesheet' type='text/css' />
   <link href="http://fonts.googleapis.com/css?family=Satisfy"
    rel="stylesheet" />
   <link
    href='http://fonts.googleapis.com/css?family=Arvo:400,700,400italic,700italic'
    rel='stylesheet' type='text/css'>
    <link
     href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,600,700,800,300&subset=latin,cyrillic'
     rel='stylesheet' type='text/css'>

     <link
      href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
      rel="stylesheet">
      <link href="css/overall.css" rel="stylesheet" />
      <!-- overall css written by Ke -->
      <link href="css/bootstrap.min.css" rel="stylesheet" />
      <!-- bootstrap framework -->
      <link href="css/menusm.css" rel="stylesheet" />
      <!-- mainmenu. for the navbar part -->
      <link href="css/carousel.css" rel="stylesheet" />
      <!-- for the rolling pics -->
      <link href="css/cardFlip.css" rel="stylesheet" />
      <!-- Fashion or die -->
      <link href="css/style_common.css" rel="stylesheet" />
      <!-- each item css -->
      <link href="css/style10.css" rel="stylesheet" />
      <!-- each item css animation -->

      <link rel="stylesheet" type="text/css" href="css/semantic.min.css">
       <!-- four fliping icon at the bottom footer part css (may conflict with bootstrap) -->
       <link rel="stylesheet" type="text/css" href="css/homepage.css">
        <!-- footer part css (may conflict with bootstrap) -->
        <link
         href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
         rel="stylesheet">

         <link
          href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
          rel="stylesheet">
          <script
           src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular.js"></script>
          <script
           src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.2.js"></script>
          <script src="js/angular_home.js"></script>

          <script
           src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.js"></script>
          <script src="js/semantic.js"></script>
          <!-- four fliping icon at the bottom footer part css (may conflict with bootstrap) -->
          <script src="js/homepage.js"></script>
          <script src="js/bootstrap.min.js"></script>
          <%@ include file="headConfig.html"%>
          <script>
 function goToDetail(obj) {
     //alert(obj.getAttribute('tag'));
     var oid = obj.getAttribute('tag');
     var url = "detail.jsp?oid=" + oid;
     window.location.href = url;
 }

 function filter(obj) {
     var arr = $(".panel-body input");
     //alert(arr.length);
     var condiction = "";
     var wea = "";
     var occ = "";
     var sty = "";
     for (var i = 0; i < arr.length; i++) {
         if (arr[i].checked == true
                 && arr[i].name == "weather") {
             wea += arr[i].value + ",";
         }
         if (arr[i].checked == true
                 && arr[i].name == "occassion") {
             occ += arr[i].value + ",";
         }
         if (arr[i].checked == true
                 && arr[i].name == "style") {
             sty += arr[i].value + ",";
         }
     }

     if (wea == "" || wea == "1,2,3,4,") {
         wea = "";
     } else {
         wea = wea.substring(0,
                 wea.length - 1);
     }

     if (occ == "" || occ == "1,2,3,4,5,") {
         occ = "";
     } else {
         occ = occ.substring(0,
                 occ.length - 1);
     }

     if (sty == "" || sty == "1,2,") {
         sty = "";
     } else {
         sty = sty.substring(0,
                 sty.length - 1);
     }

     //alert("w: "+wea + "\n o: "+occ+"\n s: "+sty);

     if (wea == "" && occ == "" && sty == "") {
         window.location = "index.jsp";
     } else {
         var url = "index.jsp?weather="
                 + wea + "&occassion=" + occ
                 + "&style=" + sty;
         //alert(url);
         window.location = url;
     }
 }
                                </script>
</head>
<body>
 <jsp:include page="commonHeader.jsp" />

 <!-- body -->

 <div ng-controller="PaginationDemoCtrl" class="centered">
  <div class="container"
   style="position: relative; min-width: 1170px; min-height: 650px; overflow: auto;">
   <div class="bodybackground"></div>
   <div class="panel panel-default left-nav" style="overflow: auto;">
    <div class="panel-heading">Filter</div>
    <div class="panel-body"
     style="font-size: 13px; font-family: 'Arial'">

     <div ng-controller="AccordionOneCtrl">
      <accordion close-others="oneAtATime"> <accordion-group
       is-open="status.open"> <accordion-heading>
      Weather <i class="pull-right glyphicon"
       ng-class="{'glyphicon-chevron-down': status.open, 'glyphicon-chevron-right': !status.open}"></i>
      </accordion-heading>
      <p style="font-size: 20px; font-family: 'Audiowide', cursive">Weather</p>


      <label class="checkbox inline" style="display: inline-block;">
       <input type="checkbox" value="1" name="weather"
       onclick="filter(this);"> Spring 
      </label> &nbsp;&nbsp;&nbsp; <label class="checkbox"
       style="display: inline-block;"> <input type="checkbox"
       value="2" name="weather" onclick="filter(this);"> Summer
      </label>
      <br />

      <label class="checkbox inline" style="display: inline-block;">
       <input type="checkbox" value="3" name="weather"
       onclick="filter(this);"> Fall 
      </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
       class="checkbox inline" style="display: inline-block;"> <input
       type="checkbox" value="4" name="weather" onclick="filter(this);">
        Winter </label>

      <hr style="height: 2px; background: #BDB76B; margin: 0" />
      <br />
      </accordion-group> </accordion>
     </div>


     <div ng-controller="AccordionTwoCtrl">
      <accordion close-others="oneAtATime"> <accordion-group
       is-open="status.open"> <accordion-heading>
      Occassion <i class="pull-right glyphicon"
       ng-class="{'glyphicon-chevron-down': status.open, 'glyphicon-chevron-right': !status.open}"></i>
      </accordion-heading>

      <p style="font-size: 20px; font-family: 'Audiowide', cursive">Occassion</p>
      <label class="checkbox inline" style="display: inline-block;">
       <input type="checkbox" value="1" name="occassion"
       onclick="filter(this);"> Formal 
      </label> &nbsp;&nbsp;&nbsp; <label class="checkbox"
       style="display: inline-block;"> <input type="checkbox"
       value="2" name="occassion" onclick="filter(this);">
        Casual </label>
      <br />
      <label class="checkbox inline" style="display: inline-block;">
       <input type="checkbox" value="3" name="occassion"
       onclick="filter(this);"> School 
      </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="checkbox inline"
       style="display: inline-block;"> <input type="checkbox"
       value="4" name="occassion" onclick="filter(this);">
        Dating </label>
      <br />
      <label class="checkbox inline" style="display: inline-block;">
       <input type="checkbox" value="5" name="occassion"
       onclick="filter(this);"> atHome 
      </label>

      <hr style="height: 2px; background: #BDB76B; margin: 0" />
      <br />
      </accordion-group> </accordion>
     </div>






     <div ng-controller="AccordionThirdCtrl">
      <accordion close-others="oneAtATime"> <accordion-group
       is-open="status.open"> <accordion-heading>
      Style <i class="pull-right glyphicon"
       ng-class="{'glyphicon-chevron-down': status.open, 'glyphicon-chevron-right': !status.open}"></i>
      </accordion-heading>
      <p style="font-size: 20px; font-family: 'Audiowide', cursive">Style</p>
      <label class="checkbox inline" style="display: inline-block;">
       <input type="checkbox" value="1" name="style"
       onclick="filter(this);"> East 
      </label> &nbsp;&nbsp;&nbsp; <label class="checkbox"
       style="display: inline-block;"> <input type="checkbox"
       value="2" name="style" onclick="filter(this);"> West </label>
      <br />
     </div>
    </div>

    </accordion-group>
    </accordion>
    <input type="search" ng-model="q.name"
     placeholder="filter friends..." />
   </div>







   <!--    <pagination total-items="bigTotalItems" ng-model="bigCurrentPage" max-size="maxSize"  class="pagination-sm" boundary-links="true" rotate="false" num-pages="numPages" style="position: relative;
  left: 50%;"></pagination> -->
   <pagination num-pages="numPages" items-per-page="itemPerPage"
    total-items="bigTotalItems" ng-model="bigCurrentPage"
    max-size="maxSize" class="pagination-sm" boundary-links="true"
    rotate="false" style="position: relative;
  left: 50%;"></pagination>
   <pre style="position: relative; left: 50%;">Page: {{bigCurrentPage}} / {{numPages}} </pre>
   <div>
    <div id="img_wrapper">

     <%@ include file="img2.html"%>
    </div>

   </div>




  </div>
 </div>
 <!-- end of container -->


 <%@ include file="commonFooter.html"%>
</body>
</html>
