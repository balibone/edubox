<%@include file="/webapp/commoninfrastructure/SessionCheck.jspf" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Vector"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Unify Errands - Job Listing</title>

        <!-- CASCADING STYLESHEET -->
        <link href="css/unify/systemuser/baselayout/bootstrap-v4.min.css" rel="stylesheet" type="text/css">
        <link href="css/unify/systemuser/baselayout/animate-v3.5.2.min.css" rel="stylesheet" type="text/css">
        <link href="css/unify/systemuser/baselayout/font-awesome-v4.7.0.min.css" rel="stylesheet" type="text/css">
        <link href="css/unify/systemuser/baselayout/owl.carousel-v2.2.1.min.css" rel="stylesheet" type="text/css">
        <link href="css/unify/systemuser/baselayout/owl.theme.default.min.css" rel="stylesheet" type="text/css">
        <link href="css/unify/systemuser/baselayout/nouislider-v11.0.3.min.css" rel="stylesheet" type="text/css">
        <link href="css/unify/systemuser/baselayout/iziModal.min.css" rel="stylesheet" type="text/css">
        <link href="css/unify/systemuser/baselayout/style.min.css" rel="stylesheet" type="text/css">

        <link href="css/unify/systemuser/baselayout/jplist/jquery-ui.css" rel="stylesheet" type="text/css">
        <link href="css/unify/systemuser/baselayout/jplist/jplist.core.min.css" rel="stylesheet" type="text/css" />
        <link href="css/unify/systemuser/baselayout/jplist/jplist.filter-toggle-bundle.min.css" rel="stylesheet" type="text/css" />
        <link href="css/unify/systemuser/baselayout/jplist/jplist.pagination-bundle.min.css" rel="stylesheet" type="text/css" />
        <link href="css/unify/systemuser/baselayout/jplist/jplist.history-bundle.min.css" rel="stylesheet" type="text/css" />
        <link href="css/unify/systemuser/baselayout/jplist/jplist.textbox-filter.min.css" rel="stylesheet" type="text/css" />
        <link href="css/unify/systemuser/baselayout/jplist/jplist.jquery-ui-bundle.min.css" rel="stylesheet" type="text/css" />
        
        <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet" type="text/css">
        <link href="css/unify/systemuser/weblayout/errands/ViewJobListingSysCSS.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <!-- MOBILE SIDE NAVIGATION -->
        <nav class="offcanvas">
            <div class="offcanvas-content">
                <div id="list-menu" class="list-menu list-group" data-children=".submenu">
                    <a href="index.html"><i class="fa fa-fw fa-home"></i>&nbsp;Unify Home</a>
                    <div class="submenu">
                        <a data-toggle="collapse" href="#" data-target="#marketplaceSub" role="button" aria-expanded="false" aria-controls="marketplaceSub"><i class="fa fa-fw fa-file"></i>&nbsp;Marketplace</a>
                        <div id="marketplaceSub" class="collapse" data-parent="#list-menu" role="tabpanel"><a href="about.html">Item Listing</a></div>
                    </div>
                    <div class="submenu">
                        <a data-toggle="collapse" href="#" data-target="#errandsSub" role="button" aria-expanded="false" aria-controls="errandsSub"><i class="fa fa-fw fa-file"></i>&nbsp;Errands</a>
                        <div id="errandsSub" class="collapse" data-parent="#list-menu" role="tabpanel"><a href="about.html">Errands Listing</a></div>
                    </div>
                    <div class="submenu">
                        <a data-toggle="collapse" href="#" data-target="#companyReviewSub" role="button" aria-expanded="false" aria-controls="companyReviewSub"><i class="fa fa-fw fa-user"></i>&nbsp;Company Review</a>
                        <div id="companyReviewSub" class="collapse" data-parent="#list-menu" role="tabpanel"><a href="account-order.html">Company Listing</a></div>
                    </div>
                    <a href="index.html"><i class="fa fa-fw fa-home"></i>&nbsp;Unify Home</a>
                </div>
            </div>
        </nav>
        <div class="content-overlay"></div>

        <!-- PAGE TOP HEADER -->
        <div class="top-header">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="d-flex justify-content-between">
                            <nav class="nav">
                                <a class="nav-item nav-link d-none d-sm-block" href="#">Unify @ EduBox</a>
                                <a class="nav-item nav-link d-none d-sm-block" href="#"><i class="fa fa-phone"></i> +123-456-789</a>
                            </nav>
                            <ul class="nav">
                                <li class="nav-item d-none d-md-block">
                                    <a href="#" class="nav-link">
                                        <i class="fa fa-heart-o"></i>&nbsp;&nbsp;Likes
                                    </a>
                                </li>
                                <li class="nav-item d-none d-md-block">
                                    <a href="#" class="nav-link">
                                        <i class="fa fa-envelope"></i>&nbsp;&nbsp;Messages
                                    </a>
                                </li>
                                <li class="nav-item d-none d-md-block">
                                    <a href="ProfileSysUser?pageTransit=goToUnifyUserAccount" class="nav-link">
                                        <i class="fa fa-envelope"></i>&nbsp;&nbsp;My Account
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- PAGE MIDDLE NAVIGATION -->
        <div class="middle-header">
            <div class="container">
                <div class="row py-2 py-lg-0">
                    <div class="col-2 col-sm-1 d-block d-lg-none">
                        <div class="d-flex align-items-center h-100 justify-content-center menu-btn-wrapper">
                            <button class="btn btn-lg border-0 btn-link offcanvas-btn p-0" type="button">
                                <i class="fa fa-bars"> </i>
                            </button>
                        </div>
                    </div>
                    <div class="col-2 col-sm-1 col-lg-3 pr-0">
                        <div class="d-flex align-items-center h-100 logo-wrapper">
                            <a href="index.html" class="d-lg-none">
                                <img src="images/edubox-logo.png" class="logo" />
                            </a>
                            <a href="index.html" class="d-none d-lg-flex mb-2 mb-lg-0">
                                <img src="images/edubox-logo.png" class="logo" />
                            </a>
                        </div>
                    </div>
                    <div class="col-8 col-sm-6 col-md-7 col-lg-6">
                        <div class="d-flex align-items-center h-100">
                            <div class="input-group input-group-search">
                                <div class="input-group-prepend d-none d-md-flex">
                                    <select class="select-dropdown">
                                        <option value="all">All Categories</option>
                                        <option value="marketplace">Marketplace</option>
                                        <option value="errands">Errands</option>
                                        <option value="companyReview">Company Review</option>
                                    </select>
                                </div>
                                <input type="text" class="form-control" id="search-input" placeholder="Search here..." aria-label="Search here..." autocomplete="off" />
                                <span class="input-group-append">
                                    <button class="btn btn-theme btn-search" type="button"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 col-sm-4 col-md-3 col-lg-3 d-none d-sm-block">
                        <div class="d-flex align-items-center h-100 float-right abg-secondary">
                            <div class="btn-group btn-group-sm mr-3" role="group">
                                <a class="btn btn-outline-theme" href="MarketplaceSysUser?pageTransit=goToNewItemListingSYS" role="button">
                                    <i class="fa fa-user-plus d-none d-lg-inline-block"></i>&nbsp;Sell An Item
                                </a>
                                <a class="btn btn-outline-theme" href="ErrandsSysUser?pageTransit=goToNewJobListingSYS" role="button">
                                    <i class="fa fa-user-plus d-none d-lg-inline-block"></i>&nbsp;Post A Job
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="container">
            <div id="unifyPageNAV"></div>
            <!-- BREADCRUMB -->
            <div class="breadcrumb-container">
                <div class="container">
                    <nav aria-label="breadcrumb" role="navigation">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Unify Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Errands (Job Listing)</li>
                        </ol>
                    </nav>
                </div>
            </div>

            <div id="contentArea" class="container jplist" style="margin-bottom: 30px;">
                <%                    
                    String successMessage = (String) request.getAttribute("successMessage");
                    if (successMessage != null) {
                %>
                <div class="alert alert-success" id="successPanel" style="margin: 10px 0 30px 0;">
                    <button type="button" class="close" id="closeSuccess">&times;</button>
                    <%= successMessage%>
                </div>
                <%  }   %>
                <%
                    String errorMessage = (String) request.getAttribute("errorMessage");
                    if (errorMessage != null) {
                %>
                <div class="alert alert-danger" id="errorPanel" style="margin: 10px 0 30px 0;">
                    <button type="button" class="close" id="closeError">&times;</button>
                    <%= errorMessage%>
                </div>
                <%  }   %>
                <div class="row">
                    <div class="col-lg-3 col-md-4 mb-3 jplist-search">
                        <button class="btn btn-outline-theme btn-block dropdown-toggle d-md-none" type="button" data-toggle="collapse" data-target="#collapseFilter" aria-expanded="false" aria-controls="collapseFilter">
                            Search Filter
                        </button>
                        <div class="collapse d-md-block pt-3 pt-md-0" id="collapseFilter">
                            <div class="row">
                                <div class="col-12 col-sm-6 col-md-12">
                                    <div class="filter-sidebar">
                                        <div class="title"><span>Job Filter</span></div>
                                        <input type="text" data-path=".jobTitle" class="form-control" placeholder="Search Item ..." 
                                               aria-label="Search Item ..." data-control-type="textbox" 
                                               data-control-name="transmission-text-filter" data-control-action="filter" />
                                    </div>
                                    <div class="filter-sidebar">
                                        <div class="jplist-range-slider" data-control-type="range-slider" 
                                             data-control-name="range-slider-weight" data-control-action="filter"
                                             data-path=".jobRate" data-slider-func="priceSlider" data-setvalues-func="priceValues">

                                            <div class="title"><span>Price Filter</span></div>
                                            <div class="input-group input-group-sm mb-3" data-control-type="range-slider" 
                                                 data-control-name="range-slider-weight" data-control-action="filter" data-path=".itemPrice">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">Min : $</span>
                                                </div>
                                                <input type="text" class="form-control" name="min-price" id="min-price" />
                                                <div class="input-group-append input-group-prepend">
                                                    <span class="input-group-text">Max : $</span>
                                                </div>
                                                <input type="text" class="form-control" name="max-price" id="max-price" />
                                            </div>
                                            <div class="price-range">
                                                <div data-type="ui-slider"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="jplist-label" data-type="Page {current} of {pages}" 
                             data-control-type="pagination-info" data-control-name="paging" data-control-action="paging">
                        </div>
                        <div class="jplist-pagination" data-control-type="pagination" 
                             data-control-name="paging" data-control-action="paging">
                        </div>
                    </div>

                    <div class="col-lg-9 col-md-8">
                        <div class="title"><span>Job Listing</span></div>
                        <div class="jplist-search sorting-bar">
                            <div class="mr-3 jplist-drop-down" remove-class-on-xs="mr-3" add-class-on-xs="w-100" 
                                 data-control-type="sort-drop-down" data-control-name="sort" data-control-action="sort">
                                <ul>
                                    <li><span data-path=".jobTitle default" data-order="asc" data-type="text">Title Asc</span></li>
                                    <li><span data-path=".jobTitle" data-order="desc" data-type="text">Title Desc</span></li>
                                    <li><span data-path=".jobRate" data-order="asc" data-type="text">Price Asc</span></li>
                                    <li><span data-path=".jobRate" data-order="desc" data-type="text">Price Desc</span></li>
                                </ul>
                            </div>
                            <div class="jplist-drop-down" add-class-on-xs="w-100" data-control-type="items-per-page-drop-down" 
                                 data-control-name="paging" data-control-action="paging" data-control-animate-to-top="true">
                                <ul>
                                    <li><span data-number="4">4 per page</span></li>
                                    <li><span data-number="8">8 per page</span></li>
                                    <li><span data-number="12" data-default="true">12 per page</span></li>
                                    <li><span data-number="16">16 per page</span></li>
                                </ul>
                            </div>
                        </div>

                        <!-- ITEM LISTING -->
                        <div id="jobListing" class="row equal-height" add-class-on-xs="no-gutters">
                            <div class="list searchresult-row">
                                <%
                                    ArrayList<Vector> jobListSYS = (ArrayList) request.getAttribute("jobListSYS");
                                    if (!jobListSYS.isEmpty()) {
                                        for (int i = 0; i <= jobListSYS.size() - 1; i++) {
                                            Vector v = jobListSYS.get(i);
                                            String jobID = String.valueOf(v.get(0));
                                            String jobImage = String.valueOf(v.get(1));
                                            String jobTitle = String.valueOf(v.get(2));
                                            String jobCategoryName = String.valueOf(v.get(3));
                                            String jobPosterName = String.valueOf(v.get(4));
                                            String jobPostDate = String.valueOf(v.get(5));
                                            String jobWorkDate = String.valueOf(v.get(6));
                                            String startLocation = String.valueOf(v.get(7));
                                            String jobRateType = String.valueOf(v.get(8));
                                            String jobRate = String.valueOf(v.get(9));
                                %>
                                <div class="col-xl-12 col-md-12 col-12 d-block d-lg-none d-xl-block list-item">
                                    <div class="card card-product">
                                        <div class="card-content">
                                            <div class="card-body" style="margin-bottom: 8px">
                                                <div class="row" >
                                                    <div class="col-xl-3 col-md-3 col-3">
                                                        <div class="img-wrapper">
                                                            <a href="ErrandsSysUser?pageTransit=goToViewJobDetailsSYS&hiddenJobID=<%= jobID%>&hiddenCategoryName=<%= jobCategoryName%>">
                                                                <img class="card-img-top" style="width: 160px; height: 150px;" src="uploads/unify/images/errands/job/<%= jobImage%>" />
                                                            </a>
                                                        </div>
                                                    </div>      
                                                    <div class="col-xl-6 col-md-6 col-6">
                                                        <%--<div class="tools tools-left" data-animate-in="fadeInLeft" data-animate-out="fadeOutUp">
                                                            <div class="btn-group-vertical" role="group" aria-label="card-product-tools">
                                                            </div>
                                                        </div>--%>
                                                        <span class="job-title"><strong><%= jobTitle%></strong></span><br/>
                                                        <span class="category"><%= jobCategoryName%></span><br/>
                                                        <img class="user-pic" src="ematis4_big.jpg" width="20" height="20">
                                                        <span class="user"><strong>&nbsp;<%= jobPosterName%></strong></span>
                                                        <span class="post-date"><%= jobPostDate%></span><br/><br/>
                                                        <i class="far fa-calendar-alt"></i>&nbsp; <span class="date"><%= jobWorkDate%></span>&nbsp; 
                                                        <i class="far fa-clock"></i><span class="time"> 13:00</span>&nbsp;
                                                        <i class="fas fa-map-marker-alt"></i><span class="location"> &nbsp;<%= startLocation%></span>
                                                    </div>
                                                    <div class="col-xl-3 col-md-3 col-3">        
                                                        <div class="job-price">
                                                            <span class="type"><%= jobRateType%></span><br/><br/>
                                                            <span class="rate"><strong>S$<%= jobRate%></strong></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                              
                                        <div class="card-footer text-muted mt-1" >
                                            <span class="float-left"><span class="ml-1 price itemPrice">$<%= jobRate%></span></span>
                                            <%--<span class="float-right">
                                                 <i class="fa fa-heart-o"></i>&nbsp;
                                                <%  if (itemNumOfLikes.equals("0") || itemNumOfLikes.equals("1")) {%><%= itemNumOfLikes%>&nbsp;Like
                                                <%  } else {%><%= itemNumOfLikes%>&nbsp;Likes
                                                <%  }   %> 
                                            </span>--%>
                                        </div>
                                    </div>
                                </div>
                                <%      }   %>
                                <%  }%>
                            </div>
                        </div>
                        <!--<div class="box jplist-no-results text-shadow align-center">
                            <p><strong>No results found. Please refine your search.</strong></p>
                        </div>-->
                        <div class="jplist-search">
                            <div class="jplist-label" data-type="Displaying {end} of all {all} results" 
                                 data-control-type="pagination-info" data-control-name="paging" data-control-action="paging">
                            </div>
                            <div class="jplist-pagination" data-control-animate-to-top="true" 
                                 data-control-type="pagination" data-control-name="paging" data-control-action="paging">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="unifyFooter"></div>
            <a href="#top" class="back-top text-center" onclick="$('body,html').animate({scrollTop: 0}, 500); return false">
                <i class="fa fa-angle-double-up"></i>
            </a>
            <!--<div id="itemcard-iframe"></div>-->
        </div>


        <!-- #1. jQuery -> #2. Popper.js -> #3. Bootstrap JS -> #4. Other Plugins -->
        <script src="js/unify/systemuser/basejs/jquery-v3.2.1.min.js" type="text/javascript"></script>
        <script src="js/unify/systemuser/basejs/popper.min.js" type="text/javascript"></script>
        <script src="js/unify/systemuser/basejs/bootstrap-v4.min.js" type="text/javascript"></script>
        <script src="js/unify/systemuser/basejs/bootstrap3-typeahead.min.js" type="text/javascript"></script>
        <script src="js/unify/systemuser/basejs/owl.carousel-v2.2.1.min.js" type="text/javascript"></script>
        <script src="js/unify/systemuser/basejs/nouislider-v11.0.3.min.js" type="text/javascript"></script>
        <script src="js/unify/systemuser/basejs/iziModal.min.js" type="text/javascript"></script>
        <script src="js/unify/systemuser/basejs/style.min.js" type="text/javascript"></script>
        <%--<script src="js/unify/systemuser/webjs/marketplace/ViewItemListingSYSJS.js" type="text/javascript"></script>--%>

        <script src="js/unify/systemuser/basejs/jplist/jquery-ui.js" type="text/javascript"></script>
        <script src="js/unify/systemuser/basejs/jplist/jplist.core.min.js"></script>
        <script src="js/unify/systemuser/basejs/jplist/jplist.filter-dropdown-bundle.min.js"></script>
        <script src="js/unify/systemuser/basejs/jplist/jplist.filter-toggle-bundle.min.js"></script>
        <script src="js/unify/systemuser/basejs/jplist/jplist.history-bundle.min.js"></script>
        <script src="js/unify/systemuser/basejs/jplist/jplist.jquery-ui-bundle.min.js"></script>
        <script src="js/unify/systemuser/basejs/jplist/jplist.pagination-bundle.min.js"></script>
        <script src="js/unify/systemuser/basejs/jplist/jplist.sort-bundle.min.js"></script>
        <script src="js/unify/systemuser/basejs/jplist/jplist.textbox-filter.min.js"></script>
    </body>
</html>