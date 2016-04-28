def send_simple_message():
    return requests.post(
            "https://api.mailgun.net/v3/alert.catinmay.com/messages",
            auth=("api", "key-d9f036c6a965111xxxxxxxxxxxxxx"),
            data={"from": "Master jx alert <postmaster@alert.catinmay.com>",
                  "to": "xxxx <xxx@catinmay.com>",
                  "subject": "Server Alert",
                  "text": str(URL)+" EROR INFO: "+str(e)})