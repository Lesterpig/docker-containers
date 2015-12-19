FROM debian:8

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y postfix dovecot-common
RUN useradd -p Hl3oksdxnnuOo mailer && mkdir /home/mailer && chmod 666 /home/mailer

RUN postconf -e 'smtpd_sasl_type = dovecot' \
  && postconf -e 'smtpd_sasl_path = private/auth' \
  && postconf -e 'smtpd_sasl_local_domain =' \
  && postconf -e 'smtpd_sasl_security_options = noanonymous' \
  && postconf -e 'broken_sasl_auth_clients = yes' \
  && postconf -e 'smtpd_sasl_auth_enable = yes' \
  && postconf -e 'smtpd_recipient_restrictions = permit_sasl_authenticated,reject_unauth_destination,reject'

COPY 10-master.conf /etc/dovecot/conf.d/

EXPOSE 25

CMD service dovecot start && service postfix start && sleep 1d

