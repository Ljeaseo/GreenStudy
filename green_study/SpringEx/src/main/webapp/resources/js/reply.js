/**
 *  댓글 관련 javascript 처리
 */

$(document).ready(function(){  //jquery 준비
	//함수 호출 (댓글 쓰기를 하기위한 함수)
	//detail.jsp가 시작되자마다 bno값을 가져올라면 $(document).ready(function(){} 안에 선언
	var bnoValue=$("input[name='bno']").val();
	
	// datail.jsp가 시작되자마자 댓글 목록리스트(list) 함수 호출
	list(bnoValue);
	
	
	//댓글쓰기를 클릭하면
	$("#add").on("click",function(){
	// 댓글쓰기 버튼을 클릭했을 당시에 댓글 내용을 가져올라면 $("#add").on("click",function(){} 안에 선언
		var replyValue=$("#reply").val();
		var idValue="abcd1";
		
		
		
		add({bno:bnoValue,reply:replyValue,id:idValue}); // 댓글쓰기를 하기 위한 함수 호출
	})
	
})

// list 함수 선언 시작
function list(bno){

	$.getJSON("/replies/"+bno+".json",function(data){
		
		var str="";
		
		for(var i=0;i<data.length;i++){
			str+="<li>"+data[i].id+"</li>"
			str+="<li>"+data[i].reply+"</li>"
			str+="<li><a href='"+data[i].rno+"'>수정"+"</a></li>"
		}
	
		$("#replyUL").html(str);
	});
}
// list 함수 선언 끝
	


// 함수 선언
function add(reply){
	$.ajax({ 			 // ajax 준비...(비동기식으로 처리하겟다는..)
		type:"post",			 //method방식(ex) get,post,put,delete..)
		url:"/replies/new",			 //Controller와 연결하기 위한 주소 어떤 Controller와 연결할지 주소를 똑같이 해줘야함.
		data:JSON.stringify(reply),			 //데이터를 저장해놓은 VO파일  stringify -> 변수를 String 타입으로 넘겨줌.
		contentType:"application/json; charset=utf-8", //contentType 을 생략하면 web browser 에 위임 
		success: function(result){
			if(result=="success"){
				alert("댓글쓰기 성공")
			}
		}
		
	})
}	// add 함수 선언 끝

















