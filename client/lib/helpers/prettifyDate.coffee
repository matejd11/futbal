Template.registerHelper "prettifyDate", (date) ->
    if !date
        return 'ERROR'
    curr_date = date.getDate()
    curr_month = date.getMonth()+1
    curr_year = date.getFullYear()
    result = curr_date + ". " + curr_month + ". " + curr_year;
