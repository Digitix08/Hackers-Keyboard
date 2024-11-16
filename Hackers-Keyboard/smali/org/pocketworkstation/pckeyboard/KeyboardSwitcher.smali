.class public Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;
    }
.end annotation


# static fields
.field private static final ALPHABET_MODES:[I

.field private static final AUTO_MODE_SWITCH_STATE_ALPHA:I = 0x0

.field private static final AUTO_MODE_SWITCH_STATE_CHORDING:I = 0x4

.field private static final AUTO_MODE_SWITCH_STATE_MOMENTARY:I = 0x3

.field private static final AUTO_MODE_SWITCH_STATE_SYMBOL:I = 0x2

.field private static final AUTO_MODE_SWITCH_STATE_SYMBOL_BEGIN:I = 0x1

.field public static final DEFAULT_LAYOUT_ID:Ljava/lang/String; = "0"

.field private static final DEFAULT_SETTINGS_KEY_MODE:I = 0x7f0c0147

.field private static final KBD_COMPACT:I = 0x7f0f0001

.field private static final KBD_COMPACT_FN:I = 0x7f0f0002

.field private static final KBD_FULL:I = 0x7f0f0005

.field private static final KBD_FULL_FN:I = 0x7f0f0006

.field private static final KBD_PHONE:I = 0x7f0f0007

.field private static final KBD_PHONE_SYMBOLS:I = 0x7f0f0008

.field private static final KBD_QWERTY:I = 0x7f0f000b

.field private static final KBD_SYMBOLS:I = 0x7f0f000c

.field private static final KBD_SYMBOLS_SHIFT:I = 0x7f0f000d

.field public static final KEYBOARDMODE_EMAIL:I = 0x7f080057

.field public static final KEYBOARDMODE_EMAIL_WITH_SETTINGS_KEY:I = 0x7f080058

.field public static final KEYBOARDMODE_IM:I = 0x7f080059

.field public static final KEYBOARDMODE_IM_WITH_SETTINGS_KEY:I = 0x7f08005a

.field public static final KEYBOARDMODE_NORMAL:I = 0x7f08005b

.field public static final KEYBOARDMODE_NORMAL_WITH_SETTINGS_KEY:I = 0x7f08005c

.field public static final KEYBOARDMODE_SYMBOLS:I = 0x7f08005d

.field public static final KEYBOARDMODE_SYMBOLS_WITH_SETTINGS_KEY:I = 0x7f08005e

.field public static final KEYBOARDMODE_URL:I = 0x7f08005f

.field public static final KEYBOARDMODE_URL_WITH_SETTINGS_KEY:I = 0x7f080060

.field public static final KEYBOARDMODE_WEB:I = 0x7f080061

.field public static final KEYBOARDMODE_WEB_WITH_SETTINGS_KEY:I = 0x7f080062

.field public static final MODE_EMAIL:I = 0x5

.field public static final MODE_IM:I = 0x6

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_PHONE:I = 0x3

.field public static final MODE_SYMBOLS:I = 0x2

.field public static final MODE_TEXT:I = 0x1

.field public static final MODE_URL:I = 0x4

.field public static final MODE_WEB:I = 0x7

.field public static final PREF_KEYBOARD_LAYOUT:Ljava/lang/String; = "pref_keyboard_layout"

.field private static final SETTINGS_KEY_MODE_ALWAYS_SHOW:I = 0x7f0c0145

.field private static final SETTINGS_KEY_MODE_AUTO:I = 0x7f0c0147

.field private static TAG:Ljava/lang/String; = "PCKeyboardKbSw"

.field private static final THEMES:[I

.field private static final sInstance:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;


# instance fields
.field private mAutoModeSwitchState:I

.field private mCurrentId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

.field private mFullMode:I

.field private mHasSettingsKey:Z

.field private mHasVoice:Z

.field private mImeOptions:I

.field private mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

.field private mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

.field private mIsAutoCompletionActive:Z

.field private mIsSymbols:Z

.field private final mKeyboards:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/pocketworkstation/pckeyboard/LatinKeyboard;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

.field private mLastDisplayWidth:I

.field private mLayoutId:I

.field private mMode:I

.field private mPreferSymbols:Z

.field private mSymbolsId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

.field private mSymbolsShiftedId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

.field private mVoiceOnPrimary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 64
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->THEMES:[I

    const/16 v0, 0xa

    .line 86
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->ALPHABET_MODES:[I

    .line 140
    new-instance v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-direct {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->sInstance:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a001f
        0x7f0a001e
        0x7f0a0025
        0x7f0a0029
        0x7f0a0021
        0x7f0a0022
        0x7f0a0020
    .end array-data

    :array_1
    .array-data 4
        0x7f08005b
        0x7f08005f
        0x7f080057
        0x7f080059
        0x7f080061
        0x7f08005c
        0x7f080060
        0x7f080058
        0x7f08005a
        0x7f080062
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mMode:I

    .line 123
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    return-void
.end method

.method static synthetic access$100(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;)Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;)Lorg/pocketworkstation/pckeyboard/LatinIME;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    return-object p0
.end method

.method private changeLatinKeyboardView(IZ)V
    .locals 5

    .line 614
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mLayoutId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_4

    .line 615
    :cond_0
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-eqz p2, :cond_1

    .line 616
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->closing()V

    .line 618
    :cond_1
    sget-object p2, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->THEMES:[I

    array-length p2, p2

    if-gt p2, p1, :cond_2

    const-string p1, "0"

    .line 619
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 622
    :cond_2
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->getInstance()Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;

    move-result-object p2

    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->reset()V

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 p2, 0x0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x5

    if-ge p2, v2, :cond_3

    if-eqz v1, :cond_3

    .line 626
    :try_start_0
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    .line 627
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget-object v2, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->THEMES:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 634
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->getInstance()Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mLayoutId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 631
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->getInstance()Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mLayoutId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v1

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 638
    :cond_3
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->THEMES:[I

    aget v1, v1, p1

    invoke-virtual {p2, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setExtensionLayoutResId(I)V

    .line 639
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {p2, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setOnKeyboardActionListener(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 640
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {p2, v0, v0, v0, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setPadding(IIII)V

    .line 641
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mLayoutId:I

    .line 643
    :cond_4
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/LatinIME;->mHandler:Landroid/os/Handler;

    new-instance p2, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$1;

    invoke-direct {p2, p0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$1;-><init>(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance()Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;
    .locals 1

    .line 143
    sget-object v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->sInstance:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    return-object v0
.end method

.method private getKeyboard(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;)Lorg/pocketworkstation/pckeyboard/LatinKeyboard;
    .locals 9

    .line 324
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    :goto_0
    if-nez v0, :cond_3

    .line 327
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 329
    iget-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 330
    sget-object v4, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-object v4, v4, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->inputLocale:Ljava/util/Locale;

    iput-object v4, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 331
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 332
    new-instance v4, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    iget v6, p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    iget v7, p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    iget v8, p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mKeyboardHeightPercent:F

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;-><init>(Landroid/content/Context;IIF)V

    .line 334
    iget v5, p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    const v6, 0x7f0f000c

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-direct {p0, v5}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->hasVoiceButton(Z)Z

    move-result v5

    iget-boolean v6, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasVoice:Z

    invoke-virtual {v4, v5, v6}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setVoiceMode(ZZ)V

    .line 335
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    iget-boolean v6, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    invoke-virtual {v4, v5, v6}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setLanguageSwitcher(Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;Z)V

    .line 344
    iget-boolean v5, p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    if-eqz v5, :cond_2

    .line 345
    invoke-virtual {v4}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->enableShiftLock()V

    .line 347
    :cond_2
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 350
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    move-object v0, v4

    :cond_3
    return-object v0
.end method

.method private getKeyboardId(IIZ)Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;
    .locals 7

    .line 360
    invoke-direct {p0, p3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->hasVoiceButton(Z)Z

    move-result p2

    .line 361
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mFullMode:I

    const v1, 0x7f08005b

    const/4 v2, 0x1

    if-lez v0, :cond_2

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 368
    :cond_0
    :pswitch_0
    new-instance p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iget p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mFullMode:I

    if-ne p3, v2, :cond_1

    const p3, 0x7f0f0001

    goto :goto_0

    :cond_1
    const p3, 0x7f0f0005

    :goto_0
    invoke-direct {p1, p3, v1, v2, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object p1

    :cond_2
    :goto_1
    const v0, 0x7f0f000b

    const v3, 0x7f08005d

    const v4, 0x7f08005e

    const v5, 0x7f0f000c

    const/4 v6, 0x0

    if-eqz p3, :cond_5

    const/4 p3, 0x3

    if-ne p1, p3, :cond_3

    .line 376
    new-instance p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    const p3, 0x7f0f0008

    invoke-direct {p1, p3, v6, v6, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object p1

    .line 378
    :cond_3
    new-instance p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz p3, :cond_4

    const v3, 0x7f08005e

    :cond_4
    invoke-direct {p1, v5, v3, v6, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object p1

    :cond_5
    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return-object p1

    .line 410
    :pswitch_1
    new-instance p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz p3, :cond_6

    const p3, 0x7f080062

    goto :goto_2

    :cond_6
    const p3, 0x7f080061

    :goto_2
    invoke-direct {p1, v0, p3, v2, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object p1

    .line 406
    :pswitch_2
    new-instance p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz p3, :cond_7

    const p3, 0x7f08005a

    goto :goto_3

    :cond_7
    const p3, 0x7f080059

    :goto_3
    invoke-direct {p1, v0, p3, v2, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object p1

    .line 402
    :pswitch_3
    new-instance p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz p3, :cond_8

    const p3, 0x7f080058

    goto :goto_4

    :cond_8
    const p3, 0x7f080057

    :goto_4
    invoke-direct {p1, v0, p3, v2, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object p1

    .line 398
    :pswitch_4
    new-instance p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz p3, :cond_9

    const p3, 0x7f080060

    goto :goto_5

    :cond_9
    const p3, 0x7f08005f

    :goto_5
    invoke-direct {p1, v0, p3, v2, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object p1

    .line 396
    :pswitch_5
    new-instance p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    const p3, 0x7f0f0007

    invoke-direct {p1, p3, v6, v6, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object p1

    .line 392
    :pswitch_6
    new-instance p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz p3, :cond_a

    const v3, 0x7f08005e

    :cond_a
    invoke-direct {p1, v5, v3, v6, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object p1

    .line 388
    :pswitch_7
    new-instance p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz p3, :cond_b

    const v1, 0x7f08005c

    :cond_b
    invoke-direct {p1, v0, v1, v2, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getPointerCount()I
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getPointerCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method private hasVoiceButton(Z)Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasVoice:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static init(Lorg/pocketworkstation/pckeyboard/LatinIME;)V
    .locals 3

    .line 151
    sget-object v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->sInstance:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    iput-object p0, v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    .line 154
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 155
    sget-object v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->sInstance:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    const-string v1, "pref_keyboard_layout"

    const-string v2, "0"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mLayoutId:I

    .line 158
    sget-object v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->sInstance:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-direct {v0, p0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->updateSettingsKeyState(Landroid/content/SharedPreferences;)V

    .line 159
    sget-object v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->sInstance:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 161
    sget-object p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->sInstance:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    sget-object v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->sInstance:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->makeSymbolsId(Z)Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    .line 162
    sget-object p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->sInstance:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    sget-object v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->sInstance:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-direct {v0, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->makeSymbolsShiftedId(Z)Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    return-void
.end method

.method private makeSymbolsId(Z)Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;
    .locals 4

    .line 179
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mFullMode:I

    const v1, 0x7f08005d

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 180
    new-instance v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    const v3, 0x7f0f0002

    invoke-direct {v0, v3, v1, v2, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object v0

    .line 181
    :cond_0
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mFullMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 182
    new-instance v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    const v3, 0x7f0f0006

    invoke-direct {v0, v3, v1, v2, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object v0

    .line 184
    :cond_1
    new-instance v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    const v2, 0x7f0f000c

    iget-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v3, :cond_2

    const v1, 0x7f08005e

    :cond_2
    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object v0
.end method

.method private makeSymbolsShiftedId(Z)Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;
    .locals 4

    .line 190
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mFullMode:I

    if-lez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 192
    :cond_0
    new-instance v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    const v1, 0x7f0f000d

    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v2, :cond_1

    const v2, 0x7f08005e

    goto :goto_0

    :cond_1
    const v2, 0x7f08005d

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object v0
.end method

.method private setKeyboardMode(IIZZ)V
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mMode:I

    .line 298
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mImeOptions:I

    .line 299
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasVoice:Z

    if-eq p3, v0, :cond_1

    .line 301
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    invoke-virtual {p0, p3, v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setVoiceMode(ZZ)V

    .line 303
    :cond_1
    iput-boolean p4, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mIsSymbols:Z

    .line 305
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getPopupOn()Z

    move-result v0

    invoke-virtual {p3, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 307
    invoke-direct {p0, p1, p2, p4}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getKeyboardId(IIZ)Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    move-result-object p3

    .line 309
    invoke-direct {p0, p3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getKeyboard(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;)Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    move-result-object p4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 312
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {p1, p4}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setPhoneKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    .line 315
    :cond_2
    iput-object p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mCurrentId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    .line 316
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {p1, p4}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    const/4 p1, 0x0

    .line 317
    invoke-virtual {p4, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setShiftState(I)Z

    .line 318
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mMode:I

    invoke-virtual {p4, p1, p3, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    .line 320
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    invoke-virtual {p4, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->updateSymbolIcons(Z)V

    return-void
.end method

.method private updateSettingsKeyState(Landroid/content/SharedPreferences;)V
    .locals 4

    .line 675
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "settings_key"

    const v2, 0x7f0c0147

    .line 678
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 676
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0c0145

    .line 683
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 685
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 688
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 686
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;
    .locals 1

    .line 606
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    return-object v0
.end method

.method public getKeyboardMode()I
    .locals 1

    .line 418
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mMode:I

    return v0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .line 522
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->hasDistinctMultitouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlphabetMode()Z
    .locals 7

    .line 422
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mCurrentId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 425
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mCurrentId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    .line 426
    iget v2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mFullMode:I

    const/4 v3, 0x1

    if-lez v2, :cond_1

    const v2, 0x7f08005b

    if-ne v0, v2, :cond_1

    return v3

    .line 428
    :cond_1
    sget-object v2, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->ALPHABET_MODES:[I

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 429
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, v6, :cond_2

    return v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public isFullMode()Z
    .locals 1

    .line 356
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mFullMode:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInChordingAutoModeSwitchState()Z
    .locals 2

    .line 534
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInMomentaryAutoModeSwitchState()Z
    .locals 2

    .line 530
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVibrateAndSoundFeedbackRequired()Z
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isInSlidingKeyInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeKeyboards(Z)V
    .locals 3

    .line 198
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyboardMode:I

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mFullMode:I

    .line 199
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasVoice:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->makeSymbolsId(Z)Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    .line 200
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasVoice:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->makeSymbolsShiftedId(Z)Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    if-eqz p1, :cond_2

    .line 203
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 209
    :cond_2
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getMaxWidth()I

    move-result v0

    .line 210
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mLastDisplayWidth:I

    if-ne v0, v1, :cond_3

    return-void

    .line 212
    :cond_3
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mLastDisplayWidth:I

    if-nez p1, :cond_4

    .line 214
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_4
    return-void
.end method

.method public onAutoCompletionStateChanged(Z)V
    .locals 2

    .line 665
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    if-eq p1, v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    .line 667
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    .line 669
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    .line 670
    invoke-virtual {v1, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->onAutoCompletionStateChanged(Z)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object p1

    .line 668
    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->invalidateKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    :cond_0
    return-void
.end method

.method public onCancelInput()V
    .locals 2

    .line 507
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 508
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->changeKeyboardMode()V

    :cond_0
    return-void
.end method

.method public onKey(I)V
    .locals 3

    .line 553
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/16 v1, 0xa

    const/16 v2, 0x20

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 567
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz p1, :cond_0

    .line 568
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 570
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 572
    :cond_1
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getPointerCount()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 579
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->changeKeyboardMode()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 585
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    :pswitch_1
    if-eq p1, v1, :cond_3

    if-ne p1, v2, :cond_4

    .line 599
    :cond_3
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->changeKeyboardMode()V

    goto :goto_0

    :pswitch_2
    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_4

    if-ltz p1, :cond_4

    const/4 p1, 0x2

    .line 591
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_keyboard_layout"

    .line 655
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    .line 657
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 656
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->changeLatinKeyboardView(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "settings_key"

    .line 658
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 659
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->updateSettingsKeyState(Landroid/content/SharedPreferences;)V

    .line 660
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->recreateInputView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public recreateInputView()V
    .locals 2

    .line 610
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mLayoutId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->changeLatinKeyboardView(IZ)V

    return-void
.end method

.method public setAltIndicator(Z)V
    .locals 1

    .line 464
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-nez v0, :cond_0

    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setAltIndicator(Z)V

    return-void
.end method

.method public setAutoModeSwitchStateMomentary()V
    .locals 1

    const/4 v0, 0x3

    .line 526
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    return-void
.end method

.method public setCtrlIndicator(Z)V
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setCtrlIndicator(Z)V

    return-void
.end method

.method public setFn(Z)V
    .locals 4

    .line 443
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getShiftState()I

    move-result v0

    if-eqz p1, :cond_1

    .line 446
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getKeyboard(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;)Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    move-result-object p1

    .line 447
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->enableShiftLock()V

    .line 448
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mCurrentId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    .line 449
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v1, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    .line 450
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {p1, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setShiftState(I)Z

    goto :goto_0

    .line 453
    :cond_1
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mMode:I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasVoice:Z

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZZ)V

    .line 454
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {p1, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setShiftState(I)Z

    :goto_0
    return-void
.end method

.method public setKeyboardMode(IIZ)V
    .locals 3

    const/4 v0, 0x0

    .line 280
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    .line 281
    :cond_0
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mPreferSymbols:Z

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    .line 286
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mPreferSymbols:Z

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 288
    sget-object v0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mPreferSymbols:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " msg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setLanguageSwitcher(Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mLanguageSwitcher:Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;

    .line 175
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    return-void
.end method

.method public setMetaIndicator(Z)V
    .locals 1

    .line 469
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setMetaIndicator(Z)V

    return-void
.end method

.method public setShiftState(I)V
    .locals 1

    .line 437
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setShiftState(I)Z

    :cond_0
    return-void
.end method

.method public setVoiceMode(ZZ)V
    .locals 2

    .line 267
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasVoice:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-eq p2, v0, :cond_1

    .line 268
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 270
    :cond_1
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasVoice:Z

    .line 271
    iput-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    .line 272
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mMode:I

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasVoice:Z

    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mIsSymbols:Z

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZZ)V

    return-void
.end method

.method public toggleShift()V
    .locals 4

    .line 475
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mFullMode:I

    if-lez v0, :cond_1

    .line 478
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isShiftAll()Z

    move-result v0

    .line 479
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setShiftState(I)Z

    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mCurrentId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->access$000(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mCurrentId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    .line 483
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->access$000(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 494
    :cond_2
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getKeyboard(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;)Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mCurrentId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    .line 496
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v1, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    .line 497
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->enableShiftLock()V

    const/4 v1, 0x0

    .line 498
    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setShiftState(I)Z

    .line 499
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mMode:I

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    goto :goto_1

    .line 484
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getKeyboard(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;)Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mCurrentId:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    .line 486
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputView:Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    invoke-virtual {v1, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->setKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    .line 489
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->enableShiftLock()V

    const/4 v1, 0x2

    .line 490
    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setShiftState(I)Z

    .line 491
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mInputMethodService:Lorg/pocketworkstation/pckeyboard/LatinIME;

    .line 492
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mMode:I

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mImeOptions:I

    .line 491
    invoke-virtual {v0, v1, v2, v3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    :goto_1
    return-void
.end method

.method public toggleSymbols()V
    .locals 5

    .line 513
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mMode:I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mHasVoice:Z

    iget-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mIsSymbols:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->setKeyboardMode(IIZZ)V

    .line 514
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mPreferSymbols:Z

    if-nez v0, :cond_0

    .line 515
    iput v4, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 517
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    :goto_0
    return-void
.end method
