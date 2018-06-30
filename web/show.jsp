<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>显示界面</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <%@ include  file="head-protraits.jsp"%>
           <!-- /. NAV TOP  --
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Blank Page</h2>   
                        <h5>Welcome Jhon Deo , Love to see you back. </h5>
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr />


                <div class="row">
                    <s:iterator value="cl">

                    <div class="col-md-4 col-sm-4">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                Success Panel
                            </div>
                            <div class="panel-body">
                                <p>${id} </p>
                                <p>${ClassBuild} </p>
                                <p>${ClassUsing} </p>
                                <p>${ClassUsingId} </p>
                                <p>${ClassStart} </p>
                                <p>${ClassEnd} </p>
                                <p>${ClassRemark} </p>
                            </div>
                            <div class="panel-footer">
                                <button><a href="Subs?id=${id}"> button</a></button>
                            </div>
                        </div>
                    </div>
                    </s:iterator>

                </div>



    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>
