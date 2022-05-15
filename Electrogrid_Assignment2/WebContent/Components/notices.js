$(document).ready(function() 
{ 
if ($("#alertSuccess").text().trim() == "") 
 { 
 $("#alertSuccess").hide(); 
 } 
 $("#alertError").hide(); 
}); 

// SAVE ============================================
$(document).on("click", "#btnSave", function(event) 
{ 
// Clear alerts---------------------
 $("#alertSuccess").text(""); 
 $("#alertSuccess").hide(); 
 $("#alertError").text(""); 
 $("#alertError").hide(); 
// Form validation-------------------
var status = validateNoticeForm(); 
if (status != true) 
 { 
 $("#alertError").text(status); 
 $("#alertError").show(); 
 return; 
 } 
// If valid------------------------
var type = ($("#hidoticeIDSave").val() == "") ? "POST" : "PUT"; 
 $.ajax( 
 { 
 url : "NoticesAPI", 
 type : type, 
 data : $("#formNotice").serialize(), 
 dataType : "text", 
 complete : function(response, status) 
 { 
 onNoticeSaveComplete(response.responseText, status); 
 } 
 }); 
});

// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event) 
{ 
$("#hidNoticeIdSave").val($(this).data("sheduleId")); 
 $("#noticeType").val($(this).closest("tr").find('td:eq(0)').text()); 
 $("noticeCode").val($(this).closest("tr").find('td:eq(1)').text()); 
 $("#noticeDate").val($(this).closest("tr").find('td:eq(2)').text()); 
 $("#noticeTopic").val($(this).closest("tr").find('td:eq(3)').text()); 
$("#noticeDesc").val($(this).closest("tr").find('td:eq(4)').text()); 
$("#noticePerson").val($(this).closest("tr").find('td:eq(5)').text()); 
$("#noticeMails").val($(this).closest("tr").find('td:eq(6)').text()); 
});

$(document).on("click", ".btnRemove", function(event) 
{ 
 $.ajax( 
 { 
 url : "NoticeAPI", 
 type : "DELETE", 
 data : "NoticeId=" + $(this).data("NoticeId"),
 dataType : "text", 
 complete : function(response, status) 
 { 
 onNoticeDeleteComplete(response.responseText, status); 
 } 
 }); 
});
// CLIENT-MODEL================================================================
function validateScheduleForm() 
{ 
// notice type
if ($("#noticeType").val().trim() == "") 
 { 
 return "Insert Notice Type."; 
 } 
// Notice Code
if ($("#noticeCode").val().trim() == "") 
 { 
 return "Insert Notice Code."; 
 } 
// Notice Date
if ($("#noticeDate").val().trim() == "") 
 { 
 return "Insert Notice Date"; 
 } 
// start Time-------------------------------
if ($("#noticeTopic").val().trim() == "") 
 { 
 return "Insert Notice Topic."; 
 } 
//end Time-------------------------------
if ($("#noticeDesc").val().trim() == "") 
 { 
 return "Insert Notice Description"; 
 } 
// date-------------------------------
if ($("#noticePerson").val().trim() == "") 
 { 
 return "Insert Name of person "; 
 } 
// reason-------------------------------
if ($("#noticeMails").val().trim() == "") 
 { 
 return "Insert mail status"; 
 } 

return true; 
}

function onNoticeSaveComplete(response, status) 
{ 
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully saved."); 
 $("#alertSuccess").show(); 
 $("#divItemsGrid").html(resultSet.data); 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while saving."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while saving.."); 
 $("#alertError").show(); 
 } 
 $("#hidSecIDSave").val(""); 
 $("#formSchedule")[0].reset(); 
}


function onNoticeDeleteComplete(response, status) 
{ 
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully deleted."); 
 $("#alertSuccess").show(); 
 $("#divItemsGrid").html(resultSet.data); 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while deleting."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while deleting.."); 
 $("#alertError").show(); 
 } 
}