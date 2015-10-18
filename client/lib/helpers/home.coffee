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