$(document).ready(function() {
    $('#rock, #paper, #scissors').on("click", function(event){
        var type = $(this).attr('id');
        $.ajax({
            url: "/throw/" + $(this).attr('id'),
            success: function(data) {
                alert(data.result)
            }
        })
    });
});
