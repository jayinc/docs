echo
echo Building API docs...
echo

CURL="curl --fail --silent --show-error"

# ----------- Build step start -----------------
TARGET_PATH=content/client-libraries/ui-components/push-to-talk-button
TARGET_NAME=api-for-web-components.html
SOURCE=https://raw.githubusercontent.com/speechly/speechly/main/libraries/browser-ui/src/assets/index.html
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$SOURCE\"...
$CURL $SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/<component-api id="push-to-talk-button-api">/,$!d' $TARGET_PATH/$TARGET_NAME
sed -i.bak '/Attributes/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/<\/component-api>/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Build step end-----------------

# ----------- Build step start -----------------
TARGET_PATH=content/client-libraries/ui-components/big-transcript
TARGET_NAME=api-for-web-components.html
SOURCE=https://raw.githubusercontent.com/speechly/speechly/main/libraries/browser-ui/src/assets/index.html
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$SOURCE\"...
$CURL $SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/<component-api id="big-transcript-api">/,$!d' $TARGET_PATH/$TARGET_NAME
sed -i.bak '/Attributes/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/<\/component-api>/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Build step end-----------------

# ----------- Build step start -----------------
TARGET_PATH=content/client-libraries/ui-components/transcript-drawer
TARGET_NAME=api-for-web-components.html
SOURCE=https://raw.githubusercontent.com/speechly/speechly/main/libraries/browser-ui/src/assets/extras.html
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$SOURCE\"...
$CURL $SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/<component-api id="transcript-drawer-api">/,$!d' $TARGET_PATH/$TARGET_NAME
sed -i.bak '/Attributes/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/<\/component-api>/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Build step end-----------------


# ----------- Build step start -----------------
TARGET_PATH=content/client-libraries/ui-components/push-to-talk-button
TARGET_NAME=api-for-react.md
SOURCE=https://raw.githubusercontent.com/speechly/speechly/main/libraries/react-ui/docs/modules/components_PushToTalkButton.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$SOURCE\"...
$CURL $SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Build step end-----------------

# ----------- Build step start -----------------
TARGET_PATH=content/client-libraries/ui-components/big-transcript
TARGET_NAME=api-for-react.md
SOURCE=https://raw.githubusercontent.com/speechly/speechly/main/libraries/react-ui/docs/modules/components_BigTranscript.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$SOURCE\"...
$CURL $SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Build step end-----------------

# ----------- Build step start -----------------
TARGET_PATH=content/client-libraries/ui-components/transcript-drawer
TARGET_NAME=api-for-react.md
SOURCE=https://raw.githubusercontent.com/speechly/speechly/main/libraries/react-ui/docs/modules/components_TranscriptDrawer.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$SOURCE\"...
$CURL $SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Build step end-----------------

APIREF=content/speechly-api/api-reference.md
API_HEADER=content/speechly-api/api-reference.header
echo Building API reference to $APIREF
cp $API_HEADER $APIREF
$CURL https://raw.githubusercontent.com/speechly/api/master/docs/slu.md >> $APIREF
$CURL https://raw.githubusercontent.com/speechly/api/master/docs/identity.md >> $APIREF

echo
echo OK
echo
