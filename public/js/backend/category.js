var _obj = {
          'category_nm'   : {'type': 'text'}
        , 'parent_id'     : {'type': 'text'}
        , 'slug'          : {'type': 'text'}
    };

$(document).ready(function(){

	$(document).on('click','#btn-add', function(e) {
        var data = getData(_obj);
     
        $.ajax({
            url: '/admin/danh-muc/them-moi',
            type: 'GET',
            dataType: 'json',
            data: data
        }).done(function(res) {
            location.href= "/";
        });
    });

});


function getData(obj) {
    try {
        var data = {};
        $.each(obj, function (key, element) {
            data[key] = $.trim($('#' + key).val());
        });
        return data;
    } catch (e) {
        alert('getData: ' + e.message);
    }
}