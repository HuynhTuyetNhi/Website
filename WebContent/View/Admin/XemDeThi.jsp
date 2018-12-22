<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
        crossorigin="anonymous">
    <link rel="stylesheet" href="css/styleContent.css">
</head>

<body>

    <div class="container ">

        <article class="playfield " id="">

            <div class="test-playfield">

                <div class="full-toeic-test ">
                    <div style="margin-bottom: 60px;color: blue" class="text-center">
                        <h1 class="test-name">
                            Thi thử TOEIC
                            <br />
                            Đề TOEIC TEST 1
                        </h1>
                        
                    </div>
                    <div class="test-content">
                        <form id="form-test" method="POST" onsubmit="setTimeTaken($('#time-taken'));" class="formtest">
                           

                           

                              
                               
                                
                               
                               

                          <c:forEach items="${chitietdethi}" var="chitietdethi" >
                            <section id="part-2" class="test-part">
                             
                                <div class="mcqg-wrapper">
                                    <div class="mcq-wrapper">
                                        <span class="question-num">1.</span>
                                        <span class="question-content ">
                                           ${chitietdethi.tenCauHoi}
                                        </span>
                                        <div class="options-wrapper">
                                            <div class="option">
                                                <input id="1-A" type='radio' name="1" value="A" />
                                                <label for="1-A">(A)
                                                    ${chitietdethi.dapAnA}
                                                </label>
                                            </div>
                                            <div class="option">
                                                <input id="1-B" type='radio' name="1" value="B" />
                                                <label for="1-B">(B)
                                                   ${chitietdethi.dapAnB}
                                                </label>
                                            </div>
                                            <div class="option">
                                                <input id="1-C" type='radio' name="1" value="C" />
                                                <label for="1-C">(C)
                                                    ${chitietdethi.dapAnC}
                                                </label>
                                            </div>
                                            <div class="option">
                                                <input id="1-D" type='radio' name="1" value="D" />
                                                <label for="1-D">(D)
                                                    ${chitietdethi.dapAnD}
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    
                                   
                               


                                </div>
                            </section>
                            </c:forEach>
                        </form>
                    </div>
                </div>
            </div>


        </article>


    </div>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
        crossorigin="anonymous"></script>
</body>

</html>