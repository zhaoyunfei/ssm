<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>秒杀详情页</title>
    <%@include file="common/head.jsp"%>
</head>
<body>

<div class="container">
    <div class="panel panel-default text-center">
        <div class="panel-heading">
            ${seckill.name}
        </div>
        <div class="panel-body">
            <h2 class="text-danger">
                <span class="glyphicon glyphicon-time">
                </span>
                <span class="glyphicon" id="seckill-box">

                </span>
            </h2>
        </div>
    </div>
</div>

<div id="killPhoneModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-center">
                    <span class="glyphicon glyphicon-phone">秒杀电话</span>
                </h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <input type="text" name="killPhone" id="killPhone"
                        placeholder="填写手机号" class="form-control">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <span id="killPhoneMessage" class="glyphicon"></span>
                <button type="button" id="killPhoneBtn" class="btn btn-success">
                    <span class="glyphicon glyphicon-phone"></span>
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>



</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="/resources/script/jquery-3.1.1.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="//cdn.bootcss.com/jquery.countdown/2.2.0/jquery.countdown.min.js"></script>
<script src="//cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<%--交互逻辑--%>
<script src="/resources/script/seckill.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        seckill.detail.init({
            seckillId:${seckill.seckillId},
            startTime:${seckill.startTime.time},
            endTime:${seckill.endTime.time}
        })
    })
</script>
</html>
