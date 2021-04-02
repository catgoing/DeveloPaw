<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Freelancer - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet" />
    </head>
    <script>
        $(function (){
            $('.report_class').click(function(){
                var class_no = $('input[name="report_class"]:checked').val();
                if(class_no == 5) {
                    $('.readonly').prop('readonly', false);
                } else {
                    $('.readonly').prop('readonly', true);
                    $('.readonly').val("");
                }
            });
        });
    </script>
    <body id="page-top">
        <!-- Navigation-->


        <!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">ì ê³ íê¸° ë²í¼</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Grid Items-->
                <div class="row justify-content-center">
                    <!-- Portfolio Item 1-->

                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/report.png" alt="" />
                        </div>
                    </div>
                   
                </div>
            </div>
        </section>
 
        <!-- Portfolio Modals-->
        <!-- Portfolio Modal 1-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal1Label">ì ê³ íê¸°</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                    <hr>
                                    </div>
                                    <!-- Portfolio Modal - Text-->
                                    <form action="/community/report1" method="POST">
                                    <div style="text-align: left; margin-left:50px;">
                                    <input type="radio" class="report_class" name="report_class" value="1"> 저작권 침해 및 불법자료<br>
                                    <input type="radio" class="report_class" name="report_class" value="2"> 도배성 게시글<br>
                                    <input type="radio" class="report_class" name="report_class" value="3"> 허위사실<br>
                                    <input type="radio" class="report_class" name="report_class" value="4"> 불법 광고 <br>
                                    <input type="radio" class="report_class" name="report_class" value="5"> 기타  <br>
                                    <input type="textarea" class="readonly" name="content"> 
                                    <input type="hidden" name="board_no" value=${vo.board_no }>
                                    <input type="hidden" name="accused_serial" value=${tempMemberSerial }>
                                    <input type="hidden" name="comments_no" value=${commentList.coments_no }> 
                                    
                                    </div>
                                    <br>
                                    <input type="submit" value="확인" >
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
