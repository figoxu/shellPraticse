#!/bin/sh

from="xujh945@qq.com"
to="1611992451@qq.com"
subject="Your email title"
body="This is body content of your email"
attachments=('demo.xls' 'read.txt')

#deal with attachment args
declare -a attargs
for att in "${attachments[@]}"; do
   [ ! -f "$att" ] && echo "Warning: attachment $att not found, skipping" >&2 && continue
  attargs+=( "-a"  "$att" )
done

# smtp server info
smtpserver="smtp.qq.com"
smtpport="465"
user="xujh945@qq.com"
password="xujianhui0915"

mail -s "$subject" -r "$from" -S smtp="smtp://${smtpserver}:${smtpport}" \
                              -S smtp-auth=login \
                              -S smtp-auth-user="$user" \
                              -S smtp-auth-password="$password" \
                              -S sendwait \
                              "${attargs[@]}" "$to" <<< "$body"