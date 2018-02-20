<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <title></title>
    <link href="${cp}/static/js/ligerUI/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet"
        type="text/css" />
    <script src="${cp}/static/js/ligerUI/lib/jquery/jquery-1.9.0.min.js" type="text/javascript"></script>
    <script src="${cp}/static/js/ligerUI/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
    <script src="${cp}/static/js/ligerUI/lib/ligerUI/js/plugins/ligerCheckBox.js" type="text/javascript"></script>
    <script src="${cp}/static/js/ligerUI/lib/ligerUI/js/plugins/ligerComboBox.js" type="text/javascript"></script>
    <script src="${cp}/static/js/ligerUI/lib/ligerUI/js/plugins/ligerResizable.js" type="text/javascript"></script> 
    <script src="${cp}/static/js/ligerUI/lib/ligerUI/js/plugins/ligerTree.js" type="text/javascript"></script>
    <script src="${cp}/static/js/ligerUI/lib/jquery-validation/jquery.validate.min.js" type="text/javascript"></script> 
    <script src="${cp}/static/js/ligerUI/lib/jquery-validation/jquery.metadata.js" type="text/javascript"></script>
    <script src="${cp}/static/js/ligerUI/lib/jquery-validation/messages_cn.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function ()
        {             
            $("#pid").ligerComboBox({
                width: 180,
                selectBoxWidth: 200,
                selectBoxHeight: 200,  treeLeafOnly: false,
                tree: {
                    url:'${cp}/sm/dept/addDept', checkbox: false, ajaxType: 'get'
                },
                value: '0',
                initIsTriggerEvent: false,
                onSelected: function (value)
                {
                	$("#pid1").val(value);
                }
            });
            
            $("#manager1").ligerComboBox({
                width : 180,
                data: ${manager},
                initIsTriggerEvent: false,
                onSelected: function (value)
                {
                	$("#manager").val(value);
                }
            });
        }); 
        
        function SendForm(){
        	document.getElementById("span2").innerHTML = null;
        	document.getElementById("span3").innerHTML = null;
        	var val;
        	if(val == ""){
        		document.getElementById("span2").innerHTML="部门名称不能为空!";
        		return false;
        	}
        	
        	val = document.getElementById("ab").value;
        	if(val == ""){
        		document.getElementById("span3").innerHTML="部门缩写不能为空!";
        		return false;
        	}
        	$.ajax({
                 	url:'${cp}/sm/dept/subDept',
                 	type:"post",
                 	data:$('#addForm').serialize(),
                 	success:function(result){
                 		if(result==true){
                 			alert("新增成功");
                 		}else if(result==false){
                 			alert("新增失败");
                 		}
                 		window.parent.location.href="${cp}/sm/dept/findAll";
             			parent.$.ligerDialog.close(); //关闭弹出窗
                 	}
                 });
        }
    </script>
</head>
<body style="padding:0px; overflow:hidden;"> 
<form id="addForm" name="addForm" action="${cp}/sm/dept/subDept" method="post"> 
    <label >上级部门</label>
     <input type="text" id="pid"/>
     <input type="hidden" id="pid1" name="pid" value="0"/>
    <br/> 
    
    <label>部门名称</label>
    <input type="text" name="name" id="name">
    <span id="span2"></span>
    <br/>
    
    <label>部门缩写</label>
    <input type="text" name="ab" id="ab" >
    <span id="span3"></span>
    <br/>
    
    <label>负责人名</label>
    <input type="text" id="manager1"/>
    <input type="hidden" id="manager" name="manager"/>
    <br/>
    
   <input type="button" name="sub" id="sub" value="提交" onclick="SendForm()">
</form> 
</body> 

</html>