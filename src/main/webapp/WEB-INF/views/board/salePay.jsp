<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="/WEB-INF/views/include/header.jsp" %>
	
<style>

.inbutton {
    width:100px;
    background-color: #00CC00;
    border: none;
    color:#fff;
    padding: 15px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px;
    text-align: center;
    cursor: pointer;
    border-radius:10px 0 10px 0;
}

.intext{
   width:300px; 
   border-style: solid;
   border-width: 0 0 0 8px; 
   padding: 12px; 
   word-break: break-all;
   border-color: #009970;
   background-color:rgba(211, 211, 211, 0.2);
}

ul{
   list-style:none;
   display:inline=block;
   li{ 
   		float:left;
   		left:-100px;
   	  }
   }
.container pro{
	text-align:center;
    width: 35%;
    position: absolute;
    z-index: 1;
    margin-top: 20px;
}
.progressbar{
  counter-reset: step;
}
.progressbar li{
  float: left;
  width: 200px;
  position: relative;
  text-align: center;
}
.progressbar li:before {
    content: counter(step);
    counter-increment: step;
    width: 40px;
    height: 40px;
    border: 2px solid #bebebe;
    display: block;
    margin: 0 auto 10px auto;
    border-radius: 50%;
    line-height: 27px;
    background: white;
    color: #bebebe;
    text-align: center;
    font-weight: bold;
    font-size: x-large;
    text-align: -webkit-match-parent;
    padding-top: 5px;
}
.progressbar li:after{
  content: '';
  position: absolute;
  width:100%;
  height: 3px;
  background: #979797;
  top: 15px;
  left: -50%;
  z-index: -1;
}
.progressbar li.active:before{
 border-color: #3aac5d;
 background: #3aac5d;
 color: white
}
.progressbar li.active:after{
 background: #3aac5d;
}
.progressbar li.active - li:after{
 background: #3aac5d;
}
.progressbar li.active - li:before{
border-color: #3aac5d;
background: #3aac5d;
color: white
}
.progressbar li:first-child:after{
 content: none;
}

</style>
	
	<section class="d-flex align-items-center justify-content-center" style="padding-bottom: 20px; overflow: hidden;">
		<div class="container">
     	    <div class="row">
	          <div class="col-lg-4 aos-init aos-animate" data-aos="fade-right">
	            <div class="section-title">
	              <h2>???????????????</h2>
	            </div>
	          </div><!-- End col-lg-4 -->
	       </div><!-- END row -->
	     </div>
	 </section> 
	
	
	<section class="d-flex align-items-center justify-content-center" style="padding: 0 0 0 500px; overflow: hidden;">
     <div class="container pro">
          <ul class="progressbar">
            <li class="active">????????????</li>
            <li class="active">???????????????</li>
          </ul>
      </div>
	</section>	
	
	<section class="d-flex align-items-center justify-content-center" style="padding: 60px 0 60px 0; overflow: hidden;">
		<div class="container">
			<c:choose>
				<c:when test="${basketList != null}">
					<ul>
					<form name="pay" action="/board/pay" method="post">
						<c:forEach items="${basketList }" var="board">
						    <div class="container h-100">
						    <div class="d-flex justify-content-center align-items-center h-100" style="margin-bottom: 20px; width: 100%;">
						    	<div class="card" style="width:100%;">
						            <div class="row sno">
						            	<a style='width:100px; height:100px;' href="/board/saleDetail?sno=${board.SNO }">
											<div class="col-lg-2 img${board.SNO }">
											
											</div>
										</a>
						                <div class="col-lg-4 card-body">
						                	<%-- <a href="/board/saleDetail?sno=${board.sno }">
						                    	<h5 class="card-title">?????? : <c:out value="${board.stitle }"/></h5>
						                    </a> --%>
						                    <p class="card-text"><b>?????? :</b>  <c:out value="${board.STITLE }"/></p>
						                    <p class="card-text"><b>?????? :</b> <fmt:formatNumber value="${board.BPRICE }" pattern="###,###"/>???</p>
						                </div>
						                <div class="col-lg-4 card-body">
						                	<%-- <a href="/board/saleDetail?sno=${board.sno }">
						                    	<h5 class="card-title">?????? : <c:out value="${board.stitle }"/></h5>
						                    </a> --%>
						                    <p class="card-text"><b>?????? :</b> <c:out value="${board.BAMOUNT }"/></p>
						                    <p class="card-text"><b>??? ?????? :</b> <fmt:formatNumber value="${board.BPRICE*board.BAMOUNT }" pattern="###,###"/>???</p>
						                </div>
						            </div>
								</div>
						    </div>
						</div>
						</c:forEach>
	    				<div style="padding: 20px;">
		    				<p style="width: 1050px; font-weight:bold; font-size:20px" class="totalPrice text-right" >
								?????????: <b><fmt:formatNumber value="${totalPrice }" pattern="###,###"/></b> ???
							</p>
	    				</div>
	    				<hr>
	    				<h2 style="color: lightgray;"><b> * ????????? ?????? ?????? ?????? ????????? ??????????????? ??????????????????.</b></h2>
                        <div style="align-content: center; padding:20px">
                        	<p><b>?????? ?????? ??????</b></p>
					        <input class="intext" style="width:520px;" type="text" id="roadFullAddr" name="oaddress" placeholder="???????????? ????????? ??????????????????.">
					        <input type="button" class="btn btn-success" style="background-color:#009970;" onClick="goPopup();" value="????????????" />
		    				<br><br>
		    				<p><b>?????? ?????? ????????????</b></p>
		    				<input id="phoneNumber" class="intext" type="text" name="ophone" placeholder="????????? ????????? ??????????????????.">
		    				<input class="btn btn-success" style="background-color:#009970;" type="submit" id="pay" value="????????????">
	    				</div>
	    				<div class="row text-center" style="width: 100%">
	    					
	    				</div>
	    				
	    				<input type="hidden" name="cid" value="${memberVO.cid}">
	    				<input type="hidden" name="totalPrice" value="${totalPrice }">
	    				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    				</form>
    				</ul>
   				</c:when>
   				
				<c:otherwise>
   					<tr>
    					<td>???????????? ????????????.</td>
   					</tr>
  				</c:otherwise>
  			</c:choose>	
			
		</div>
	</section>
