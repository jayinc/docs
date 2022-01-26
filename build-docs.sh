echo
echo Building API docs...
echo

CURL="curl --fail --silent --show-error"

# ----------- Build step start -----------------
TARGET_PATH=content/ui-components/push-to-talk-button
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
TARGET_PATH=content/ui-components/big-transcript
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
TARGET_PATH=content/ui-components/transcript-drawer
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
TARGET_PATH=content/ui-components/push-to-talk-button
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
TARGET_PATH=content/ui-components/big-transcript
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
TARGET_PATH=content/ui-components/transcript-drawer
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

# ----------- Voice form build step start -----------------
TARGET_PATH=content/client-libraries/voice-forms/voice-input
TARGET_NAME=api-for-react.md
SOURCE=https://raw.githubusercontent.com/speechly/speechly/main/libraries/react-voice-forms/docs/modules/components_VoiceInput.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$SOURCE\"...
$CURL $SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Voice form build step end-----------------

# ----------- Voice form build step start -----------------
TARGET_PATH=content/client-libraries/voice-forms/voice-select
TARGET_NAME=api-for-react.md
SOURCE=https://raw.githubusercontent.com/speechly/speechly/main/libraries/react-voice-forms/docs/modules/components_VoiceSelect.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$SOURCE\"...
$CURL $SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Voice form build step end-----------------

# ----------- Voice form build step start -----------------
TARGET_PATH=content/client-libraries/voice-forms/voice-toggle
TARGET_NAME=api-for-react.md
SOURCE=https://raw.githubusercontent.com/speechly/speechly/main/libraries/react-voice-forms/docs/modules/components_VoiceToggle.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$SOURCE\"...
$CURL $SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Voice form build step end-----------------

# ----------- Voice form build step start -----------------
TARGET_PATH=content/client-libraries/voice-forms/voice-checkbox
TARGET_NAME=api-for-react.md
SOURCE=https://raw.githubusercontent.com/speechly/speechly/main/libraries/react-voice-forms/docs/modules/components_VoiceCheckbox.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$SOURCE\"...
$CURL $SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Voice form build step end-----------------

# ----------- Voice form build step start -----------------
TARGET_PATH=content/client-libraries/voice-forms/voice-date-picker
TARGET_NAME=api-for-react.md
SOURCE=https://raw.githubusercontent.com/speechly/speechly/main/libraries/react-voice-forms/docs/modules/components_VoiceDatePicker.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$SOURCE\"...
$CURL $SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Voice form build step end-----------------

APIREF=content/speechly-api/api-reference.md
API_HEADER=content/speechly-api/api-reference.header
echo Building API reference to $APIREF
cp $API_HEADER $APIREF
$CURL https://raw.githubusercontent.com/speechly/api/master/docs/slu.md >> $APIREF
$CURL https://raw.githubusercontent.com/speechly/api/master/docs/identity.md >> $APIREF

echo
echo OK
echo
