#!/bin/sh
# Run from the repository root: sh extras/tests/auth-9282.sh
set -eu

FIXTURE=$(mktemp -d)
trap 'rm -rf "$FIXTURE"' EXIT HUP INT TERM
mkdir "$FIXTURE/etc"
cat > "$FIXTURE/etc/shadow" <<'EOF'
with_expiry:hash:20000:0:99999:7::25000:
without_expiry:hash:20000:0:90:7:::
negative_expiry:hash:20000:0:90:7::-1:
locked:!hash:20000:0:99999:7:::
EOF
awk -F: '{ print $1 ":x:1:1::/:/bin/sh" }' "$FIXTURE/etc/shadow" > "$FIXTURE/etc/passwd"
sed -n '/# Test        : AUTH-9282, AUTH-9283, and AUTH-9284/,/# Test        : AUTH-9283$/p' include/tests_authentication > "$FIXTURE/test.sh"

passwd() {
    if [ "$1" = '-S' ]; then
        USERS=$2
    else
        USERS='with_expiry without_expiry negative_expiry locked'
    fi
    for USER in $USERS; do
        USER_STATUS=$PASSWORD_STATUS
        MAX_AGE=90
        case "$USER" in
            with_expiry) MAX_AGE=99999 ;;
            locked) USER_STATUS=L ;;
        esac
        printf '%s %s 01/01/2026 0 %s 7 -1\n' "$USER" "$USER_STATUS" "$MAX_AGE"
    done
}
FileIsReadable() { [ "$SHADOW_READABLE" -eq 1 ] && [ -r "$1" ]; }
Register() {
    CAPTURED_PREQS=$4
    SKIPTEST=1
    if [ "$CAPTURED_PREQS" = YES ]; then SKIPTEST=0; fi
}
LogText() { :; }
Display() { :; }
ReportSuggestion() { :; }
ReportManual() { :; }

OS=Linux
STATUS_SUGGESTION=SUGGESTION
STATUS_OK=OK
TEST_NO=AUTH-9282
AWKBINARY=awk
ROOTDIR="$FIXTURE/"
SHADOW_READABLE=1
for LINUX_VERSION in Debian SuSE RedHat; do
    OS_REDHAT_OR_CLONE=0
    PASSWORD_STATUS=P
    if [ "$LINUX_VERSION" = RedHat ]; then
        OS_REDHAT_OR_CLONE=1
        PASSWORD_STATUS=PS
    fi
    . "$FIXTURE/test.sh"
    EXPECTED=$(printf 'without_expiry\nnegative_expiry')
    if [ "$FIND_P" != "$EXPECTED" ]; then
        printf '%s: expected accounts without expiry, got: %s\n' "$LINUX_VERSION" "$FIND_P" >&2
        exit 1
    fi
done

SHADOW_READABLE=0
. "$FIXTURE/test.sh"
[ "$CAPTURED_PREQS" = NO ]
[ "$SKIPTEST" -eq 1 ]
printf 'AUTH-9282 fixture checks passed\n'
