$('.form_datetime').datetimepicker({
    language : 'zh-CN',
    format : 'yyyy-mm-dd hh:00:00',//日期格式。可以将日期格式，定成年月日时，分秒为0。
    weekStart: 1,
    todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    forceParse: 0,
    showMeridian: 1
});
$('.form_date').datetimepicker({
    language : 'zh-CN',
    format : 'yyyy-mm-dd',//日期格式
    weekStart: 1,
    todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    minView: 2,
    forceParse: 0
});
$('.form_time').datetimepicker({
    language : 'zh-CN',
    weekStart: 1,
    todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 1,
    minView: 0,
    maxView: 1,
    forceParse: 0
});