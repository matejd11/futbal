Template.registerHelper "prettifyDate", (date) ->
    if !date
        return 'ERROR'
    curr_date = date.getDate()
    curr_month = date.getMonth()+1
    curr_year = date.getFullYear()
    result = curr_date + ". " + curr_month + ". " + curr_year;

Template.home.helpers
    date: ->
        date = new Date()
        plus = 0
        if date.getDate() == 5
            offset = date.getHours() >= 20
            if offset
                plus = 1
        resultDate = new Date()
        resultDate.setDate(date.getDate() + (7 + 5 - date.getDay()) % 7 + plus * 7)
        resultDate