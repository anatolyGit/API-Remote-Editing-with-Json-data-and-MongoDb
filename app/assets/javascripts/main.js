

$('.other').click(function(){
    if ($(this).is(':checked'))
    {
        $(this).parents('fieldset').children(".specify-other").show('fast');
    } else {
        $(this).parents('fieldset').children(".specify-other").hide('fast');
    }
});