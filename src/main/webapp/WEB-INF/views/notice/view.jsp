<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <script>
	$(function() {
		$("#back").on("click", function() {
			location.href = "../notice/notice_list?page=1";
		})
		$("#dbtn").on("click", function() {
			if(confirm("정말 삭제하시겠습니까?")){
			location.href = "../notice/delete?n_seq="+${result.n_seq};
			}
		})
	});
	</script>
    </head>
    <style>
        *{box-sizing: border-box}
        div{border: 0.px solid black}


        /*    모든 영역*/
        #container{height: 1500px}

        /*    왼쪽 메뉴*/
        #sidemenu{float: left; width: 271px; position: fixed; left: 50px; padding: 32px 0 10px 50px; border: 0px;}
        #sidefix{border: 0px;}

        #sidefix ul{list-style: none;}
        #sidefix ul li a{
            text-decoration: none; 
            color: black; 
            position: relative;
            display: inline-block;
            margin: 7px;
            color: #000;
            font-size: 11px;        
            text-transform: uppercase;                     
        }
        #sidefix ul li a:hover{opacity: 50%}
        #category ul li a{font-size: 11px;}
        #search{
            width: 110px;
            height: 17px;
            border: 0;
            vertical-align: middle;
            background: none;
            border-bottom: 1px solid #3e3e3e;
        }

        /*    중앙 내용*/
        #contents{float: left; width: 1212px; height: 1500px; margin-left: 420px; margin-top: 69px; font-size: 13px;}

        #product_ul{list-style: none; display: table;}
        #product_info{list-style: none; font-size: 12px;}
        .box_div img{width: 375px; height: 400px; padding: 8px}

        .box_div img:hover{opacity: 50%}

        .box_li {float: left;}

        /*    오른쪽 메뉴*/
        #rightmenu{float:left; width: 250px; position: fixed; right:130px; padding: 49px 80px 0px 0px; text-align: right;}
        #rightmenu ul li{
            text-decoration: none; 
            color: black; 
            display: inline-block;
            margin: 0px 0px 5px 0;
            font-size: 11px;
            text-transform: uppercase;                     
        }

        /*        FOOTER*/
        .footer {font-size: 11px; text-align: center;}
        .footer a{text-decoration: none; color: black;}
         .nheader{
		 float: left;
		 text-align: center;
		 margin-top: 20px;
		 background-color: #f6f6f6;;
		 height: 25px;
		 line-height: 24px;
	 	 }
	 
	     .ncontents{
		 float: left;
		 overflow-y:auto;
		 word-wrap:break-word;
		 line-height: 24px;
	 	 }
	 	 
	 	 #n_hover:hover{
	 	opacity: 50%;
	     }
	     #back{
	     border: 1px solid #c4c4c4; background-color: rgba(266,266,266,0); color: #c4c4c4; padding: 5px;
	     }
	     #back:hover{
	 	 opacity: 50%;
	     }
	     #dbtn{
	     border: 1px solid #c4c4c4; background-color: rgba(266,266,266,0); color: #c4c4c4; padding: 5px;
	     }
	     #dbtn:hover{
	     opacity: 50%;
	     }
	     #modify{
	     border: 1px solid #c4c4c4; background-color: rgba(266,266,266,0); color: #c4c4c4; padding: 5px;
	     }
	     #modify:hover{
	     opacity: 50%;
	     }

    </style>
    <body>
        <!--       전체 영역-->
        <div id=OSF_ALL>
            <!--           왼쪽메뉴, 중앙 내용, 오른쪽 메뉴 -->
            <div id="container">

                <!--               사이드메뉴-->
                <div id="sidemenu">
                    <div id="sidefix">                
                        <a href="">
                            <img src="/img/logo.png" style="width: 130px;
                                                                            position: relative; left: 45px">
                        </a>                          
                        <div class="memberpage"> 
                            <ul>
                                <li>
                                    <a href="">login</a>
                                    <a href="">join us</a>
                                </li>
                                <li>
                                    <a href="">my page</a>
                                    <a href="">cart </a>
                                    <a href="">order</a>                                  
                                </li>

                            </ul>                       
                        </div>

                        <div id="category">
                            <ul>
                                <li><a href="">NEW ARRIVAL</a></li>
                                <li><a href="">BEST ITEM</a></li>
                                <li><a href="">OUTERWEAR</a></li>
                                <li><a href="">TOP</a></li>
                                <li><a href="">PANTS</a></li>
                                <li><a href="">ACC</a></li>
                                <li><a href="" style="font-size: 11px;">OSF DAILY BOOK</a> </li> 

                            </ul>
                        </div>

                        <div>
                            <ul>
                                <li>
                                    <a href=""><img src="/img/search.png" style="width: 15px"></a>
                                    <input id="search" type="text">

                                </li>
                            </ul>
                            <ul>
                                <li> 
                                    <a href=""><img src="/img/instar.png" width="20px" style="position: relative; top: 6px; border-radius: 9px"></a> 
                                    <a href=""><img src="/img/kakao.png" width="20px" style="position: relative; top: 6px; border-radius: 9px"></a>
                                </li>
                            </ul>


                        </div>
                    </div>
                </div>

                 <!--               중앙 내용-->
                <form action="../notice/modify" method="post">
                <div id="contents">
                <div>Notice</div>
                <div style="width: 1050px;">
                <div class="nheader" style="width: 5%; border-right: 0.5px solid #eeeeee;">${result.n_seq}</div>
                <input type="hidden" value="${result.n_seq}" name="n_seq">
                <div class="nheader" style="width: 60%; border-right: 0.5px solid #eeeeee;">${result.title}</div>
                <input type="hidden" value="${result.title}" name="title">
                <div class="nheader" style="width: 10%; border-right: 0.5px solid #eeeeee;">${result.writer}</div>
                <input type="hidden" value="${result.writer}" name="writer">
                <div class="nheader" style="width: 15%; border-right: 0.5px solid #eeeeee;">${result.sDate}</div>
                <div class="nheader" style="width: 10%;"> ${result.view_count}</div>
                </div>
                <div style="width: 1050px;">
                <div style="height: 70px;"></div>
                </div>
                <div style="width: 1050px; border-right: 0.5px solid #fdfdfd;">
                <div class="ncontents" style="width: 100%;">${result.contents}</div>
                <input type="hidden" value="${result.contents}" name="contents">
                </div>
                <c:choose>
                <c:when test="${loginInfo eq 'OSF'}">
                <div style="width: 1050px; margin-top: 30px;">
        		<div style="width: 100%; text-align: right; border-right: 1px solid #fdfdfd;"><input type="button" id="dbtn" value="삭제하기">&nbsp;&nbsp;<input type="submit" id="modify" value="수정하기">&nbsp;&nbsp;<input type="button" id="back" value="뒤로가기"></div>
                </div>	
                </c:when>
                <c:otherwise>
                <div style="width: 1050px; margin-top: 30px;">
                <div style="width: 100%; text-align: right; border-right: 1px solid #fdfdfd;"><input type="button" id="back" value="뒤로가기"></div>	
                </div>
                </c:otherwise>
                
                </c:choose>
               
                <div style="width: 1200px; margin-left: 18px; margin-top: 100px;">
                <div class="footer" style="width: 100%;">
                <a href="">사이트 소개</a> |
                <a href="">이용약관</a> |
                <a href="">개인정보취급방침</a> |
                <a href="">이메일 무단수집거부</a> |
                <a href="">책임의 한계와 법적고지</a> |
                <a href="">이용안내</a> |
                <a href="">모바일 버전</a>
                <br>
                <br>
                <div>
                    COMPANY : ONESFIT
                    <br> PHONE : 010-7777-7777
                    <br> 사업자 번호 : 145-51-00571
                    <br> 주소 : 강원도 원주시 우산동 상지대길 9 (402호)
                    <br> OWNER : 원에스핏 | WEB MANAGER : 잊재웡
                    <br> @ OSF ONESFIT

                </div>
            </div>
        </div>
                </div>
                </form>


                <div id="rightmenu">
                    <ul>
                        <li><b>OPENING</b></li><br>
                        <li class="phone">T. 02-777-7777</li>                             
                        <li class="font10">MON-FRI / 11AM  - 5PM   </li> 
                        <li class="font10">lunch / 1AM -  2PM  </li> 
                        <li class="font10">(close, sat sun holiday)</li>
                    </ul>


                    <ul>

                    </ul>
                    <ul>
                        <li><b>BANK INFO</b></li><br>
                        <li>국민 5591-010-4168-906</li>                            
                        <li>ONESFIT (권성택) </li>
                    </ul>
                </div>
            </div>

            <br>

        </div>

    </body>
</html>