<script type="text/javascript" src="/resources/customjs/basket.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	
var csrfHeaderName = "${_csrf.headerName}";
var csrfTokenValue = "${_csrf.token}";

$(document).ajaxSend(function(e, xhr, options) {
   xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);   
})
	
	$(document).ready(function() {
		(function() {
			
			var snoStr = '<c:out value="${thumbImgSnoList}"/>';
			
			$.getJSON("/board/getThumbList", {snoStr: snoStr}, function(arr) {
	
				var str = "";
				
				$(arr).each(function(i, attach) { 
					
						
					var fileCallPath = encodeURIComponent(attach.stuploadPath + "/s_" + attach.stuuid + "_" + attach.stfileName);
					
					str = "<div data-path='" + attach.stuploadPath + "' data-uuid='" + attach.stuuid + "' data-filename='" + attach.stfileName + "' data-type='" + attach.stfileType + "'"
						+  "	<div>"
						+  "		<img style='width:100px; height:100px;' src='/display?fileName=" + fileCallPath + "'>"
						+  "	</div>"
						+  "</div>";
						
					$(".img" + attach.sno).prepend(str);
				});
				
			}); //end getJSON
		})();
	});
	
	$("#pay").on("click", function(e) {
		
		
		
		var form = document.pay;
		
		var oadd = form.roadFullAddr.value;
		var ophone = form.ophone.value;
		e.preventDefault();
		
		if (oadd =='') {
			
			alert("????????? ??????????????????.");
			return;
		}
		
		if (ophone =='') {
			
			alert("????????? ????????? ??????????????????.");
			return;
		}
		
		form.submit();
		
	})
	
	$(document).on("keyup", "#phoneNumber", function() {
       $(this).val($(this).val().replace(/[^0-9]/g, "")
           .replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/, "$1-$2-$3")
           .replace("--", "-"));
   }); 
	
	 //?????? ??????????????? API
    //opener?????? ????????? ???????????? ?????? ?????? ????????? ????????????, ???????????? ?????????????????? ???????????????. ("??????API ?????? ??????"??? ???????????? ??????????????? ?????????.)
    /* zdocument.domain = "abc.go.kr"; */
    function goPopup() {
        // ??????????????? ????????? ?????? ???????????? ???????????????.
        // ????????? ?????????(jusopopup.jsp)?????? ?????? ????????????URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)??? ???????????? ?????????.
        var pop = window.open("/juso/jusoPopup", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");

        // ????????? ?????? ??????, ????????? ?????????(jusopopup.jsp)?????? ?????? ????????????URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)??? ???????????? ?????????.
        //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
    }


    function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2, engAddr, jibunAddr, zipNo) {
        // ????????????????????? ??????????????? ????????? ?????????, ??? ???????????? ????????? ???????????????.
        $("#roadFullAddr").val(roadFullAddr);

    }
	
</script>
<%@include file="/WEB-INF/views/include/footer.jsp" %>