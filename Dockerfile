# 9Hits v5 image use kar rahe hain
FROM 9hitste/appv5

USER root

# Aapki Access Key
ENV ACCESS_KEY="770b256da42969f1079003ce325591e7"

# Render port error se bachne ke liye
EXPOSE 10000

# Command: Bina proxy ke direct sessions
CMD ./9hits-viewer --token=$ACCESS_KEY \
    --system-session \
    --allow-crypto=no \
    --session-note=Render-Direct-Jeet \
    --hide-browser \
    --sessions=2
