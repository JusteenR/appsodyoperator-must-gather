FROM quay.io/openshift/origin-must-gather:4.2

# Save original gather script
RUN mv /usr/bin/gather /usr/bin/gather_original

# Use our gather script in place of the original one
COPY gather_appsodyoperator /usr/bin/gather

ENTRYPOINT /usr/bin/gather