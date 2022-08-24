/**
 * 
 */

$(document).ready(function(){
	// 첨부파일 공격에 대비하기 위한 업로드 파일 확장자 제한(함수)
	
	//정규식을 이용하여 확장자 제한
	var reg = new RegExp("(.*?)\.(exe|zip|alz)$")
	
	//최대크기를 설정하여 그 이상이면 제한
	var maxSize=5242880; // 5MB
	
	//함수선언
	//                   파일이름,파일크기
	function checkExtension(fileName, fileSize){
		// 파일 크기 제한
		// 실제파일 크기 > 최대 크기
		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
		// 확장자 제한
		// 실제파일명의 확장자와 정규식 비교
		// 정규식이면 
		if(reg.test(fileName)){
			alert("해당 종류의 파일은 업로드 할 수 없습니다.");
			return false;
		}
		return true;
	}
	
	//파일 전송버튼을 클릭하면(id="uploadBtn")
	$("#uploadBtn").on("click",function(){
		//alert("aaa");
		//파일 업로드 관련 로직 처리
		var formData = new FormData();
		
		var inputFile = $("input[name='uploadFile']");
		//console.log(inputFile);
		var files=inputFile[0].files;
		console.log(files);
		
		
		for(var i=0; i<files.length;i++){
			
			//checkExtension 함수 호출
			if(!checkExtension(files[i].name, files[i].size)){
				return false;
			}
			
			// jsp의 파일 선택을 통해 선택한 파일들을 form태그에 추가
			formData.append("uploadFile",files[i]);
		}
		
		//Ajax를 통해서 UploadController에 파일 관련 데이터 전송.
		$.ajax({
			type:"post",
			url:"/uploadAjaxAction",
			data:formData,
			contentType:false,
			processData:false,
			dataType:"json",
			success:function(result){
				console.log(result)
			}
		})
		
	})
	
})
			
			
	
	