echo
echo Building API docs from local sources...
echo

# ----------- Voice form local build step start -----------------
TARGET_PATH=content/client-libraries/ui-components/voice-input
TARGET_NAME=api-for-react.md
LOCAL_SOURCE=../speechly-demos/libraries/react-voice-forms/docs/modules/components_VoiceInput.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$LOCAL_SOURCE\"...
cat $LOCAL_SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Voice form local step end-----------------

# ----------- Voice form local build step start -----------------
TARGET_PATH=content/client-libraries/ui-components/voice-select
TARGET_NAME=api-for-react.md
LOCAL_SOURCE=../speechly-demos/libraries/react-voice-forms/docs/modules/components_VoiceSelect.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$LOCAL_SOURCE\"...
cat $LOCAL_SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Voice form local step end-----------------

# ----------- Voice form local build step start -----------------
TARGET_PATH=content/client-libraries/ui-components/voice-toggle
TARGET_NAME=api-for-react.md
LOCAL_SOURCE=../speechly-demos/libraries/react-voice-forms/docs/modules/components_VoiceToggle.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$LOCAL_SOURCE\"...
cat $LOCAL_SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Voice form local step end-----------------

# ----------- Voice form local build step start -----------------
TARGET_PATH=content/client-libraries/ui-components/voice-checkbox
TARGET_NAME=api-for-react.md
LOCAL_SOURCE=../speechly-demos/libraries/react-voice-forms/docs/modules/components_VoiceCheckbox.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$LOCAL_SOURCE\"...
cat $LOCAL_SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Voice form local step end-----------------

# ----------- Voice form local build step start -----------------
TARGET_PATH=content/client-libraries/ui-components/voice-date-picker
TARGET_NAME=api-for-react.md
LOCAL_SOURCE=../speechly-demos/libraries/react-voice-forms/docs/modules/components_VoiceDatePicker.md
echo Building \"$TARGET_PATH/$TARGET_NAME\" from \"$LOCAL_SOURCE\"...
cat $LOCAL_SOURCE > $TARGET_PATH/$TARGET_NAME
# Remove lines until line containing the matched str
sed -i.bak '/Name \| Type/,$!d' $TARGET_PATH/$TARGET_NAME
# Remove lines from line containing the str to end
sed -i.bak '/^\s*$/,$d' $TARGET_PATH/$TARGET_NAME
rm $TARGET_PATH/$TARGET_NAME.bak
# ----------- Voice form local step end-----------------

echo
echo OK
echo
