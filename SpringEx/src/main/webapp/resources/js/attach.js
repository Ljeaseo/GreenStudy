/**
 *	첨부파일 관련 js 
 */

$(document).ready(function(){
	// detail.jsp가 시작되자(ready 이벤트) 마자 bno값 가져오기
	var bno = $("input[name='bno']").val();
	alert(bno);
	$.getJSON("/attachlist",{bno:bno},function(attachlist){
		console.log(attachlist);
		
		var str="";
		
		$(attachlist).each(function(i,attach){
			//만약에 image 결과가 ture이면
			
			
			if(attach.imageType){
				var filePath = encodeURIComponent(attach.uploadPath+"/"+attach.uuid+"_"+"S_"+attach.fileName)
				str+="<li><img src='/display?fileName="+filePath+"'>"+attach.fileName+"</li>"
			}
			// 그렇지 않으면 다운로드
			else{
				var filePath = encodeURIComponent(attach.uploadPath+"/"+attach.uuid+"_"+attach.fileName)
				str+="<li><a href='/download?fileName="+filePath+"'>"+attach.fileName+"</a></li>"
			}
		})
		$("#uploadResult ul").html(str);
	})
})
