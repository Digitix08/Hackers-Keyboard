.class public Lorg/pocketworkstation/pckeyboard/LatinIME;
.super Landroid/inputmethodservice/InputMethodService;
.source "LatinIME.java"

# interfaces
.implements Lorg/pocketworkstation/pckeyboard/ComposeSequencing;
.implements Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/LatinIME$MyInputMethodImpl;,
        Lorg/pocketworkstation/pckeyboard/LatinIME$TypedWordAlternatives;,
        Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;
    }
.end annotation


# static fields
.field static final ASCII_ENTER:I = 0xa

.field static final ASCII_PERIOD:I = 0x2e

.field static final ASCII_SPACE:I = 0x20

.field private static final CPS_BUFFER_SIZE:I = 0x10

.field static CTRL_SEQUENCES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field static ESC_SEQUENCES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final KF_LETTER:I = 0x40000

.field private static final KF_MASK:I = 0xffff

.field private static final KF_SHIFTABLE:I = 0x10000

.field private static final KF_UPPER:I = 0x20000

.field private static final MSG_START_TUTORIAL:I = 0x1

.field private static final MSG_UPDATE_OLD_SUGGESTIONS:I = 0x4

.field private static final MSG_UPDATE_SHIFT_STATE:I = 0x2

.field private static final MSG_UPDATE_SUGGESTIONS:I = 0x0

.field private static final MSG_VOICE_RESULTS:I = 0x3

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "PCKeyboard"

.field private static final NOTIFICATION_ONGOING_ID:I = 0x3e9

.field private static NUMBER_RE:Ljava/util/regex/Pattern; = null

.field private static final POS_METHOD:I = 0x0

.field private static final POS_SETTINGS:I = 0x1

.field private static final PREF_AUTO_CAP:Ljava/lang/String; = "auto_cap"

.field private static final PREF_AUTO_COMPLETE:Ljava/lang/String; = "auto_complete"

.field static final PREF_CONNECTBOT_TAB_HACK:Ljava/lang/String; = "connectbot_tab_hack"

.field static final PREF_FORCE_KEYBOARD_ON:Ljava/lang/String; = "force_keyboard_on"

.field static final PREF_FULLSCREEN_OVERRIDE:Ljava/lang/String; = "fullscreen_override"

.field static final PREF_FULL_KEYBOARD_IN_PORTRAIT:Ljava/lang/String; = "full_keyboard_in_portrait"

.field static final PREF_HEIGHT_LANDSCAPE:Ljava/lang/String; = "settings_height_landscape"

.field static final PREF_HEIGHT_PORTRAIT:Ljava/lang/String; = "settings_height_portrait"

.field static final PREF_HINT_MODE:Ljava/lang/String; = "pref_hint_mode"

.field public static final PREF_INPUT_LANGUAGE:Ljava/lang/String; = "input_language"

.field static final PREF_KEYBOARD_NOTIFICATION:Ljava/lang/String; = "keyboard_notification"

.field static final PREF_LONGPRESS_TIMEOUT:Ljava/lang/String; = "pref_long_press_duration"

.field private static final PREF_POPUP_ON:Ljava/lang/String; = "popup_on"

.field private static final PREF_QUICK_FIXES:Ljava/lang/String; = "quick_fixes"

.field private static final PREF_RECORRECTION_ENABLED:Ljava/lang/String; = "recorrection_enabled"

.field static final PREF_RENDER_MODE:Ljava/lang/String; = "pref_render_mode"

.field public static final PREF_SELECTED_LANGUAGES:Ljava/lang/String; = "selected_languages"

.field private static final PREF_SHOW_SUGGESTIONS:Ljava/lang/String; = "show_suggestions"

.field private static final PREF_SOUND_ON:Ljava/lang/String; = "sound_on"

.field static final PREF_SUGGESTIONS_IN_LANDSCAPE:Ljava/lang/String; = "suggestions_in_landscape"

.field static final PREF_SWIPE_DOWN:Ljava/lang/String; = "pref_swipe_down"

.field static final PREF_SWIPE_LEFT:Ljava/lang/String; = "pref_swipe_left"

.field static final PREF_SWIPE_RIGHT:Ljava/lang/String; = "pref_swipe_right"

.field static final PREF_SWIPE_UP:Ljava/lang/String; = "pref_swipe_up"

.field static final PREF_VIBRATE_LEN:Ljava/lang/String; = "vibrate_len"

.field private static final PREF_VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field private static final PREF_VOICE_MODE:Ljava/lang/String; = "voice_mode"

.field static final PREF_VOL_DOWN:Ljava/lang/String; = "pref_vol_down"

.field static final PREF_VOL_UP:Ljava/lang/String; = "pref_vol_up"

.field private static final QUICK_PRESS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "PCKeyboardIME"

