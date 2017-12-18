function cutctn(summaryStr, lengTh) {

  var ind = summaryStr.toLowerCase().indexOf("/script>");
  if (ind != -1)
    summaryStr = summaryStr.substring(ind + 8);
  var len = summaryStr.length;// fetchCnStrLen(summaryStr);

  summaryStr = $.trim(summaryStr);
  summaryStr = summaryStr.replace(/^(\u3000)*/, ""); // For the GREAT IE.

  if (len > lengTh) {
    summaryStr = summaryStr.substring(0, lengTh) + "...";
  }

  return summaryStr;
}

function adjustCtn() {
  for (var i = 1; i <= 3; i++) {
    var title = $("#title_" + i + "_1").html();
    if ($("#title_" + i + "_1").html().length > 18) {
      $("#ctn_" + i + "_1").html(cutctn($("#ctn_" + i + "_1").html(), 235));
    } else { // 第一列单行
      $("#ctn_" + i + "_1").html(cutctn($("#ctn_" + i + "_1").html(), 245));
    }

    if ($("#title_" + i + "_2").html().length > 18) {
      $("#ctn_" + i + "_2").html(cutctn($("#ctn_" + i + "_2").html(), 235));
    } else { // 第二列单行
      $("#ctn_" + i + "_2").html(cutctn($("#ctn_" + i + "_2").html(), 245));
    }
  }
}