.field private static final asciiToKeyCode:[I

.field static sInstance:Lorg/pocketworkstation/pckeyboard/LatinIME;

.field public static final sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;


# instance fields
.field private final FX_VOLUME:F

.field private final FX_VOLUME_RANGE_DB:F

.field private mAltKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoCapActive:Z

.field private mAutoCapPref:Z

.field private mAutoCorrectEnabled:Z

.field private mAutoCorrectOn:Z

.field private mAutoDictionary:Lorg/pocketworkstation/pckeyboard/AutoDictionary;

.field private mAutoSpace:Z

.field private mBestWord:Ljava/lang/CharSequence;

.field private final mBigramSuggestionEnabled:Z

.field private mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

.field private mCandidateViewContainer:Landroid/widget/LinearLayout;

.field private mCommittedLength:I

.field private mCompletionOn:Z

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mComposeBuffer:Lorg/pocketworkstation/pckeyboard/ComposeSequence;

.field private mComposeMode:Z

.field private mComposing:Ljava/lang/StringBuilder;

.field private mConfigurationChanging:Z

.field private mConnectbotTabHack:Z

.field private mCorrectionMode:I

.field private mCpsIndex:I

.field private mCpsIntervals:[J

.field private mCtrlKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

.field private mDeadAccentBuffer:Lorg/pocketworkstation/pckeyboard/ComposeSequence;

.field private mDeadKeysActive:Z

.field private mDeleteCount:I

.field private mEnableVoice:Z

.field private mEnableVoiceButton:Z

.field private mEnteredText:Ljava/lang/CharSequence;

.field private mFnKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

.field private mForceKeyboardOn:Z

.field private mFullscreenOverride:Z

.field mHandler:Landroid/os/Handler;

.field private mHasDictionary:Z

.field private mHeightLandscape:I

.field private mHeightPortrait:I

.field private mInputLocale:Ljava/lang/String;

.field private mInputTypeNoAutoCorrect:Z

.field private mIsShowingHint:Z

.field private mJustAccepted:Z

.field private mJustAddedAutoSpace:Z

.field private mJustRevertedSeparator:Ljava/lang/CharSequence;

.field private mKeyboardModeOverrideLandscape:I

.field private mKeyboardModeOverridePortrait:I

.field private mKeyboardNotification:Z

.field mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

.field private mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

.field private mLastCpsTime:J

.field private mLastKeyTime:J

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mMetaKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

.field private mModAlt:Z

.field private mModCtrl:Z

.field private mModFn:Z

.field private mModMeta:Z

.field private mNotificationReceiver:Lorg/pocketworkstation/pckeyboard/NotificationReceiver;

.field private mNumKeyboardModes:I

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mOrientation:I

.field private mPasswordText:Z

.field private mPluginManager:Lorg/pocketworkstation/pckeyboard/PluginManager;

.field private mPopupOn:Z

.field private mPredicting:Z

.field private mPredictionOnForMode:Z

.field private mPredictionOnPref:Z

.field private mQuickFixes:Z

.field private mReCorrectionEnabled:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshKeyboardRequired:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSavedShiftState:I

.field private mSentenceSeparators:Ljava/lang/String;

.field private mShiftKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

.field private mShowSuggestions:Z

.field private mSilentMode:Z

.field private mSoundOn:Z

.field private mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

.field private mSuggestPuncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionForceOff:Z

.field private mSuggestionForceOn:Z

.field private mSuggestionsInLandscape:Z

.field private mSwipeDownAction:Ljava/lang/String;

.field private mSwipeLeftAction:Ljava/lang/String;

.field private mSwipeRightAction:Ljava/lang/String;

.field private mSwipeUpAction:Ljava/lang/String;

.field private mSymbolKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

.field private mSystemLocale:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;

.field private mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;

.field private mUserDictionary:Lorg/pocketworkstation/pckeyboard/UserDictionary;

.field private mVibrateLen:I

.field private mVibrateOn:Z

.field private mVoiceOnPrimary:Z

.field private mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

.field private mVolDownAction:Ljava/lang/String;

.field private mVolUpAction:Ljava/lang/String;

.field private mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

.field private mWordHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;",
            ">;"
        }
    .end annotation
.end field

.field mWordSeparators:Ljava/lang/String;

.field private mWordToSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    new-instance v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    invoke-direct {v0}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const/16 v0, 0x7f

    .line 1741
    new-array v0, v0, [I

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const-string v0, "(\\d+).*"

    .line 3522
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->NUMBER_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 86
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    .line 177
    new-instance v0, Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-direct {v0}, Lorg/pocketworkstation/pckeyboard/WordComposer;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mBigramSuggestionEnabled:Z

    const/4 v1, 0x3

    .line 230
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNumKeyboardModes:I

    const/4 v1, 0x1

    .line 234
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnableVoice:Z

    .line 253
    new-instance v1, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-direct {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;-><init>()V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShiftKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    .line 254
    new-instance v1, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-direct {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;-><init>()V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSymbolKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    .line 255
    new-instance v1, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-direct {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;-><init>()V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCtrlKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    .line 256
    new-instance v1, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-direct {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;-><init>()V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAltKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    .line 257
    new-instance v1, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-direct {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;-><init>()V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mMetaKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    .line 258
    new-instance v1, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-direct {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;-><init>()V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mFnKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    .line 261
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposeMode:Z

    .line 262
    new-instance v1, Lorg/pocketworkstation/pckeyboard/ComposeSequence;

    invoke-direct {v1, p0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;-><init>(Lorg/pocketworkstation/pckeyboard/ComposeSequencing;)V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposeBuffer:Lorg/pocketworkstation/pckeyboard/ComposeSequence;

    .line 263
    new-instance v1, Lorg/pocketworkstation/pckeyboard/DeadAccentSequence;

    invoke-direct {v1, p0}, Lorg/pocketworkstation/pckeyboard/DeadAccentSequence;-><init>(Lorg/pocketworkstation/pckeyboard/ComposeSequencing;)V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeadAccentBuffer:Lorg/pocketworkstation/pckeyboard/ComposeSequence;

    const/high16 v1, -0x40800000    # -1.0f

    .line 267
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->FX_VOLUME:F

    const/high16 v1, 0x42900000    # 72.0f

    .line 268
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->FX_VOLUME_RANGE_DB:F

    .line 281
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    .line 339
    new-instance v1, Lorg/pocketworkstation/pckeyboard/LatinIME$1;

    invoke-direct {v1, p0}, Lorg/pocketworkstation/pckeyboard/LatinIME$1;-><init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    .line 1750
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0xa

    const v3, 0x10042

    aput v3, v1, v2

    .line 1754
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x20

    const v3, 0x1003e

    aput v3, v1, v2

    .line 1757
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x23

    const/16 v3, 0x12

    aput v3, v1, v2

    .line 1761
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x27

    const/16 v3, 0x4b

    aput v3, v1, v2

    .line 1764
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x2a

    const/16 v3, 0x11

    aput v3, v1, v2

    .line 1765
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x2b

    const/16 v3, 0x51

    aput v3, v1, v2

    .line 1766
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x2c

    const/16 v3, 0x37

    aput v3, v1, v2

    .line 1767
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x2d

    const/16 v3, 0x45

    aput v3, v1, v2

    .line 1768
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x2e

    const/16 v3, 0x38

    aput v3, v1, v2

    .line 1769
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x2f

    const/16 v3, 0x4c

    aput v3, v1, v2

    .line 1771
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x3b

    const/16 v3, 0x4a

    aput v3, v1, v2

    .line 1773
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x3d

    const/16 v3, 0x46

    aput v3, v1, v2

    .line 1776
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x40

    const/16 v3, 0x4d

    aput v3, v1, v2

    .line 1777
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x5b

    const/16 v3, 0x47

    aput v3, v1, v2

    .line 1778
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x5c

    const/16 v3, 0x49

    aput v3, v1, v2

    .line 1779
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x5d

    const/16 v3, 0x48

    aput v3, v1, v2

    .line 1782
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    const/16 v2, 0x60

    const/16 v3, 0x44

    aput v3, v1, v2

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    .line 1790
    sget-object v2, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    add-int/lit8 v3, v1, 0x61

    add-int/lit8 v4, v1, 0x1d

    const/high16 v5, 0x40000

    or-int v6, v4, v5

    aput v6, v2, v3

    .line 1791
    sget-object v2, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    add-int/lit8 v3, v1, 0x41

    const/high16 v6, 0x20000

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v1, 0x9

    if-gt v0, v1, :cond_1

    .line 1795
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    add-int/lit8 v2, v0, 0x30

    add-int/lit8 v3, v0, 0x7

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3224
    :cond_1
    new-instance v0, Lorg/pocketworkstation/pckeyboard/LatinIME$3;

    invoke-direct {v0, p0}, Lorg/pocketworkstation/pckeyboard/LatinIME$3;-><init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x10

    .line 3520
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCpsIntervals:[J

    return-void
.end method

.method private abortCorrection(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 2283
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->isCorrecting()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2284
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2285
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->clearSuggestions()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/pocketworkstation/pckeyboard/LatinIME;Lorg/pocketworkstation/pckeyboard/WordComposer;)Ljava/util/List;
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getTypedSuggestions(Lorg/pocketworkstation/pckeyboard/WordComposer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/pocketworkstation/pckeyboard/LatinIME;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateSuggestions()V

    return-void
.end method

.method static synthetic access$200(Lorg/pocketworkstation/pckeyboard/LatinIME;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setOldSuggestions()V

    return-void
.end method

.method static synthetic access$300(Lorg/pocketworkstation/pckeyboard/LatinIME;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateSuggestions()V

    return-void
.end method

.method static synthetic access$500(Lorg/pocketworkstation/pckeyboard/LatinIME;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateRingerMode()V

    return-void
.end method

.method private addToBigramDictionary(Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x1

    .line 2798
    invoke-direct {p0, p1, p2, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method private addToDictionaries(Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2793
    invoke-direct {p0, p1, p2, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method private applyTypedAlternatives(Lorg/pocketworkstation/pckeyboard/EditingUtil$SelectedWord;)Z
    .locals 8

    .line 2729
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;

    .line 2730
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;->getChosenWord()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p1, Lorg/pocketworkstation/pckeyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2731
    instance-of v0, v1, Lorg/pocketworkstation/pckeyboard/LatinIME$TypedWordAlternatives;

    if-eqz v0, :cond_2

    .line 2732
    move-object v0, v1

    check-cast v0, Lorg/pocketworkstation/pckeyboard/LatinIME$TypedWordAlternatives;

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME$TypedWordAlternatives;->access$400(Lorg/pocketworkstation/pckeyboard/LatinIME$TypedWordAlternatives;)Lorg/pocketworkstation/pckeyboard/WordComposer;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 2739
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    iget-object v5, p1, Lorg/pocketworkstation/pckeyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    .line 2740
    invoke-virtual {v4, v5}, Lorg/pocketworkstation/pckeyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    iget-object v5, p1, Lorg/pocketworkstation/pckeyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    .line 2741
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/pocketworkstation/pckeyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2742
    :cond_3
    new-instance v2, Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-direct {v2}, Lorg/pocketworkstation/pckeyboard/WordComposer;-><init>()V

    const/4 v4, 0x0

    .line 2743
    :goto_1
    iget-object v5, p1, Lorg/pocketworkstation/pckeyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2744
    iget-object v5, p1, Lorg/pocketworkstation/pckeyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    new-array v6, v0, [I

    iget-object v7, p1, Lorg/pocketworkstation/pckeyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    .line 2745
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput v7, v6, v3

    .line 2744
    invoke-virtual {v2, v5, v6}, Lorg/pocketworkstation/pckeyboard/WordComposer;->add(I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2747
    :cond_4
    iget-object v4, p1, Lorg/pocketworkstation/pckeyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    .line 2748
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    .line 2747
    invoke-virtual {v2, v4}, Lorg/pocketworkstation/pckeyboard/WordComposer;->setFirstCharCapitalized(Z)V

    :cond_5
    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    return v3

    :cond_7
    :goto_2
    if-nez v1, :cond_8

    .line 2753
    new-instance v1, Lorg/pocketworkstation/pckeyboard/LatinIME$TypedWordAlternatives;

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-direct {v1, p0, p1, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME$TypedWordAlternatives;-><init>(Lorg/pocketworkstation/pckeyboard/LatinIME;Ljava/lang/CharSequence;Lorg/pocketworkstation/pckeyboard/WordComposer;)V

    .line 2756
    :cond_8
    invoke-direct {p0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->showCorrections(Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;)V

    if-eqz v2, :cond_9

    .line 2758
    new-instance p1, Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-direct {p1, v2}, Lorg/pocketworkstation/pckeyboard/WordComposer;-><init>(Lorg/pocketworkstation/pckeyboard/WordComposer;)V

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    goto :goto_3

    .line 2760
    :cond_9
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/WordComposer;->reset()V

    :goto_3
    return v0
.end method

.method private checkAddToDictionary(Ljava/lang/CharSequence;IZ)V
    .locals 2

    if-eqz p1, :cond_6

    .line 2809
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2815
    :cond_0
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_5

    if-nez p3, :cond_2

    .line 2819
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoDictionary:Lorg/pocketworkstation/pckeyboard/AutoDictionary;

    .line 2820
    invoke-virtual {p3, p1}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    .line 2821
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/pocketworkstation/pckeyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    .line 2822
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/pocketworkstation/pckeyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 2823
    :cond_3
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoDictionary:Lorg/pocketworkstation/pckeyboard/AutoDictionary;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->addWord(Ljava/lang/String;I)V

    .line 2826
    :cond_4
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;

    if-eqz p2, :cond_5

    .line 2828
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    .line 2827
    invoke-static {p2, p3}, Lorg/pocketworkstation/pckeyboard/EditingUtil;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2829
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 2830
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2831
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2830
    invoke-virtual {p3, p2, p1}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;->addBigrams(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    :goto_0
    return-void
.end method

.method private checkReCorrectionOnStart()V
    .locals 3

    .line 921
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 929
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 932
    :cond_0
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    .line 933
    iput v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 934
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 938
    :cond_1
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastSelectionStart:I

    .line 939
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastSelectionEnd:I

    .line 942
    iget-object v0, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isCursorTouchingWord()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateOldSuggestions()V

    :cond_2
    return-void
.end method

.method private clearSuggestions()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2483
    invoke-direct {p0, v1, v0, v0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    return-void
.end method

.method private commitMultitouchShift()V
    .locals 2

    .line 2219
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSavedShiftState:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->nextShiftState(IZ)I

    move-result v0

    .line 2221
    invoke-direct {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleShiftInternal(ZI)V

    :cond_0
    return-void
.end method

.method private commitTyped(Landroid/view/inputmethod/InputConnection;Z)V
    .locals 2

    .line 1270
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1271
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    .line 1272
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1274
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1276
    :cond_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCommittedLength:I

    if-eqz p2, :cond_1

    .line 1278
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->manualTyped(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1280
    :cond_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 1282
    :goto_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 1285
    :cond_2
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateSuggestions()V

    :cond_3
    return-void
.end method

.method private createNotificationChannel()V
    .locals 5

    .line 465
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const v0, 0x7f0c011e

    .line 466
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c011d

    .line 467
    invoke-virtual {p0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 469
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "PCKeyboard"

    invoke-direct {v3, v4, v0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 470
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 473
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 474
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private delayChordingAltModifier()Z
    .locals 1

    .line 1541
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->chordingAltKey:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private delayChordingCtrlModifier()Z
    .locals 1

    .line 1537
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->chordingCtrlKey:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private delayChordingMetaModifier()Z
    .locals 1

    .line 1545
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->chordingMetaKey:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private doSwipeAction(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    const-string v1, ""

    .line 3049
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v1, "close"

    .line 3051
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3052
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleClose()V

    goto/16 :goto_4

    :cond_1
    const-string v1, "settings"

    .line 3053
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3054
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->launchSettings()V

    goto/16 :goto_4

    :cond_2
    const-string v1, "suggestions"

    .line 3055
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3056
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOn:Z

    if-eqz p1, :cond_3

    .line 3057
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOn:Z

    .line 3058
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOff:Z

    goto :goto_0

    .line 3059
    :cond_3
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOff:Z

    if-eqz p1, :cond_4

    .line 3060
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOn:Z

    .line 3061
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOff:Z

    goto :goto_0

    .line 3062
    :cond_4
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionWanted()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3063
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOff:Z

    goto :goto_0

    .line 3065
    :cond_5
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOn:Z

    .line 3067
    :goto_0
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setCandidatesViewShown(Z)V

    goto/16 :goto_4

    :cond_6
    const-string v1, "lang_prev"

    .line 3068
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3069
    invoke-virtual {p0, v0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->toggleLanguage(ZZ)V

    goto/16 :goto_4

    :cond_7
    const-string v1, "lang_next"

    .line 3070
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3071
    invoke-virtual {p0, v0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->toggleLanguage(ZZ)V

    goto/16 :goto_4

    :cond_8
    const-string v0, "full_mode"

    .line 3072
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3073
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3074
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardModeOverridePortrait:I

    add-int/2addr p1, v2

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNumKeyboardModes:I

    rem-int/2addr p1, v0

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardModeOverridePortrait:I

    goto :goto_1

    .line 3076
    :cond_9
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardModeOverrideLandscape:I

    add-int/2addr p1, v2

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNumKeyboardModes:I

    rem-int/2addr p1, v0

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardModeOverrideLandscape:I

    .line 3078
    :goto_1
    invoke-virtual {p0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->toggleLanguage(ZZ)V

    goto/16 :goto_4

    :cond_a
    const-string v0, "extension"

    .line 3079
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3080
    sget-object p1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->useExtension:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->useExtension:Z

    .line 3081
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->reloadKeyboards()V

    goto/16 :goto_4

    :cond_b
    const-string v0, "height_up"

    .line 3082
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3083
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPortrait()Z

    move-result p1

    const/16 v0, 0x46

    if-eqz p1, :cond_c

    .line 3084
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightPortrait:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightPortrait:I

    .line 3085
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightPortrait:I

    if-le p1, v0, :cond_d

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightPortrait:I

    goto :goto_2

    .line 3087
    :cond_c
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightLandscape:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightLandscape:I

    .line 3088
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightLandscape:I

    if-le p1, v0, :cond_d

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightLandscape:I

    .line 3090
    :cond_d
    :goto_2
    invoke-virtual {p0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_4

    :cond_e
    const-string v0, "height_down"

    .line 3091
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3092
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPortrait()Z

    move-result p1

    const/16 v0, 0xf

    if-eqz p1, :cond_f

    .line 3093
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightPortrait:I

    add-int/lit8 p1, p1, -0x5

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightPortrait:I

    .line 3094
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightPortrait:I

    if-ge p1, v0, :cond_10

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightPortrait:I

    goto :goto_3

    .line 3096
    :cond_f
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightLandscape:I

    add-int/lit8 p1, p1, -0x5

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightLandscape:I

    .line 3097
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightLandscape:I

    if-ge p1, v0, :cond_10

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightLandscape:I

    .line 3099
    :cond_10
    :goto_3
    invoke-virtual {p0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_4

    :cond_11
    const-string v0, "PCKeyboardIME"

    .line 3101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported swipe action config: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return v2

    :cond_12
    :goto_5
    return v0
.end method

.method private doubleSpace()V
    .locals 6

    .line 1394
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    if-nez v0, :cond_0

    return-void

    .line 1396
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 1399
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1400
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 1401
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 1402
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    const/4 v4, 0x2

    .line 1403
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1404
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1405
    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const-string v2, ". "

    .line 1406
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1407
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1408
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1409
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAddedAutoSpace:Z

    :cond_2
    return-void
.end method

.method private static getCapsOrShiftLockState()I
    .locals 1

    .line 2244
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->capsLock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I
    .locals 2

    .line 1351
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1352
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCapActive:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_0

    .line 1353
    iget p2, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static getDictionary(Landroid/content/res/Resources;)[I
    .locals 5

    .line 560
    const-class v0, Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    .line 561
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 562
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 565
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 568
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "part"

    .line 570
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    const-string v4, "name"

    .line 571
    invoke-interface {v1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "raw"

    .line 573
    invoke-virtual {p0, v3, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 579
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PCKeyboardIME"

    const-string v0, "Dictionary XML IOException"

    .line 584
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    const-string p0, "PCKeyboardIME"

    const-string v0, "Dictionary XML parsing failure"

    .line 582
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 588
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p0, :cond_2

    .line 590
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method static getHeight(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3559
    invoke-static {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0xf

    if-ge p0, p1, :cond_0

    const/16 p0, 0xf

    :cond_0
    const/16 p1, 0x4b

    if-le p0, p1, :cond_1

    const/16 p0, 0x4b

    :cond_1
    return p0
.end method

.method static getIntFromString(Ljava/lang/String;I)I
    .locals 1

    .line 3542
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->NUMBER_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3543
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 3544
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getKeyClickVolume()F
    .locals 7

    .line 3242
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3252
    :cond_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyClickMethod:I

    if-nez v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 3255
    :cond_1
    sget-object v2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v2, v2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyClickVolume:F

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-le v0, v3, :cond_4

    .line 3260
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 3261
    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v3, v3

    div-float/2addr v6, v3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    mul-float v2, v2, v6

    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_4

    cmpl-float v0, v6, v1

    if-nez v0, :cond_3

    return v1

    :cond_3
    div-float/2addr v2, v6

    .line 3268
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_4
    :goto_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const/high16 v3, 0x42900000    # 72.0f

    sub-float/2addr v2, v4

    mul-float v2, v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 3272
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getKeyboardModeNum(II)I
    .locals 3

    .line 440
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNumKeyboardModes:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    :cond_0
    add-int/2addr p1, p2

    .line 441
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNumKeyboardModes:I

    rem-int/2addr p1, p2

    .line 442
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNumKeyboardModes:I

    if-ne p2, v2, :cond_1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    :cond_1
    return p1
.end method

.method private getMetaState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x41

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1500
    :goto_0
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    if-eqz v0, :cond_1

    or-int/lit16 p1, p1, 0x3000

    .line 1501
    :cond_1
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-eqz v0, :cond_2

    or-int/lit8 p1, p1, 0x12

    .line 1502
    :cond_2
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x30000

    or-int/2addr p1, v0

    :cond_3
    return p1
.end method

.method static getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1

    .line 3548
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3550
    invoke-static {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getIntFromString(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 3554
    invoke-static {p2, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getIntFromString(Ljava/lang/String;I)I

    move-result p2

    .line 3555
    invoke-static {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getShiftState()I
    .locals 1

    .line 1330
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getShiftState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getTypedSuggestions(Lorg/pocketworkstation/pckeyboard/WordComposer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/pocketworkstation/pckeyboard/WordComposer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 2518
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 2519
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2518
    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/pocketworkstation/pckeyboard/Suggest;->getSuggestions(Landroid/view/View;Lorg/pocketworkstation/pckeyboard/WordComposer;ZLjava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private handleBackspace()V
    .locals 6

    .line 2128
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2132
    :cond_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2134
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 2135
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2137
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2138
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/WordComposer;->deleteLast()V

    .line 2139
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2140
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2141
    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    .line 2143
    :cond_1
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateSuggestions()V

    goto :goto_0

    .line 2145
    :cond_2
    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :goto_0
    const/4 v2, 0x0

    .line 2150
    :cond_3
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateShiftKeyState()V

    .line 2151
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->backspace()V

    .line 2152
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->getState()Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    move-result-object v1

    sget-object v4, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->UNDO_COMMIT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    if-ne v1, v4, :cond_4

    .line 2153
    invoke-virtual {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->revertLastWord(Z)V

    .line 2154
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void

    .line 2156
    :cond_4
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 2157
    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2158
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_7

    .line 2160
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    .line 2161
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2170
    invoke-virtual {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->revertLastWord(Z)V

    goto :goto_1

    :cond_6
    const/16 v1, 0x43

    .line 2172
    invoke-virtual {p0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendDownUpKeyEvents(I)V

    .line 2173
    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeleteCount:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_7

    .line 2174
    invoke-virtual {p0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendDownUpKeyEvents(I)V

    :cond_7
    :goto_1
    const/4 v1, 0x0

    .line 2178
    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 2179
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void
.end method

.method private handleCharacter(I[I)V
    .locals 4

    .line 2290
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastSelectionStart:I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastSelectionEnd:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2291
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->isCorrecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2292
    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->abortCorrection(Z)V

    .line 2295
    :cond_0
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isAlphabet(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    if-nez v0, :cond_1

    .line 2297
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isCursorTouchingWord()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2298
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    if-nez v0, :cond_1

    .line 2299
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    .line 2300
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2301
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 2302
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/WordComposer;->reset()V

    .line 2306
    :cond_1
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    if-eqz v0, :cond_3

    .line 2307
    :cond_2
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;Z)V

    .line 2310
    :cond_3
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    if-eqz v0, :cond_8

    .line 2311
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isShiftCapsMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 2312
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    .line 2313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 2316
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/WordComposer;->setFirstCharCapitalized(Z)V

    .line 2318
    :cond_4
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    int-to-char v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2319
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-virtual {v0, p1, p2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->add(I[I)V

    .line 2320
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 2323
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/WordComposer;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 2324
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    .line 2325
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 2324
    invoke-direct {p0, p2, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v0, v2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->setAutoCapitalized(Z)V

    .line 2327
    :cond_6
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {p2, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2329
    :cond_7
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateSuggestions()V

    goto :goto_0

    :cond_8
    int-to-char p2, p1

    .line 2331
    invoke-virtual {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifiableKeyChar(C)V

    .line 2333
    :goto_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    int-to-char p2, p1

    .line 2335
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isWordSeparator(I)Z

    move-result p1

    .line 2334
    invoke-static {p2, p1}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->typedCharacter(CZ)V

    return-void
.end method

.method private handleClose()V
    .locals 2

    .line 2411
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;Z)V

    const/4 v0, 0x0

    .line 2412
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->requestHideSelf(I)V

    .line 2413
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    if-eqz v0, :cond_0

    .line 2414
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2416
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->closing()V

    .line 2419
    :cond_0
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->endSession()V

    return-void
.end method

.method private handleModifierKeysUp(ZZ)V
    .locals 3

    .line 1619
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1620
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mMetaKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->delayChordingMetaModifier()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    .line 1621
    invoke-direct {p0, v0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendMetaKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    .line 1622
    :cond_1
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mMetaKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModMeta(Z)V

    .line 1624
    :cond_2
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAltKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->delayChordingAltModifier()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    if-eqz p2, :cond_4

    .line 1625
    invoke-direct {p0, v0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendAltKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    .line 1626
    :cond_4
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAltKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModAlt(Z)V

    .line 1628
    :cond_5
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCtrlKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->delayChordingCtrlModifier()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    if-eqz p2, :cond_7

    .line 1629
    invoke-direct {p0, v0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendCtrlKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    .line 1630
    :cond_7
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCtrlKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModCtrl(Z)V

    :cond_8
    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    .line 1634
    invoke-direct {p0, v0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendShiftKey(Landroid/view/inputmethod/InputConnection;Z)V

    .line 1635
    :cond_9
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getShiftState()I

    move-result p1

    .line 1636
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShiftKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result p2

    if-nez p2, :cond_a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_a

    .line 1637
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->resetShift()V

    :cond_a
    return-void
.end method

.method private handleSeparator(I)V
    .locals 8

    .line 2342
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    .line 2343
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2344
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateSuggestions()V

    .line 2349
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2351
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2352
    invoke-direct {p0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->abortCorrection(Z)V

    .line 2354
    :cond_1
    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 2361
    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCorrectOn:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x27

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 2364
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 2365
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_4

    .line 2366
    :cond_2
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->pickDefaultSuggestion()Z

    move-result v2

    if-ne p1, v3, :cond_6

    .line 2371
    iget-boolean v5, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCorrectEnabled:Z

    if-eqz v5, :cond_3

    .line 2372
    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0

    :cond_3
    const-string v5, ""

    .line 2374
    invoke-static {v5}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->manualTyped(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2378
    :cond_4
    invoke-direct {p0, v0, v4}, Lorg/pocketworkstation/pckeyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;Z)V

    :cond_5
    const/4 v2, 0x0

    .line 2381
    :cond_6
    :goto_0
    iget-boolean v5, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAddedAutoSpace:Z

    const/16 v6, 0xa

    if-eqz v5, :cond_7

    if-ne p1, v6, :cond_7

    .line 2382
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->removeTrailingSpace()V

    .line 2383
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAddedAutoSpace:Z

    :cond_7
    int-to-char v1, p1

    .line 2385
    invoke-virtual {p0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifiableKeyChar(C)V

    .line 2389
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->getState()Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    move-result-object v5

    sget-object v7, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    if-ne v5, v7, :cond_8

    const/16 v5, 0x2e

    if-ne p1, v5, :cond_8

    .line 2391
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->reswapPeriodAndSpace()V

    .line 2394
    :cond_8
    invoke-static {v1, v4}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->typedCharacter(CZ)V

    .line 2395
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->getState()Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    move-result-object v1

    sget-object v4, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    if-ne v1, v4, :cond_9

    if-eq p1, v6, :cond_9

    .line 2397
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->swapPunctuationAndSpace()V

    goto :goto_1

    .line 2398
    :cond_9
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result v1

    if-eqz v1, :cond_a

    if-ne p1, v3, :cond_a

    .line 2399
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->doubleSpace()V

    :cond_a
    :goto_1
    if-eqz v2, :cond_b

    .line 2402
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->backToAcceptedDefault(Ljava/lang/CharSequence;)V

    .line 2404
    :cond_b
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    if-eqz v0, :cond_c

    .line 2406
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_c
    return-void
.end method

.method private handleShift()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2240
    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleShiftInternal(ZI)V

    return-void
.end method

.method private handleShiftInternal(ZI)V
    .locals 2

    .line 2269
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2270
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 2271
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 2273
    invoke-virtual {v0, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setShiftState(I)V

    goto :goto_0

    .line 2275
    :cond_0
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getShiftState()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->nextShiftState(IZ)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setShiftState(I)V

    goto :goto_0

    .line 2278
    :cond_1
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->toggleShift()V

    :goto_0
    return-void
.end method

.method private initSuggest(Ljava/lang/String;)V
    .locals 6

    .line 597
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mInputLocale:Ljava/lang/String;

    .line 599
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 601
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 602
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 603
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 604
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    if-eqz p1, :cond_0

    .line 605
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Suggest;->close()V

    .line 608
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "quick_fixes"

    .line 609
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04000e

    .line 610
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 609
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mQuickFixes:Z

    .line 612
    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getDictionary(Landroid/content/res/Resources;)[I

    move-result-object p1

    .line 613
    new-instance v3, Lorg/pocketworkstation/pckeyboard/Suggest;

    invoke-direct {v3, p0, p1}, Lorg/pocketworkstation/pckeyboard/Suggest;-><init>(Landroid/content/Context;[I)V

    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    .line 614
    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateAutoTextEnabled(Ljava/util/Locale;)V

    .line 615
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/UserDictionary;

    if-eqz p1, :cond_1

    .line 616
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/UserDictionary;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->close()V

    .line 617
    :cond_1
    new-instance p1, Lorg/pocketworkstation/pckeyboard/UserDictionary;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mInputLocale:Ljava/lang/String;

    invoke-direct {p1, p0, v3}, Lorg/pocketworkstation/pckeyboard/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/UserDictionary;

    .line 622
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoDictionary:Lorg/pocketworkstation/pckeyboard/AutoDictionary;

    if-eqz p1, :cond_2

    .line 623
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoDictionary:Lorg/pocketworkstation/pckeyboard/AutoDictionary;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->close()V

    .line 625
    :cond_2
    new-instance p1, Lorg/pocketworkstation/pckeyboard/AutoDictionary;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mInputLocale:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-direct {p1, p0, p0, v3, v4}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;-><init>(Landroid/content/Context;Lorg/pocketworkstation/pckeyboard/LatinIME;Ljava/lang/String;I)V

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoDictionary:Lorg/pocketworkstation/pckeyboard/AutoDictionary;

    .line 627
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;

    if-eqz p1, :cond_3

    .line 628
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;->close()V

    .line 630
    :cond_3
    new-instance p1, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mInputLocale:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {p1, p0, p0, v3, v4}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;-><init>(Landroid/content/Context;Lorg/pocketworkstation/pckeyboard/LatinIME;Ljava/lang/String;I)V

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;

    .line 632
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;

    invoke-virtual {p1, v3}, Lorg/pocketworkstation/pckeyboard/Suggest;->setUserBigramDictionary(Lorg/pocketworkstation/pckeyboard/Dictionary;)V

    .line 633
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/UserDictionary;

    invoke-virtual {p1, v3}, Lorg/pocketworkstation/pckeyboard/Suggest;->setUserDictionary(Lorg/pocketworkstation/pckeyboard/Dictionary;)V

    .line 635
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoDictionary:Lorg/pocketworkstation/pckeyboard/AutoDictionary;

    invoke-virtual {p1, v3}, Lorg/pocketworkstation/pckeyboard/Suggest;->setAutoDictionary(Lorg/pocketworkstation/pckeyboard/Dictionary;)V

    .line 636
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateCorrectionMode()V

    .line 637
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c01b6

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 638
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0142

    .line 639
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    .line 640
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->initSuggestPuncList()V

    .line 642
    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 643
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method private initSuggestPuncList()V
    .locals 4

    .line 3422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    .line 3423
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-object v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->suggestedPunctuation:Ljava/lang/String;

    .line 3424
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3425
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3427
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3430
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3431
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    .line 3434
    :cond_2
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setNextSuggestions()V

    return-void
.end method

.method private isAlphabet(I)Z
    .locals 0

    .line 1450
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isCandidateStripVisible()Z
    .locals 1

    .line 2461
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result v0

    return v0
.end method

.method private isConnectbot()Z
    .locals 4

    .line 1487
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1488
    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "org.connectbot"

    .line 1490
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "org.woltage.irssiconnectbot"

    .line 1491
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.pslib.connectbot"

    .line 1492
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "sk.vx.connectbot"

    .line 1493
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v2
.end method

.method private isCursorTouchingWord()Z
    .locals 5

    .line 2838
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 2841
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2842
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2843
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2844
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 2847
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2848
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private isPortrait()Z
    .locals 2

    .line 545
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isPredictionOn()Z
    .locals 1

    .line 2453
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredictionOnForMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionWanted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPredictionWanted()Z
    .locals 1

    .line 2457
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShowSuggestions:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOn:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->suggestionsDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSentenceSeparator(I)Z
    .locals 1

    .line 2894
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private isShiftCapsMode()Z
    .locals 1

    .line 1340
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1343
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isShiftCaps()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isShiftMod()Z
    .locals 1

    .line 1528
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShiftKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1529
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    if-eqz v0, :cond_1

    .line 1530
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1531
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isShiftAll()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isShowingOptionDialog()Z
    .locals 1

    .line 1483
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSuggestedPunctuation(I)Z
    .locals 1

    .line 3438
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-object v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->suggestedPunctuation:Ljava/lang/String;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private loadSettings()V
    .locals 6

    .line 3382
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "vibrate_on"

    const/4 v2, 0x0

    .line 3383
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVibrateOn:Z

    const-string v1, "vibrate_len"

    .line 3384
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c019d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVibrateLen:I

    const-string v1, "sound_on"

    .line 3385
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSoundOn:Z

    const-string v1, "popup_on"

    .line 3386
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f04000d

    .line 3387
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3386
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPopupOn:Z

    const-string v1, "auto_cap"

    .line 3388
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCapPref:Z

    const-string v1, "quick_fixes"

    const/4 v3, 0x1

    .line 3390
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mQuickFixes:Z

    const-string v1, "show_suggestions"

    .line 3392
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f040011

    .line 3393
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 3392
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShowSuggestions:Z

    const-string v1, "voice_mode"

    const v4, 0x7f0c01a5

    .line 3396
    invoke-virtual {p0, v4}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3395
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0c01a6

    .line 3398
    invoke-virtual {p0, v5}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 3401
    :goto_0
    invoke-virtual {p0, v4}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3402
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnableVoice:Z

    if-ne v5, v4, :cond_1

    iget-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVoiceOnPrimary:Z

    if-eq v1, v4, :cond_2

    .line 3404
    :cond_1
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v4, v5, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setVoiceMode(ZZ)V

    .line 3406
    :cond_2
    iput-boolean v5, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnableVoice:Z

    .line 3407
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVoiceOnPrimary:Z

    const-string v1, "auto_complete"

    .line 3409
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f040013

    .line 3410
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 3409
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShowSuggestions:Z

    and-int/2addr v1, v4

    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCorrectEnabled:Z

    .line 3414
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateCorrectionMode()V

    .line 3415
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateAutoTextEnabled(Ljava/util/Locale;)V

    .line 3416
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {v1, v0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 3417
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCapPref:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->allowAutoCap()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCapActive:Z

    .line 3418
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->allowDeadKeys()Z

    move-result v0

    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeadKeysActive:Z

    return-void
.end method

.method private maybeRemovePreviousPeriod(Ljava/lang/CharSequence;)V
    .locals 5

    .line 1414
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1415
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1420
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1421
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 1422
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    .line 1423
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p1, v4, :cond_1

    .line 1424
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private measureCps()V
    .locals 8

    .line 3525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3526
    iget-wide v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastCpsTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x64

    sub-long v2, v0, v2

    .line 3527
    iput-wide v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastCpsTime:J

    .line 3528
    :cond_0
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCpsIntervals:[J

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCpsIndex:I

    iget-wide v6, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastCpsTime:J

    sub-long v6, v0, v6

    aput-wide v6, v2, v3

    .line 3529
    iput-wide v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastCpsTime:J

    .line 3530
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCpsIndex:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCpsIndex:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3533
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCpsIntervals:[J

    aget-wide v6, v2, v0

    add-long/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3534
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x467a0000    # 16000.0f

    long-to-float v3, v4

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 3490
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x6e

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x5

    .line 3491
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3492
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static nextShiftState(IZ)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    return v1

    :cond_0
    if-ne p0, v1, :cond_1

    .line 2253
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCapsOrShiftLockState()I

    move-result p0

    return p0

    :cond_1
    return v0

    :cond_2
    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method private onOptionKeyLongPressed()V
    .locals 1

    .line 1477
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1478
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->showInputMethodPicker()V

    :cond_0
    return-void
.end method

.method private onOptionKeyPressed()V
    .locals 2

    .line 1463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1467
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1470
    :cond_0
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1471
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->showOptionsMenu()V

    :cond_1
    :goto_0
    return-void
.end method

.method private pickDefaultSuggestion()Z
    .locals 3

    .line 2584
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2585
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2586
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateSuggestions()V

    .line 2588
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2589
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 2590
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAccepted:Z

    .line 2591
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    .line 2593
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    return v0

    :cond_1
    return v1
.end method

.method private pickSuggestion(Ljava/lang/CharSequence;Z)V
    .locals 3

    .line 2694
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    .line 2695
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getShiftState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2697
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2699
    :cond_1
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2701
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->rememberReplacedWord(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 2702
    invoke-interface {v1, p1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2704
    :cond_2
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 2705
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    .line 2706
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCommittedLength:I

    .line 2707
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object p1

    check-cast p1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setPreferredLetters([I)V

    if-nez p2, :cond_3

    .line 2710
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setNextSuggestions()V

    .line 2712
    :cond_3
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method private playKeyClick(I)V
    .locals 2

    .line 3280
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3281
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3282
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateRingerMode()V

    .line 3285
    :cond_0
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSoundOn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSilentMode:Z

    if-nez v0, :cond_4

    const/4 v0, 0x5

    const/4 v1, -0x5

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0x20

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    .line 3300
    :goto_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getKeyClickVolume()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    :cond_4
    return-void
.end method

.method private postUpdateOldSuggestions()V
    .locals 4

    .line 2447
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2448
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    .line 2449
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 2448
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private postUpdateShiftKeyState()V
    .locals 0

    return-void
.end method

.method private postUpdateSuggestions()V
    .locals 4

    .line 2441
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2442
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    .line 2443
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 2442
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private processMultiKey(I)Z
    .locals 2

    .line 1922
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeadAccentBuffer:Lorg/pocketworkstation/pckeyboard/ComposeSequence;

    iget-object v0, v0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->composeBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 1924
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeadAccentBuffer:Lorg/pocketworkstation/pckeyboard/ComposeSequence;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->execute(I)Z

    .line 1925
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeadAccentBuffer:Lorg/pocketworkstation/pckeyboard/ComposeSequence;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->clear()V

    return v1

    .line 1928
    :cond_0
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposeMode:Z

    if-eqz v0, :cond_1

    .line 1929
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposeBuffer:Lorg/pocketworkstation/pckeyboard/ComposeSequence;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->execute(I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposeMode:Z

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private reloadKeyboards()V
    .locals 4

    .line 1259
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setLanguageSwitcher(Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;)V

    .line 1260
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 1261
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1262
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnableVoice:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVoiceOnPrimary:Z

    invoke-virtual {v0, v2, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setVoiceMode(ZZ)V

    .line 1265
    :cond_1
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateKeyboardOptions()V

    .line 1266
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    return-void
.end method

.method private rememberReplacedWord(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private removeCandidateViewContainer()V
    .locals 2

    .line 742
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 744
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 746
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 748
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    .line 749
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    .line 751
    :cond_1
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->resetPrediction()V

    return-void
.end method

.method private removeTrailingSpace()V
    .locals 5

    .line 1429
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1433
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1434
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 1435
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 1436
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_1
    return-void
.end method

.method private resetMultitouchShift()V
    .locals 2

    .line 2229
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSavedShiftState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSavedShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2230
    :cond_1
    :goto_0
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSavedShiftState:I

    :goto_1
    const/4 v1, 0x1

    .line 2232
    invoke-direct {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleShiftInternal(ZI)V

    return-void
.end method

.method private resetPrediction()V
    .locals 2

    .line 755
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 756
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    .line 757
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeleteCount:I

    .line 758
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAddedAutoSpace:Z

    return-void
.end method

.method private resetShift()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2236
    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleShiftInternal(ZI)V

    return-void
.end method

.method private reswapPeriodAndSpace()V
    .locals 8

    .line 1376
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1379
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1380
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 1381
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    .line 1382
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    const/4 v6, 0x2

    .line 1383
    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1384
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1385
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const-string v1, " .."

    .line 1386
    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1387
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1388
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    :cond_1
    return-void
.end method

.method private sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 2855
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2856
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private saveWordInHistory(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2423
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/WordComposer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2424
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/WordComposer;->reset()V

    return-void

    .line 2428
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2434
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2435
    new-instance v0, Lorg/pocketworkstation/pckeyboard/LatinIME$TypedWordAlternatives;

    new-instance v1, Lorg/pocketworkstation/pckeyboard/WordComposer;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-direct {v1, v2}, Lorg/pocketworkstation/pckeyboard/WordComposer;-><init>(Lorg/pocketworkstation/pckeyboard/WordComposer;)V

    invoke-direct {v0, p0, p1, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME$TypedWordAlternatives;-><init>(Lorg/pocketworkstation/pckeyboard/LatinIME;Ljava/lang/CharSequence;Lorg/pocketworkstation/pckeyboard/WordComposer;)V

    .line 2437
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sendAltKey(Landroid/view/inputmethod/InputConnection;ZZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1576
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->delayChordingAltModifier()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 1578
    :cond_0
    sget-object p3, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget p3, p3, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->chordingAltKey:I

    if-nez p3, :cond_1

    const/16 p3, 0x39

    :cond_1
    const/16 v0, 0x12

    if-eqz p2, :cond_2

    .line 1582
    invoke-direct {p0, p1, p3, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyDown(Landroid/view/inputmethod/InputConnection;II)V

    goto :goto_0

    .line 1584
    :cond_2
    invoke-direct {p0, p1, p3, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyUp(Landroid/view/inputmethod/InputConnection;II)V

    :goto_0
    return-void
.end method

.method private sendCtrlKey(Landroid/view/inputmethod/InputConnection;ZZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1563
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->delayChordingCtrlModifier()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 1565
    :cond_0
    sget-object p3, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget p3, p3, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->chordingCtrlKey:I

    if-nez p3, :cond_1

    const/16 p3, 0x71

    :cond_1
    const/16 v0, 0x3000

    if-eqz p2, :cond_2

    .line 1569
    invoke-direct {p0, p1, p3, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyDown(Landroid/view/inputmethod/InputConnection;II)V

    goto :goto_0

    .line 1571
    :cond_2
    invoke-direct {p0, p1, p3, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyUp(Landroid/view/inputmethod/InputConnection;II)V

    :goto_0
    return-void
.end method

.method private sendEscape()V
    .locals 1

    .line 1914
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isConnectbot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    .line 1915
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyChar(C)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x6f

    .line 1917
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifiedKeyDownUp(I)V

    :goto_0
    return-void
.end method

.method private sendKeyDown(Landroid/view/inputmethod/InputConnection;II)V
    .locals 10

    .line 1507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz p1, :cond_0

    .line 1508
    new-instance v9, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-wide v1, v3

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    invoke-interface {p1, v9}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method

.method private sendKeyUp(Landroid/view/inputmethod/InputConnection;II)V
    .locals 10

    .line 1513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz p1, :cond_0

    .line 1514
    new-instance v9, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, v9

    move-wide v1, v3

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    invoke-interface {p1, v9}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method

.method private sendMetaKey(Landroid/view/inputmethod/InputConnection;ZZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1589
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->delayChordingMetaModifier()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 1591
    :cond_0
    sget-object p3, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget p3, p3, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->chordingMetaKey:I

    if-nez p3, :cond_1

    const/16 p3, 0x75

    :cond_1
    const/high16 v0, 0x30000

    if-eqz p2, :cond_2

    .line 1595
    invoke-direct {p0, p1, p3, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyDown(Landroid/view/inputmethod/InputConnection;II)V

    goto :goto_0

    .line 1597
    :cond_2
    invoke-direct {p0, p1, p3, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyUp(Landroid/view/inputmethod/InputConnection;II)V

    :goto_0
    return-void
.end method

.method private sendModifiedKeyDownUp(I)V
    .locals 1

    .line 1549
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isShiftMod()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifiedKeyDownUp(IZ)V

    return-void
.end method

.method private sendModifiedKeyDownUp(IZ)V
    .locals 2

    .line 1519
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1520
    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getMetaState(Z)I

    move-result v1

    .line 1521
    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifierKeysDown(Z)V

    .line 1522
    invoke-direct {p0, v0, p1, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyDown(Landroid/view/inputmethod/InputConnection;II)V

    .line 1523
    invoke-direct {p0, v0, p1, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyUp(Landroid/view/inputmethod/InputConnection;II)V

    .line 1524
    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifierKeysUp(Z)V

    return-void
.end method

.method private sendModifierKeysDown(Z)V
    .locals 3

    .line 1602
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1605
    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendShiftKey(Landroid/view/inputmethod/InputConnection;Z)V

    .line 1607
    :cond_0
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCtrlKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->delayChordingCtrlModifier()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1608
    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendCtrlKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    .line 1610
    :cond_2
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAltKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->delayChordingAltModifier()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1611
    :cond_3
    invoke-direct {p0, v0, v1, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendAltKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    .line 1613
    :cond_4
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mMetaKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->delayChordingMetaModifier()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1614
    :cond_5
    invoke-direct {p0, v0, v1, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendMetaKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    :cond_6
    return-void
.end method

.method private sendModifierKeysUp(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1643
    invoke-direct {p0, p1, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleModifierKeysUp(ZZ)V

    return-void
.end method

.method private sendShiftKey(Landroid/view/inputmethod/InputConnection;Z)V
    .locals 2

    const/16 v0, 0x3b

    const/16 v1, 0x41

    if-eqz p2, :cond_0

    .line 1556
    invoke-direct {p0, p1, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyDown(Landroid/view/inputmethod/InputConnection;II)V

    goto :goto_0

    .line 1558
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyUp(Landroid/view/inputmethod/InputConnection;II)V

    :goto_0
    return-void
.end method

.method private sendSpace()V
    .locals 1

    const/16 v0, 0x20

    .line 2898
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifiableKeyChar(C)V

    .line 2899
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method private sendSpecialKey(I)V
    .locals 14

    .line 1647
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isConnectbot()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1648
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;Z)V

    .line 1649
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifiedKeyDownUp(I)V

    return-void

    .line 1657
    :cond_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1658
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    .line 1659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    .line 1662
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v2, 0x7a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[1~"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v2, 0x7b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[4~"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[5~"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[6~"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v2, 0x83

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OP"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v3, 0x84

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "OQ"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v4, 0x85

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "OR"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v5, 0x86

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "OS"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v6, 0x87

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "[15~"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v7, 0x88

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "[17~"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v8, 0x89

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "[18~"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v9, 0x8a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "[19~"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v10, 0x8b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "[20~"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v11, 0x8c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "[21~"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v12, 0x8d

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "[23~"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v12, 0x8e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "[24~"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v12, 0x70

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "[3~"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    const/16 v12, 0x7c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "[2~"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    :cond_1
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v2, 0x0

    .line 1708
    iget-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mConnectbotTabHack:Z

    if-eqz v3, :cond_2

    .line 1709
    sget-object v2, Lorg/pocketworkstation/pckeyboard/LatinIME;->CTRL_SEQUENCES:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1711
    :cond_2
    sget-object v3, Lorg/pocketworkstation/pckeyboard/LatinIME;->ESC_SEQUENCES:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 1714
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-eqz p1, :cond_3

    .line 1716
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1718
    :cond_3
    new-instance p1, Landroid/view/KeyEvent;

    const/16 v3, 0x17

    invoke-direct {p1, v5, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1720
    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1722
    new-instance p1, Landroid/view/KeyEvent;

    .line 1723
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p1, v5, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1722
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1724
    new-instance p1, Landroid/view/KeyEvent;

    .line 1725
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p1, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1724
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_6

    .line 1727
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-eqz p1, :cond_5

    .line 1729
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1732
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1733
    invoke-interface {v0, v3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1736
    :cond_6
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendDownUpKeyEvents(I)V

    .line 1738
    :goto_0
    invoke-direct {p0, v5, v5}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleModifierKeysUp(ZZ)V

    return-void
.end method

.method private sendTab()V
    .locals 5

    .line 1891
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1892
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isConnectbot()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mConnectbotTabHack:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1896
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x1b

    .line 1898
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1900
    :cond_1
    new-instance v1, Landroid/view/KeyEvent;

    const/16 v4, 0x17

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1902
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1904
    new-instance v1, Landroid/view/KeyEvent;

    const/16 v4, 0x25

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1906
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_2
    const/16 v0, 0x3d

    .line 1909
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifiedKeyDownUp(I)V

    :goto_1
    return-void
.end method

.method private setCandidatesViewShownInternal(ZZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1126
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->onEvaluateInputViewShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 1127
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1128
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 1130
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1133
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    if-nez p2, :cond_3

    .line 1134
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->onCreateCandidatesView()Landroid/view/View;

    .line 1135
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setNextSuggestions()V

    goto :goto_1

    .line 1138
    :cond_2
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_3

    .line 1139
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->removeCandidateViewContainer()V

    .line 1140
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;Z)V

    .line 1143
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    return-void
.end method

.method private setModAlt(Z)V
    .locals 1

    .line 2190
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setAltIndicator(Z)V

    .line 2191
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    return-void
.end method

.method private setModCtrl(Z)V
    .locals 1

    .line 2184
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setCtrlIndicator(Z)V

    .line 2185
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    return-void
.end method

.method private setModFn(Z)V
    .locals 1

    .line 2202
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModFn:Z

    .line 2203
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setFn(Z)V

    .line 2204
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    invoke-virtual {p1, v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setCtrlIndicator(Z)V

    .line 2205
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    invoke-virtual {p1, v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setAltIndicator(Z)V

    .line 2206
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    invoke-virtual {p1, v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setMetaIndicator(Z)V

    return-void
.end method

.method private setModMeta(Z)V
    .locals 1

    .line 2196
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setMetaIndicator(Z)V

    .line 2197
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    return-void
.end method

.method private setNextSuggestions()V
    .locals 2

    .line 2789
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    return-void
.end method

.method private setNotification(Z)V
    .locals 10

    const-string v0, "notification"

    .line 480
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    if-eqz p1, :cond_0

    .line 482
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNotificationReceiver:Lorg/pocketworkstation/pckeyboard/NotificationReceiver;

    if-nez p1, :cond_0

    .line 483
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->createNotificationChannel()V

    const-string p1, "Keyboard notification enabled."

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 489
    new-instance v0, Lorg/pocketworkstation/pckeyboard/NotificationReceiver;

    invoke-direct {v0, p0}, Lorg/pocketworkstation/pckeyboard/NotificationReceiver;-><init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNotificationReceiver:Lorg/pocketworkstation/pckeyboard/NotificationReceiver;

    .line 490
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "org.pocketworkstation.pckeyboard.SHOW"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "org.pocketworkstation.pckeyboard.SETTINGS"

    .line 491
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNotificationReceiver:Lorg/pocketworkstation/pckeyboard/NotificationReceiver;

    invoke-virtual {p0, v2, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 494
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.pocketworkstation.pckeyboard.SHOW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 498
    new-instance v2, Landroid/content/Intent;

    const-string v5, "org.pocketworkstation.pckeyboard.SETTINGS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v5, "Show Hacker\'s Keyboard"

    const-string v6, "Select this to open the keyboard. Disable in settings."

    .line 505
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v8, "PCKeyboard"

    invoke-direct {v7, p0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x7f070097

    .line 506
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const v9, -0xddffbc

    .line 507
    invoke-virtual {v7, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 508
    invoke-virtual {v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 509
    invoke-virtual {v7, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 510
    invoke-virtual {p1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 511
    invoke-virtual {p1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 512
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 513
    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x7f0c011c

    .line 514
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 516
    invoke-virtual {p1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 532
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    .line 535
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNotificationReceiver:Lorg/pocketworkstation/pckeyboard/NotificationReceiver;

    if-eqz p1, :cond_1

    .line 538
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 539
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNotificationReceiver:Lorg/pocketworkstation/pckeyboard/NotificationReceiver;

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 540
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNotificationReceiver:Lorg/pocketworkstation/pckeyboard/NotificationReceiver;

    :cond_1
    :goto_0
    return-void
.end method

.method private setOldSuggestions()V
    .locals 5

    .line 2768
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    .line 2769
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2772
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2775
    :cond_1
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 2777
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastSelectionStart:I

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastSelectionEnd:I

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 2778
    invoke-static {v0, v1, v3, v4}, Lorg/pocketworkstation/pckeyboard/EditingUtil;->getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lorg/pocketworkstation/pckeyboard/EditingUtil$SelectedWord;

    .line 2781
    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->abortCorrection(Z)V

    .line 2782
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setNextSuggestions()V

    goto :goto_0

    .line 2784
    :cond_2
    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->abortCorrection(Z)V

    :goto_0
    return-void
.end method

.method private setSuggestions(Ljava/util/List;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 2490
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mIsShowingHint:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2491
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setCandidatesViewShown(Z)V

    const/4 v0, 0x0

    .line 2492
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mIsShowingHint:Z

    .line 2495
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    if-eqz v0, :cond_1

    .line 2496
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/pocketworkstation/pckeyboard/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    :cond_1
    return-void
.end method

.method private shouldShowVoiceButton(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private showCorrections(Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;)V
    .locals 3

    .line 2524
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;->getAlternatives()Ljava/util/List;

    move-result-object v0

    .line 2525
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    const/4 v2, 0x0

    .line 2526
    invoke-virtual {v1, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setPreferredLetters([I)V

    .line 2527
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;->getOriginalWord()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method private showInputMethodPicker()V
    .locals 1

    const-string v0, "input_method"

    .line 1458
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1459
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    return-void
.end method

.method private showOptionsMenu()V
    .locals 6

    .line 3442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 3443
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f07008f

    .line 3444
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 3445
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0065

    .line 3446
    invoke-virtual {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0141

    .line 3447
    invoke-virtual {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 3448
    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    aput-object v2, v4, v1

    new-instance v1, Lorg/pocketworkstation/pckeyboard/LatinIME$4;

    invoke-direct {v1, p0}, Lorg/pocketworkstation/pckeyboard/LatinIME$4;-><init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3464
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0063

    .line 3465
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3464
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3466
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3467
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3468
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3469
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v2, 0x3eb

    .line 3470
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3471
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v1, 0x20000

    .line 3472
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3473
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "ZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2569
    invoke-direct {p0, p1, v0, p3, p4}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2570
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    if-eqz p4, :cond_0

    if-nez p3, :cond_0

    .line 2571
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v2, :cond_0

    .line 2572
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    .line 2574
    :cond_0
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2577
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 2579
    :goto_0
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isCandidateStripVisible()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletionOn:Z

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setCandidatesViewShown(Z)V

    return-void
.end method

.method private showSuggestions(Lorg/pocketworkstation/pckeyboard/WordComposer;)V
    .locals 7

    .line 2535
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 2534
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/EditingUtil;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2536
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 2537
    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v2

    const/4 v3, 0x0

    .line 2536
    invoke-virtual {v1, v2, p1, v3, v0}, Lorg/pocketworkstation/pckeyboard/Suggest;->getSuggestions(Landroid/view/View;Lorg/pocketworkstation/pckeyboard/WordComposer;ZLjava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 2541
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/Suggest;->getNextLettersFrequencies()[I

    move-result-object v1

    .line 2543
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v2

    check-cast v2, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    .line 2544
    invoke-virtual {v2, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setPreferredLetters([I)V

    .line 2546
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    .line 2547
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/Suggest;->hasMinimalCorrection()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2549
    :goto_0
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2551
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    invoke-virtual {v5, v4}, Lorg/pocketworkstation/pckeyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2552
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->preferCapitalization()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    .line 2553
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2552
    invoke-virtual {v5, v6}, Lorg/pocketworkstation/pckeyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 2554
    :cond_2
    iget v5, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    iget v5, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    :cond_3
    or-int/2addr v1, v3

    .line 2559
    :cond_4
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/WordComposer;->isMostlyCaps()Z

    move-result p1

    xor-int/2addr p1, v2

    and-int/2addr p1, v1

    .line 2560
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->isCorrecting()Z

    move-result v1

    xor-int/2addr v1, v2

    and-int/2addr p1, v1

    .line 2562
    invoke-direct {p0, v0, v4, v3, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method private startMultitouchShift()V
    .locals 3

    .line 2211
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2212
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getShiftState()I

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSavedShiftState:I

    .line 2213
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSavedShiftState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2215
    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleShiftInternal(ZI)V

    return-void
.end method

.method private suggestionsDisabled()Z
    .locals 3

    .line 549
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOff:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 550
    :cond_0
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOn:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 551
    :cond_1
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionsInLandscape:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private swapPunctuationAndSpace()V
    .locals 6

    .line 1359
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1362
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1363
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 1364
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    .line 1365
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isSentenceSeparator(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1366
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1367
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1369
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1370
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1371
    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAddedAutoSpace:Z

    :cond_1
    return-void
.end method

.method private switchToKeyboardView()V
    .locals 2

    .line 2465
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/pocketworkstation/pckeyboard/LatinIME$2;

    invoke-direct {v1, p0}, Lorg/pocketworkstation/pckeyboard/LatinIME$2;-><init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAutoTextEnabled(Ljava/util/Locale;)V
    .locals 3

    .line 3359
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    if-nez v0, :cond_0

    return-void

    .line 3361
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mInputLocale:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3362
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3361
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 3363
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mQuickFixes:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/pocketworkstation/pckeyboard/Suggest;->setAutoTextEnabled(Z)V

    return-void
.end method

.method private updateCorrectionMode()V
    .locals 3

    .line 3340
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Suggest;->hasMainDictionary()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHasDictionary:Z

    .line 3342
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCorrectEnabled:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mQuickFixes:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHasDictionary:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCorrectOn:Z

    .line 3344
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCorrectOn:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCorrectEnabled:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCorrectOn:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    .line 3347
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    .line 3349
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->suggestionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3350
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCorrectOn:Z

    .line 3351
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    .line 3353
    :cond_5
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    if-eqz v0, :cond_6

    .line 3354
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/Suggest;->setCorrectionMode(I)V

    :cond_6
    return-void
.end method

.method private updateKeyboardOptions()V
    .locals 3

    .line 448
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPortrait()Z

    move-result v0

    .line 450
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean v1, v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->compactModeEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNumKeyboardModes:I

    if-eqz v0, :cond_1

    .line 452
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v1, v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyboardModePortrait:I

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardModeOverridePortrait:I

    invoke-direct {p0, v1, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getKeyboardModeNum(II)I

    move-result v1

    goto :goto_1

    .line 454
    :cond_1
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v1, v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyboardModeLandscape:I

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardModeOverrideLandscape:I

    invoke-direct {p0, v1, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getKeyboardModeNum(II)I

    move-result v1

    :goto_1
    if-eqz v0, :cond_2

    .line 457
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightPortrait:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightLandscape:I

    .line 458
    :goto_2
    sget-object v2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iput v1, v2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyboardMode:I

    .line 459
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    int-to-float v0, v0

    iput v0, v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyboardHeightPercent:F

    return-void
.end method

.method private updateRingerMode()V
    .locals 2

    .line 3233
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    .line 3234
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    .line 3236
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 3237
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSilentMode:Z

    :cond_2
    return-void
.end method

.method private updateSuggestions()V
    .locals 2

    .line 2502
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    .line 2503
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setPreferredLetters([I)V

    .line 2506
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2510
    :cond_0
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    if-nez v0, :cond_1

    .line 2511
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setNextSuggestions()V

    return-void

    .line 2514
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->showSuggestions(Lorg/pocketworkstation/pckeyboard/WordComposer;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private vibrate()V
    .locals 1

    .line 3305
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVibrateOn:Z

    if-nez v0, :cond_0

    return-void

    .line 3308
    :cond_0
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVibrateLen:I

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->vibrate(I)V

    return-void
.end method


# virtual methods
.method public addWordToDictionary(Ljava/lang/String;)Z
    .locals 2

    .line 1441
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/UserDictionary;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->addWord(Ljava/lang/String;I)V

    .line 1445
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateSuggestions()V

    const/4 p1, 0x1

    return p1
.end method

.method public changeKeyboardMode()V
    .locals 2

    .line 3477
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 3478
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3479
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getShiftState()I

    move-result v1

    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSavedShiftState:I

    .line 3481
    :cond_0
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->toggleSymbols()V

    .line 3482
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3483
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSavedShiftState:I

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setShiftState(I)V

    .line 3486
    :cond_1
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 3498
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3500
    new-instance p1, Landroid/util/PrintWriterPrinter;

    invoke-direct {p1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string p2, "LatinIME state :"

    .line 3501
    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3502
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Keyboard mode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {p3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3503
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mComposing="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3504
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPredictionOnForMode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredictionOnForMode:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3505
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCorrectionMode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3506
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPredicting="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3507
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mAutoCorrectOn="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCorrectOn:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3508
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mAutoSpace="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoSpace:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3509
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCompletionOn="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletionOn:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3510
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  TextEntryState.state="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->getState()Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3511
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSoundOn="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSoundOn:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3512
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mVibrateOn="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVibrateOn:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3513
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPopupOn="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPopupOn:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method getCurrentWord()Lorg/pocketworkstation/pckeyboard/WordComposer;
    .locals 1

    .line 3332
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    return-object v0
.end method

.method getPopupOn()Z
    .locals 1

    .line 3336
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPopupOn:Z

    return v0
.end method

.method protected getWordSeparators()Ljava/lang/String;
    .locals 1

    .line 2885
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    return-object v0
.end method

.method public hideWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 1081
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 1083
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1085
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1087
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1088
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1089
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1090
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->endSession()V

    return-void
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .line 1192
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 1193
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 1194
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWordSeparator(I)Z
    .locals 1

    .line 2889
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getWordSeparators()Ljava/lang/String;

    move-result-object v0

    int-to-char p1, p1

    .line 2890
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method protected launchSettings()V
    .locals 1

    .line 3367
    const-class v0, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->launchSettings(Ljava/lang/Class;)V

    return-void
.end method

.method protected launchSettings(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/preference/PreferenceActivity;",
            ">;)V"
        }
    .end annotation

    .line 3372
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleClose()V

    .line 3373
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3374
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 3375
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3376
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onAutoCompletionStateChanged(Z)V
    .locals 1

    .line 3538
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->onAutoCompletionStateChanged(Z)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 2123
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->onCancelInput()V

    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1

    .line 1170
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1171
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "PCKeyboard"

    const-string v1, "onConfigurationChanged()"

    .line 665
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSystemLocale:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 672
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSystemLocale:Ljava/lang/String;

    .line 673
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    .line 675
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 674
    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 676
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 677
    invoke-virtual {p0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_0

    .line 679
    :cond_0
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->reloadKeyboards()V

    .line 683
    :cond_1
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOrientation:I

    if-eq v0, v1, :cond_3

    .line 684
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 685
    invoke-direct {p0, v0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;Z)V

    if-eqz v0, :cond_2

    .line 687
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 688
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOrientation:I

    .line 689
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->reloadKeyboards()V

    .line 690
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->removeCandidateViewContainer()V

    .line 692
    :cond_3
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mConfigurationChanging:Z

    .line 693
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 694
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mConfigurationChanging:Z

    return-void
.end method

.method public onCreate()V
    .locals 7

    const-string v0, "PCKeyboard"

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(), os.version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->init(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    .line 360
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 361
    sput-object p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sInstance:Lorg/pocketworkstation/pckeyboard/LatinIME;

    .line 363
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 364
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 365
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOrientation:I

    .line 367
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 368
    new-instance v2, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-direct {v2, p0}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;-><init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    .line 369
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {v2, v1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 370
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInstance()Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    move-result-object v2

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 371
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {v2, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setLanguageSwitcher(Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;)V

    .line 372
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSystemLocale:Ljava/lang/String;

    .line 373
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 374
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 376
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "recorrection_enabled"

    const v5, 0x7f04000f

    .line 380
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 379
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mReCorrectionEnabled:Z

    const-string v4, "connectbot_tab_hack"

    const v5, 0x7f040009

    .line 382
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 381
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mConnectbotTabHack:Z

    const-string v4, "fullscreen_override"

    const v5, 0x7f04000b

    .line 384
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 383
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mFullscreenOverride:Z

    const-string v4, "force_keyboard_on"

    const v5, 0x7f04000a

    .line 386
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 385
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mForceKeyboardOn:Z

    const-string v4, "keyboard_notification"

    const v5, 0x7f04000c

    .line 388
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 387
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardNotification:Z

    const-string v4, "suggestions_in_landscape"

    const v5, 0x7f040012

    .line 390
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 389
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionsInLandscape:Z

    const-string v4, "settings_height_portrait"

    const v5, 0x7f0c0055

    .line 391
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getHeight(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightPortrait:I

    const-string v4, "settings_height_landscape"

    const v5, 0x7f0c0054

    .line 392
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getHeight(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightLandscape:I

    .line 393
    sget-object v4, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const-string v5, "pref_hint_mode"

    const v6, 0x7f0c0056

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->hintMode:I

    .line 394
    sget-object v4, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const-string v5, "pref_long_press_duration"

    const v6, 0x7f0c0059

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->longpressTimeout:I

    .line 395
    sget-object v4, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const-string v5, "pref_render_mode"

    const v6, 0x7f0c005b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->renderMode:I

    const-string v4, "pref_swipe_up"

    const v5, 0x7f0c005f

    .line 396
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeUpAction:Ljava/lang/String;

    const-string v4, "pref_swipe_down"

    const v5, 0x7f0c005c

    .line 397
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeDownAction:Ljava/lang/String;

    const-string v4, "pref_swipe_left"

    const v5, 0x7f0c005d

    .line 398
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeLeftAction:Ljava/lang/String;

    const-string v4, "pref_swipe_right"

    const v5, 0x7f0c005e

    .line 399
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeRightAction:Ljava/lang/String;

    const-string v4, "pref_vol_up"

    const v5, 0x7f0c0061

    .line 400
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVolUpAction:Ljava/lang/String;

    const-string v4, "pref_vol_down"

    const v5, 0x7f0c0060

    .line 401
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVolDownAction:Ljava/lang/String;

    .line 402
    sget-object v4, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    invoke-virtual {v4, v1, v3}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->initPrefs(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 404
    new-instance v3, Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-direct {v3, p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    .line 406
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateKeyboardOptions()V

    .line 408
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/pocketworkstation/pckeyboard/PluginManager;->getPluginDictionaries(Landroid/content/Context;)V

    .line 409
    new-instance v3, Lorg/pocketworkstation/pckeyboard/PluginManager;

    invoke-direct {v3, p0}, Lorg/pocketworkstation/pckeyboard/PluginManager;-><init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPluginManager:Lorg/pocketworkstation/pckeyboard/PluginManager;

    .line 410
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "package"

    .line 411
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 412
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    .line 413
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 414
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPluginManager:Lorg/pocketworkstation/pckeyboard/PluginManager;

    invoke-virtual {p0, v4, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 417
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->getInstance()Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;

    move-result-object v3

    invoke-virtual {v3}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->reset()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x5

    if-ge v4, v6, :cond_1

    if-eqz v5, :cond_1

    .line 421
    :try_start_0
    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->initSuggest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 424
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->getInstance()Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 429
    :cond_1
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mOrientation:I

    .line 432
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 435
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 436
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardNotification:Z

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setNotification(Z)V

    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 3

    .line 728
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    .line 731
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f080028

    .line 732
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/CandidateView;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    .line 733
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->setPadding(IIII)V

    .line 734
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    invoke-virtual {v0, p0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->setService(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    .line 735
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setCandidatesView(Landroid/view/View;)V

    .line 737
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .locals 1

    .line 709
    new-instance v0, Lorg/pocketworkstation/pckeyboard/LatinIME$MyInputMethodImpl;

    invoke-direct {v0, p0}, Lorg/pocketworkstation/pckeyboard/LatinIME$MyInputMethodImpl;-><init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    .line 699
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setCandidatesViewShown(Z)V

    .line 700
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->recreateInputView()V

    .line 701
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 702
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 703
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->shouldShowVoiceButton(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    .line 702
    invoke-virtual {v1, v2, v0, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 704
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 648
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/UserDictionary;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/UserDictionary;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->close()V

    .line 654
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 655
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPluginManager:Lorg/pocketworkstation/pckeyboard/PluginManager;

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 656
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNotificationReceiver:Lorg/pocketworkstation/pckeyboard/NotificationReceiver;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNotificationReceiver:Lorg/pocketworkstation/pckeyboard/NotificationReceiver;

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 658
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mNotificationReceiver:Lorg/pocketworkstation/pckeyboard/NotificationReceiver;

    .line 660
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 4

    .line 1095
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletionOn:Z

    if-eqz v0, :cond_4

    .line 1096
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-nez p1, :cond_0

    .line 1098
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->clearSuggestions()V

    return-void

    .line 1102
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1103
    array-length v3, p1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 1104
    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    .line 1106
    invoke-virtual {v3}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 1110
    invoke-direct {p0, v0, p1, p1, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    const/4 v0, 0x0

    .line 1111
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 1112
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setCandidatesViewShown(Z)V

    :cond_4
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 3

    .line 1178
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1179
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    .line 1182
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 1184
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mFullscreenOverride:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isConnectbot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1187
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 2

    .line 1157
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    .line 1158
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mForceKeyboardOn:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onExtractedCursorMovement(II)V
    .locals 1

    .line 1073
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1076
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    return-void
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .line 1056
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1059
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 0

    .line 1149
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    .line 1150
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 1151
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->removeCandidateViewContainer()V

    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 1

    .line 950
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    const/4 v0, 0x0

    .line 952
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 954
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->closing()V

    .line 957
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoDictionary:Lorg/pocketworkstation/pckeyboard/AutoDictionary;

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoDictionary:Lorg/pocketworkstation/pckeyboard/AutoDictionary;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->flushPendingWrites()V

    .line 959
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;

    if-eqz v0, :cond_2

    .line 960
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;->flushPendingWrites()V

    :cond_2
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1

    .line 965
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 967
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 968
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onKey(I[III)V
    .locals 7

    .line 1938
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, -0x5

    if-ne p1, v3, :cond_0

    .line 1939
    iget-wide v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastKeyTime:J

    const-wide/16 v5, 0xc8

    add-long/2addr v3, v5

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 1941
    :cond_0
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeleteCount:I

    .line 1943
    :cond_1
    iput-wide v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastKeyTime:J

    .line 1944
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 1945
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    packed-switch p1, :pswitch_data_7

    packed-switch p1, :pswitch_data_8

    sparse-switch p1, :sswitch_data_0

    .line 2061
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposeMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeadKeysActive:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 2063
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeadAccentBuffer:Lorg/pocketworkstation/pckeyboard/ComposeSequence;

    invoke-virtual {p2, p1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->execute(I)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_1

    .line 2067
    :cond_2
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto/16 :goto_1

    .line 2070
    :cond_3
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->processMultiKey(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    .line 2074
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 2076
    :cond_5
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->getInstance()Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;

    move-result-object v0

    int-to-char v2, p1

    invoke-virtual {v0, v2, p3, p4}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->push(CII)V

    .line 2077
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isWordSeparator(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 2078
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleSeparator(I)V

    goto :goto_0

    .line 2080
    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleCharacter(I[I)V

    .line 2083
    :goto_0
    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2016
    :sswitch_0
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->processMultiKey(I)Z

    move-result p2

    if-eqz p2, :cond_7

    goto/16 :goto_1

    .line 2019
    :cond_7
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendTab()V

    goto/16 :goto_1

    .line 1948
    :sswitch_1
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->processMultiKey(I)Z

    move-result p2

    if-eqz p2, :cond_8

    goto/16 :goto_1

    .line 1951
    :cond_8
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleBackspace()V

    .line 1952
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeleteCount:I

    add-int/2addr p2, v3

    iput p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeleteCount:I

    goto/16 :goto_1

    :sswitch_2
    if-nez v0, :cond_b

    .line 1976
    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    xor-int/2addr p2, v3

    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModAlt(Z)V

    goto/16 :goto_1

    .line 2000
    :sswitch_3
    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposeMode:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposeMode:Z

    .line 2001
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposeBuffer:Lorg/pocketworkstation/pckeyboard/ComposeSequence;

    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->clear()V

    goto/16 :goto_1

    :pswitch_0
    if-nez v0, :cond_b

    .line 1958
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleShift()V

    goto/16 :goto_1

    :pswitch_1
    if-nez v0, :cond_b

    .line 1964
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->changeKeyboardMode()V

    goto :goto_1

    .line 1989
    :pswitch_2
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isShowingOptionDialog()Z

    move-result p2

    if-nez p2, :cond_b

    .line 1990
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleClose()V

    goto :goto_1

    .line 1994
    :pswitch_3
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->onOptionKeyPressed()V

    goto :goto_1

    .line 1997
    :pswitch_4
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->onOptionKeyLongPressed()V

    goto :goto_1

    .line 2010
    :pswitch_5
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {p2}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->isInstalled()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 2011
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {p2}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->startVoiceRecognition()V

    goto :goto_1

    .line 2004
    :pswitch_6
    invoke-virtual {p0, v2, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_1

    .line 2007
    :pswitch_7
    invoke-virtual {p0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_1

    .line 2022
    :pswitch_8
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->processMultiKey(I)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_1

    .line 2025
    :cond_9
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendEscape()V

    goto :goto_1

    :pswitch_9
    if-nez v0, :cond_b

    .line 1970
    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    xor-int/2addr p2, v3

    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModCtrl(Z)V

    goto :goto_1

    :pswitch_a
    if-nez v0, :cond_b

    .line 1982
    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    xor-int/2addr p2, v3

    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModMeta(Z)V

    goto :goto_1

    :pswitch_b
    if-nez v0, :cond_b

    .line 1986
    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModFn:Z

    xor-int/2addr p2, v3

    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModFn(Z)V

    goto :goto_1

    .line 2054
    :pswitch_c
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->processMultiKey(I)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_1

    :cond_a
    neg-int p2, p1

    .line 2058
    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendSpecialKey(I)V

    .line 2085
    :cond_b
    :goto_1
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {p2, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->onKey(I)V

    .line 2087
    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x8f
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x7c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x75
        :pswitch_a
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x71
        :pswitch_9
        :pswitch_c
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0x69
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch -0x66
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch -0x5d
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_7
    .packed-switch -0x17
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_8
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x2728 -> :sswitch_3
        -0x39 -> :sswitch_2
        -0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1214
    :pswitch_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVolDownAction:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1209
    :pswitch_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVolUpAction:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1201
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 1202
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1203
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1219
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 13

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1250
    :pswitch_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVolDownAction:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1251
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVolDownAction:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->doSwipeAction(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1245
    :pswitch_2
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVolUpAction:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1246
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVolUpAction:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->doSwipeAction(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1229
    :pswitch_3
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1231
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1232
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getShiftState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1233
    new-instance p1, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 1234
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 1235
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    .line 1236
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    const/16 v12, 0x41

    move-object v2, p1

    invoke-direct/range {v2 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 1238
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1240
    invoke-interface {p2, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    return v1

    .line 1255
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPress(I)V
    .locals 4

    .line 3123
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3124
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isVibrateAndSoundFeedbackRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3125
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->vibrate()V

    .line 3126
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->playKeyClick(I)V

    .line 3128
    :cond_0
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 3129
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 3131
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShiftKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onPress()V

    .line 3132
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->startMultitouchShift()V

    goto/16 :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, -0x2

    if-ne p1, v2, :cond_2

    .line 3135
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->changeKeyboardMode()V

    .line 3136
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSymbolKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onPress()V

    .line 3137
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setAutoModeSwitchStateMomentary()V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/16 v3, -0x71

    if-ne p1, v3, :cond_3

    .line 3140
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModCtrl(Z)V

    .line 3141
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCtrlKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onPress()V

    .line 3142
    invoke-direct {p0, v0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendCtrlKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const/16 v3, -0x39

    if-ne p1, v3, :cond_4

    .line 3145
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModAlt(Z)V

    .line 3146
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAltKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onPress()V

    .line 3147
    invoke-direct {p0, v0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendAltKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    const/16 v3, -0x75

    if-ne p1, v3, :cond_5

    .line 3150
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModMeta(Z)V

    .line 3151
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mMetaKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onPress()V

    .line 3152
    invoke-direct {p0, v0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendMetaKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    const/16 v0, -0x77

    if-ne p1, v0, :cond_6

    .line 3155
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModFn:Z

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModFn(Z)V

    .line 3156
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mFnKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onPress()V

    goto :goto_0

    .line 3158
    :cond_6
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShiftKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onOtherKeyPressed()V

    .line 3159
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSymbolKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onOtherKeyPressed()V

    .line 3160
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCtrlKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onOtherKeyPressed()V

    .line 3161
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAltKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onOtherKeyPressed()V

    .line 3162
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mMetaKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onOtherKeyPressed()V

    .line 3163
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mFnKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onOtherKeyPressed()V

    :goto_0
    return-void
.end method

.method public onRelease(I)V
    .locals 5

    .line 3169
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    .line 3170
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->keyReleased()V

    .line 3172
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 3173
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 3174
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 3176
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShiftKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3177
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->resetMultitouchShift()V

    goto :goto_0

    .line 3179
    :cond_0
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->commitMultitouchShift()V

    .line 3181
    :goto_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShiftKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onRelease()V

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_3

    const/4 v2, -0x2

    if-ne p1, v2, :cond_3

    .line 3187
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isInChordingAutoModeSwitchState()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3188
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->changeKeyboardMode()V

    .line 3189
    :cond_2
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSymbolKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onRelease()V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    const/16 v4, -0x71

    if-ne p1, v4, :cond_5

    .line 3192
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCtrlKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3193
    invoke-direct {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModCtrl(Z)V

    .line 3195
    :cond_4
    invoke-direct {p0, v1, v3, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendCtrlKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    .line 3196
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCtrlKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onRelease()V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_7

    const/16 v4, -0x39

    if-ne p1, v4, :cond_7

    .line 3199
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAltKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3200
    invoke-direct {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModAlt(Z)V

    .line 3202
    :cond_6
    invoke-direct {p0, v1, v3, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendAltKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    .line 3203
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAltKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onRelease()V

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_9

    const/16 v4, -0x75

    if-ne p1, v4, :cond_9

    .line 3206
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mMetaKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3207
    invoke-direct {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModMeta(Z)V

    .line 3209
    :cond_8
    invoke-direct {p0, v1, v3, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendMetaKey(Landroid/view/inputmethod/InputConnection;ZZ)V

    .line 3210
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mMetaKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onRelease()V

    goto :goto_1

    :cond_9
    if-eqz v0, :cond_b

    const/16 v0, -0x77

    if-ne p1, v0, :cond_b

    .line 3213
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mFnKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3214
    invoke-direct {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModFn(Z)V

    .line 3216
    :cond_a
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mFnKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->onRelease()V

    :cond_b
    :goto_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    const-string v0, "PCKeyboard"

    const-string v1, "onSharedPreferenceChanged()"

    .line 2932
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2937
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    invoke-virtual {v1, p1, p2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->sharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 2938
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->hasFlag(I)Z

    move-result v1

    .line 2941
    sget-object v3, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2942
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->initSuggestPuncList()V

    .line 2944
    :cond_0
    sget-object v3, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2945
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->recreateInputView()V

    .line 2947
    :cond_1
    sget-object v3, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->hasFlag(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 2948
    iput v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardModeOverrideLandscape:I

    .line 2949
    iput v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardModeOverridePortrait:I

    .line 2951
    :cond_2
    sget-object v3, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2952
    invoke-virtual {p0, v2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->toggleLanguage(ZZ)V

    .line 2954
    :cond_3
    sget-object v3, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    invoke-virtual {v3}, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->unhandledFlags()I

    move-result v3

    if-eqz v3, :cond_4

    const-string v5, "PCKeyboardIME"

    .line 2956
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not all flag settings handled, remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v3, "selected_languages"

    .line 2959
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2960
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {p2, p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 2961
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mRefreshKeyboardRequired:Z

    goto/16 :goto_1

    :cond_5
    const-string v3, "recorrection_enabled"

    .line 2962
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string p2, "recorrection_enabled"

    const v3, 0x7f04000f

    .line 2965
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 2963
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mReCorrectionEnabled:Z

    .line 2966
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz p1, :cond_18

    .line 2968
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0c013b

    .line 2969
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2968
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2970
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_6
    const-string v3, "connectbot_tab_hack"

    .line 2972
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string p2, "connectbot_tab_hack"

    const v3, 0x7f040009

    .line 2975
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2973
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mConnectbotTabHack:Z

    goto/16 :goto_1

    :cond_7
    const-string v3, "fullscreen_override"

    .line 2976
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string p2, "fullscreen_override"

    const v1, 0x7f04000b

    .line 2979
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2977
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mFullscreenOverride:Z

    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_8
    const-string v3, "force_keyboard_on"

    .line 2981
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string p2, "force_keyboard_on"

    const v1, 0x7f04000a

    .line 2984
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2982
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mForceKeyboardOn:Z

    goto :goto_0

    :cond_9
    const-string v3, "keyboard_notification"

    .line 2986
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string p2, "keyboard_notification"

    const v3, 0x7f04000c

    .line 2989
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2987
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardNotification:Z

    .line 2990
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardNotification:Z

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setNotification(Z)V

    goto/16 :goto_1

    :cond_a
    const-string v3, "suggestions_in_landscape"

    .line 2991
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string p2, "suggestions_in_landscape"

    const v3, 0x7f040012

    .line 2994
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2992
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionsInLandscape:Z

    .line 2997
    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOff:Z

    .line 2998
    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOn:Z

    .line 2999
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setCandidatesViewShown(Z)V

    goto/16 :goto_1

    :cond_b
    const-string v3, "show_suggestions"

    .line 3000
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string p2, "show_suggestions"

    const v1, 0x7f040011

    .line 3002
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3001
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShowSuggestions:Z

    .line 3003
    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOff:Z

    .line 3004
    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOn:Z

    goto :goto_0

    :cond_c
    const-string v3, "settings_height_portrait"

    .line 3006
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string p2, "settings_height_portrait"

    const v1, 0x7f0c0055

    .line 3008
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3007
    invoke-static {p1, p2, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getHeight(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightPortrait:I

    goto/16 :goto_0

    :cond_d
    const-string v3, "settings_height_landscape"

    .line 3010
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string p2, "settings_height_landscape"

    const v1, 0x7f0c0054

    .line 3012
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3011
    invoke-static {p1, p2, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getHeight(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHeightLandscape:I

    goto/16 :goto_0

    :cond_e
    const-string v3, "pref_hint_mode"

    .line 3014
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3015
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const-string v1, "pref_hint_mode"

    const v3, 0x7f0c0056

    .line 3016
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3015
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->hintMode:I

    goto/16 :goto_0

    :cond_f
    const-string v3, "pref_long_press_duration"

    .line 3018
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3019
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const-string v3, "pref_long_press_duration"

    const v4, 0x7f0c0059

    .line 3020
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3019
    invoke-static {p1, v3, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->longpressTimeout:I

    goto/16 :goto_1

    :cond_10
    const-string v3, "pref_render_mode"

    .line 3021
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3022
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    const-string v1, "pref_render_mode"

    const v3, 0x7f0c005b

    .line 3023
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3022
    invoke-static {p1, v1, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->renderMode:I

    goto/16 :goto_0

    :cond_11
    const-string v3, "pref_swipe_up"

    .line 3025
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string p2, "pref_swipe_up"

    const v3, 0x7f0c005f

    .line 3026
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeUpAction:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    const-string v3, "pref_swipe_down"

    .line 3027
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string p2, "pref_swipe_down"

    const v3, 0x7f0c005c

    .line 3028
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeDownAction:Ljava/lang/String;

    goto/16 :goto_1

    :cond_13
    const-string v3, "pref_swipe_left"

    .line 3029
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string p2, "pref_swipe_left"

    const v3, 0x7f0c005d

    .line 3030
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeLeftAction:Ljava/lang/String;

    goto :goto_1

    :cond_14
    const-string v3, "pref_swipe_right"

    .line 3031
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string p2, "pref_swipe_right"

    const v3, 0x7f0c005e

    .line 3032
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeRightAction:Ljava/lang/String;

    goto :goto_1

    :cond_15
    const-string v3, "pref_vol_up"

    .line 3033
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string p2, "pref_vol_up"

    const v3, 0x7f0c0061

    .line 3034
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVolUpAction:Ljava/lang/String;

    goto :goto_1

    :cond_16
    const-string v3, "pref_vol_down"

    .line 3035
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string p2, "pref_vol_down"

    const v3, 0x7f0c0060

    .line 3036
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVolDownAction:Ljava/lang/String;

    goto :goto_1

    :cond_17
    const-string v0, "vibrate_len"

    .line 3037
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    const-string p2, "vibrate_len"

    .line 3038
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c019d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getPrefInt(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVibrateLen:I

    .line 3041
    :cond_18
    :goto_1
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateKeyboardOptions()V

    if-eqz v1, :cond_19

    .line 3043
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {p1, v2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    :cond_19
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 7

    .line 763
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->editorPackageName:Ljava/lang/String;

    .line 764
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    iput-object v0, p2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->editorFieldName:Ljava/lang/String;

    .line 765
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iput v0, p2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->editorFieldId:I

    .line 766
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iput v0, p2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->editorInputType:I

    .line 769
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 776
    :cond_0
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mRefreshKeyboardRequired:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 777
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mRefreshKeyboardRequired:Z

    .line 778
    invoke-virtual {p0, v1, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->toggleLanguage(ZZ)V

    .line 781
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0, v2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 783
    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->newSession(Landroid/content/Context;)V

    .line 788
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPasswordText:Z

    .line 789
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    const/16 v3, 0x80

    if-eq v0, v3, :cond_2

    const/16 v3, 0x90

    if-eq v0, v3, :cond_2

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_3

    .line 794
    :cond_2
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v1, :cond_3

    .line 795
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPasswordText:Z

    .line 799
    :cond_3
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->shouldShowVoiceButton(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnableVoiceButton:Z

    .line 800
    iget-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnableVoice:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 802
    :goto_0
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    if-eqz v4, :cond_5

    .line 803
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v4}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->onStartInputView()V

    .line 806
    :cond_5
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 807
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredictionOnForMode:Z

    .line 808
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletionOn:Z

    const/4 v4, 0x0

    .line 809
    iput-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 810
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    .line 811
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    .line 812
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    .line 813
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModFn:Z

    .line 814
    iput-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 815
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOn:Z

    .line 816
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestionForceOff:Z

    .line 817
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardModeOverridePortrait:I

    .line 818
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardModeOverrideLandscape:I

    .line 819
    sget-object v4, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iput-boolean v2, v4, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->useExtension:Z

    .line 821
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v4, v4, 0xf

    packed-switch v4, :pswitch_data_0

    .line 890
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v0, v1, v4, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto/16 :goto_4

    .line 830
    :pswitch_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    const/4 v4, 0x3

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v0, v4, v5, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto/16 :goto_4

    .line 834
    :pswitch_1
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v4, v1, v5, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 837
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredictionOnForMode:Z

    .line 839
    iget-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPasswordText:Z

    if-eqz v4, :cond_6

    .line 840
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredictionOnForMode:Z

    :cond_6
    const/16 v4, 0x20

    if-eq v0, v4, :cond_8

    const/16 v5, 0x60

    if-eq v0, v5, :cond_8

    .line 842
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    .line 844
    invoke-virtual {v5}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->allowAutoSpace()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 847
    :cond_7
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoSpace:Z

    goto :goto_2

    .line 845
    :cond_8
    :goto_1
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoSpace:Z

    :goto_2
    const v5, 0x8000

    if-ne v0, v4, :cond_9

    .line 850
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredictionOnForMode:Z

    .line 851
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    const/4 v4, 0x5

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v0, v4, v6, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_3

    :cond_9
    const/16 v4, 0x10

    if-ne v0, v4, :cond_a

    .line 854
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredictionOnForMode:Z

    .line 855
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    const/4 v4, 0x4

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v0, v4, v6, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_3

    :cond_a
    const/16 v4, 0x40

    if-ne v0, v4, :cond_b

    .line 858
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    const/4 v4, 0x6

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v0, v4, v6, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_3

    :cond_b
    const/16 v4, 0xb0

    if-ne v0, v4, :cond_c

    .line 861
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredictionOnForMode:Z

    goto :goto_3

    :cond_c
    const/16 v4, 0xa0

    if-ne v0, v4, :cond_d

    .line 863
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    const/4 v4, 0x7

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v0, v4, v6, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 868
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v5

    if-nez v0, :cond_d

    .line 869
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 874
    :cond_d
    :goto_3
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, 0x80000

    and-int/2addr v0, v3

    if-eqz v0, :cond_e

    .line 875
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredictionOnForMode:Z

    .line 876
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 880
    :cond_e
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v5

    if-nez v0, :cond_f

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-nez v0, :cond_f

    .line 882
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 884
    :cond_f
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    .line 885
    iput-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredictionOnForMode:Z

    .line 886
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isFullscreenMode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletionOn:Z

    .line 893
    :cond_10
    :goto_4
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->closing()V

    .line 894
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->resetPrediction()V

    .line 895
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->loadSettings()V

    .line 896
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 898
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    if-gtz p1, :cond_12

    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShowSuggestions:Z

    if-eqz p1, :cond_11

    goto :goto_5

    :cond_11
    const/4 p1, 0x0

    goto :goto_6

    :cond_12
    :goto_5
    const/4 p1, 0x1

    :goto_6
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredictionOnPref:Z

    .line 899
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isCandidateStripVisible()Z

    move-result p1

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletionOn:Z

    if-eqz p1, :cond_13

    goto :goto_7

    :cond_13
    const/4 p1, 0x0

    goto :goto_8

    :cond_14
    :goto_7
    const/4 p1, 0x1

    :goto_8
    invoke-direct {p0, p1, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setCandidatesViewShownInternal(ZZ)V

    .line 901
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateSuggestions()V

    .line 904
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Suggest;->hasMainDictionary()Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHasDictionary:Z

    .line 906
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateCorrectionMode()V

    .line 908
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPopupOn:Z

    invoke-virtual {p2, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 909
    invoke-virtual {p2, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 912
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->checkReCorrectionOnStart()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 5

    .line 2093
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2096
    :cond_0
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2099
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2100
    invoke-virtual {p0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2101
    new-array p1, v2, [I

    aput v1, p1, v3

    .line 2102
    invoke-direct {p0, v1, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleCharacter(I[I)V

    return-void

    .line 2106
    :cond_1
    invoke-direct {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->abortCorrection(Z)V

    .line 2107
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2108
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    if-eqz v1, :cond_2

    .line 2109
    invoke-direct {p0, v0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;Z)V

    .line 2111
    :cond_2
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->maybeRemovePreviousPeriod(Ljava/lang/CharSequence;)V

    .line 2112
    invoke-interface {v0, p1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2113
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2114
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2115
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->onKey(I)V

    const/4 v0, 0x0

    .line 2116
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 2117
    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 2118
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 0

    .line 973
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 974
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 2

    .line 981
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 986
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_1

    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    if-eqz p2, :cond_1

    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_1

    :cond_0
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastSelectionStart:I

    if-eq p2, p3, :cond_1

    .line 988
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 989
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    .line 990
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateSuggestions()V

    .line 991
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->reset()V

    .line 992
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 994
    invoke-interface {p2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_0

    .line 996
    :cond_1
    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAccepted:Z

    if-nez p2, :cond_2

    .line 997
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME$5;->$SwitchMap$org$pocketworkstation$pckeyboard$TextEntryState$State:[I

    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->getState()Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ordinal()I

    move-result v1

    aget p2, p2, v1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 999
    :pswitch_0
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->reset()V

    .line 1002
    :pswitch_1
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 1006
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAccepted:Z

    .line 1007
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateShiftKeyState()V

    .line 1010
    iput p3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastSelectionStart:I

    .line 1011
    iput p4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastSelectionEnd:I

    .line 1013
    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz p2, :cond_7

    .line 1015
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 1016
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    .line 1017
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isShown()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1019
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-nez p2, :cond_7

    if-eq p5, p6, :cond_3

    if-ne p3, p1, :cond_3

    .line 1023
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->isCorrecting()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_3
    add-int/lit8 p4, p4, -0x1

    if-lt p3, p4, :cond_4

    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    if-nez p1, :cond_7

    .line 1025
    :cond_4
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isCursorTouchingWord()Z

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastSelectionStart:I

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLastSelectionEnd:I

    if-ge p1, p2, :cond_5

    goto :goto_1

    .line 1029
    :cond_5
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->abortCorrection(Z)V

    .line 1033
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    .line 1035
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object p2

    .line 1034
    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    .line 1037
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1038
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setNextSuggestions()V

    goto :goto_2

    .line 1027
    :cond_6
    :goto_1
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateOldSuggestions()V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 5

    .line 2601
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/CandidateView;->getSuggestions()Ljava/util/List;

    .line 2603
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->isCorrecting()Z

    move-result v0

    .line 2604
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2606
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2608
    :cond_0
    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletionOn:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v2, :cond_4

    if-ltz p1, :cond_4

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v2, v2

    if-ge p1, v2, :cond_4

    .line 2610
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object p1, v0, p1

    if-eqz v1, :cond_1

    .line 2612
    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 2614
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCommittedLength:I

    .line 2615
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    if-eqz p1, :cond_2

    .line 2616
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/CandidateView;->clear()V

    .line 2618
    :cond_2
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    if-eqz v1, :cond_3

    .line 2620
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_3
    return-void

    .line 2626
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 2627
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isWordSeparator(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2628
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 2627
    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2629
    :cond_5
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 2630
    new-array p2, v4, [I

    aput p1, p2, v3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->onKey(I[III)V

    if-eqz v1, :cond_6

    .line 2634
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_6
    return-void

    .line 2638
    :cond_7
    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAccepted:Z

    .line 2639
    invoke-direct {p0, p2, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    if-nez p1, :cond_8

    const/4 v2, 0x3

    .line 2642
    invoke-direct {p0, p2, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 2644
    :cond_8
    invoke-direct {p0, p2, v4}, Lorg/pocketworkstation/pckeyboard/LatinIME;->addToBigramDictionary(Ljava/lang/CharSequence;I)V

    .line 2646
    :goto_0
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2648
    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoSpace:Z

    if-eqz v2, :cond_9

    if-nez v0, :cond_9

    .line 2649
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendSpace()V

    .line 2650
    iput-boolean v4, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustAddedAutoSpace:Z

    :cond_9
    if-nez p1, :cond_a

    .line 2653
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCorrectionMode:I

    if-lez p1, :cond_a

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    .line 2654
    invoke-virtual {p1, p2}, Lorg/pocketworkstation/pckeyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSuggest:Lorg/pocketworkstation/pckeyboard/Suggest;

    .line 2655
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/pocketworkstation/pckeyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    const/4 v3, 0x1

    :cond_a
    if-nez v0, :cond_b

    const/16 p1, 0x20

    .line 2662
    invoke-static {p1, v4}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->typedCharacter(CZ)V

    .line 2663
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setNextSuggestions()V

    goto :goto_1

    :cond_b
    if-nez v3, :cond_c

    .line 2669
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->clearSuggestions()V

    .line 2670
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateOldSuggestions()V

    :cond_c
    :goto_1
    if-eqz v3, :cond_d

    .line 2673
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCandidateView:Lorg/pocketworkstation/pckeyboard/CandidateView;

    invoke-virtual {p1, p2}, Lorg/pocketworkstation/pckeyboard/CandidateView;->showAddToDictionaryHint(Ljava/lang/CharSequence;)V

    :cond_d
    if-eqz v1, :cond_e

    .line 2676
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_e
    return-void
.end method

.method public preferCapitalization()Z
    .locals 1

    .line 2904
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mWord:Lorg/pocketworkstation/pckeyboard/WordComposer;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/WordComposer;->isFirstCharCapitalized()Z

    move-result v0

    return v0
.end method

.method promoteToUserDictionary(Ljava/lang/String;I)V
    .locals 1

    .line 3326
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/UserDictionary;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3328
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/UserDictionary;

    invoke-virtual {v0, p1, p2}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->addWord(Ljava/lang/String;I)V

    return-void
.end method

.method public revertLastWord(Z)V
    .locals 5

    .line 2860
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2861
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 2862
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, 0x1

    .line 2863
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mPredicting:Z

    const/4 v2, 0x0

    .line 2864
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 2866
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2867
    :cond_0
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCommittedLength:I

    .line 2868
    iget v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mCommittedLength:I

    .line 2869
    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2870
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 2871
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 2874
    :cond_1
    invoke-interface {v0, p1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2875
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2876
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->backspace()V

    .line 2877
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->postUpdateSuggestions()V

    goto :goto_0

    :cond_2
    const/16 p1, 0x43

    .line 2879
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendDownUpKeyEvents(I)V

    const/4 p1, 0x0

    .line 2880
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public sendModifiableKeyChar(C)V
    .locals 9

    .line 1801
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isShiftMod()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1802
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    if-eqz v1, :cond_11

    :cond_0
    if-lez p1, :cond_11

    const/16 v1, 0x7f

    if-ge p1, v1, :cond_11

    .line 1803
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1804
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isConnectbot()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 1805
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x1b

    .line 1807
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1809
    :cond_1
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    if-eqz v0, :cond_3

    and-int/lit8 p1, p1, 0x1f

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 1812
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendTab()V

    goto :goto_0

    :cond_2
    int-to-char p1, p1

    .line 1814
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1817
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1819
    :goto_0
    invoke-direct {p0, v3, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleModifierKeysUp(ZZ)V

    return-void

    .line 1829
    :cond_4
    sget-object v2, Lorg/pocketworkstation/pckeyboard/LatinIME;->asciiToKeyCode:[I

    aget v2, v2, p1

    if-lez v2, :cond_11

    const v5, 0xffff

    and-int/2addr v5, v2

    const/high16 v6, 0x10000

    and-int/2addr v6, v2

    if-lez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    const/high16 v7, 0x20000

    and-int/2addr v7, v2

    if-lez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    const/high16 v8, 0x40000

    and-int/2addr v2, v8

    if-lez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-eqz v0, :cond_9

    if-nez v7, :cond_8

    if-eqz v6, :cond_9

    :cond_8
    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-eqz v2, :cond_a

    .line 1836
    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModMeta:Z

    if-nez v2, :cond_a

    .line 1838
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1839
    invoke-direct {p0, v3, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->handleModifierKeysUp(ZZ)V

    goto :goto_5

    :cond_a
    const/16 v1, 0x61

    if-eq p1, v1, :cond_b

    const/16 v1, 0x41

    if-ne p1, v1, :cond_f

    .line 1840
    :cond_b
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModCtrl:Z

    if-eqz p1, :cond_f

    .line 1842
    sget-object p1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget p1, p1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->ctrlAOverride:I

    if-nez p1, :cond_d

    .line 1844
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mModAlt:Z

    if-eqz p1, :cond_c

    .line 1845
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAltKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result p1

    .line 1846
    invoke-direct {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModAlt(Z)V

    .line 1847
    invoke-direct {p0, v5, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifiedKeyDownUp(IZ)V

    if-eqz p1, :cond_10

    .line 1848
    invoke-direct {p0, v4}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setModAlt(Z)V

    goto :goto_5

    .line 1850
    :cond_c
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1851
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0199

    .line 1852
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1850
    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1853
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1855
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifierKeysDown(Z)V

    .line 1856
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifierKeysUp(Z)V

    return-void

    .line 1860
    :cond_d
    sget-object p1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget p1, p1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->ctrlAOverride:I

    if-ne p1, v4, :cond_e

    .line 1862
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifierKeysDown(Z)V

    .line 1863
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifierKeysUp(Z)V

    return-void

    .line 1867
    :cond_e
    invoke-direct {p0, v5, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifiedKeyDownUp(IZ)V

    goto :goto_5

    .line 1870
    :cond_f
    invoke-direct {p0, v5, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendModifiedKeyDownUp(IZ)V

    :cond_10
    :goto_5
    return-void

    :cond_11
    const/16 v0, 0x30

    if-lt p1, v0, :cond_12

    const/16 v0, 0x39

    if-gt p1, v0, :cond_12

    .line 1878
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, 0x7

    .line 1879
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    .line 1887
    :cond_12
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->sendKeyChar(C)V

    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1165
    invoke-direct {p0, p1, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setCandidatesViewShownInternal(ZZ)V

    return-void
.end method

.method public swipeDown()Z
    .locals 1

    .line 3115
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeDownAction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->doSwipeAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public swipeLeft()Z
    .locals 1

    .line 3111
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeLeftAction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->doSwipeAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public swipeRight()Z
    .locals 1

    .line 3107
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeRightAction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->doSwipeAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public swipeUp()Z
    .locals 1

    .line 3119
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSwipeUpAction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->doSwipeAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method toggleLanguage(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2909
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->reset()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2912
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->next()V

    goto :goto_0

    .line 2914
    :cond_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->prev()V

    .line 2917
    :goto_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result p1

    .line 2918
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->reloadKeyboards()V

    .line 2919
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 2920
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnableVoiceButton:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mEnableVoice:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, p1, v2, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 2922
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->initSuggest(Ljava/lang/String;)V

    .line 2923
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->persist()V

    .line 2924
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCapPref:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->allowAutoCap()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mAutoCapActive:Z

    .line 2925
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->allowDeadKeys()Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mDeadKeysActive:Z

    .line 2926
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2927
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isPredictionOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setCandidatesViewShown(Z)V

    return-void
.end method

.method public updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .locals 7

    .line 1301
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 1302
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1303
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getShiftState()I

    move-result v1

    .line 1304
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mShiftKeyState:Lorg/pocketworkstation/pckeyboard/ModifierKeyState;

    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->isChording()Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 1306
    invoke-direct {p0, v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    const/4 v3, 0x3

    if-eqz v2, :cond_6

    .line 1310
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mSavedShiftState:I

    if-ne p1, v4, :cond_5

    :cond_4
    const/4 v5, 0x3

    goto :goto_4

    :cond_5
    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_7

    if-eqz v1, :cond_4

    .line 1312
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCapsOrShiftLockState()I

    move-result p1

    move v5, p1

    .line 1315
    :cond_7
    :goto_4
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {p1, v5}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setShiftState(I)V

    :cond_8
    if-eqz v0, :cond_9

    const p1, 0x7703e

    .line 1325
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    :cond_9
    return-void
.end method

.method vibrate(I)V
    .locals 3

    const-string v0, "vibrator"

    .line 3312
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 3314
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void

    .line 3318
    :cond_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3319
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->performHapticFeedback(II)Z

    :cond_1
    return-void
.end method
