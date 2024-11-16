.class public Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;
.super Landroid/view/View;
.source "LatinKeyboardBaseView.java"

# interfaces
.implements Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;,
        Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;,
        Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVERTING_MATRIX:[F

.field static final NOT_A_KEY:I = -0x1

.field public static final NOT_A_TOUCH_COORDINATE:I = -0x1

.field private static final NUMBER_HINT_VERTICAL_ADJUSTMENT_PIXEL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HK/LatinKbdBaseView"

.field private static sPrevRenderMode:I = -0x1

.field static sSetRenderMode:Ljava/lang/reflect/Method;


# instance fields
.field private final KEY_LABEL_HEIGHT_REFERENCE_CHAR:Ljava/lang/String;

.field private final KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR:F

.field private mBackgroundAlpha:I

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mClipRegion:Landroid/graphics/Rect;

.field protected final mDelayAfterPreview:I

.field protected final mDelayBeforePreview:I

.field protected final mDelayBeforeSpacePreview:I

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mDisambiguateSwipe:Z

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

.field private final mHasDistinctMultitouch:Z

.field private mIgnoreMove:Z

.field private mInvalidatedKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private mInvertSymbols:Z

.field private final mInvertingColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyCursorColor:I

.field protected mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

.field private mKeyHintColor:I

.field private mKeyHysteresisDistance:F

.field private final mKeyRepeatInterval:I

.field private mKeyTextColor:I

.field private mKeyTextSize:F

.field private mKeyTextStyle:Landroid/graphics/Typeface;

.field private mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

.field private mKeyboardActionListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeyboardVerticalGap:I

.field private mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private mLabelScale:F

.field private mLabelTextSize:F

.field protected mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

.field protected final mMiniKeyboardCacheCaps:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/pocketworkstation/pckeyboard/Keyboard$Key;",
            "Lorg/pocketworkstation/pckeyboard/Keyboard;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMiniKeyboardCacheMain:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/pocketworkstation/pckeyboard/Keyboard$Key;",
            "Lorg/pocketworkstation/pckeyboard/Keyboard;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMiniKeyboardCacheShift:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/pocketworkstation/pckeyboard/Keyboard$Key;",
            "Lorg/pocketworkstation/pckeyboard/Keyboard;",
            ">;"
        }
    .end annotation
.end field

.field protected mMiniKeyboardContainer:Landroid/view/View;

.field protected mMiniKeyboardOriginX:I

.field protected mMiniKeyboardOriginY:I

.field protected mMiniKeyboardParent:Landroid/view/View;

.field protected mMiniKeyboardPopup:Landroid/widget/PopupWindow;

.field protected mMiniKeyboardPopupTime:J

.field protected final mMiniKeyboardSlideAllowance:F

.field protected mMiniKeyboardTrackerId:I

.field protected mMiniKeyboardVisible:Z

.field protected mOffsetInWindow:[I

.field private mOldPointerCount:I

.field protected mOldPreviewKeyIndex:I

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaintHint:Landroid/graphics/Paint;

.field private final mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

.field private final mPointerTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/pocketworkstation/pckeyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mPopupLayout:I

.field protected mPopupPreviewDisplayedY:I

.field protected mPopupPreviewOffsetX:I

.field protected mPopupPreviewOffsetY:I

.field protected mPreviewHeight:I

.field protected mPreviewOffset:I

.field protected mPreviewPopup:Landroid/widget/PopupWindow;

.field protected mPreviewText:Landroid/widget/TextView;

.field protected mPreviewTextSizeLarge:I

.field private mRecolorSymbols:Z

.field private mShadowColor:I

.field private mShadowRadius:F

.field protected mShowPreview:Z

.field protected mShowTouchPoints:Z

.field private final mSwipeThreshold:I

.field private final mSwipeTracker:Lorg/pocketworkstation/pckeyboard/SwipeTracker;

.field private mSymbolColorScheme:I

.field private final mTextHeightCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalCorrection:F

.field private mViewWidth:I

.field protected mWindowOffset:[I

.field protected mWindowY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    .line 282
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->INVERTING_MATRIX:[F

    .line 441
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->initCompatibility()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0300aa

    .line 473
    invoke-direct {p0, p1, p2, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 477
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 179
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mLabelScale:F

    .line 185
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mSymbolColorScheme:I

    const/4 v1, -0x1

    .line 210
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    const/4 v1, 0x1

    .line 211
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShowPreview:Z

    .line 212
    iput-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShowTouchPoints:Z

    .line 227
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheMain:Ljava/util/WeakHashMap;

    .line 228
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheShift:Ljava/util/WeakHashMap;

    .line 229
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheCaps:Ljava/util/WeakHashMap;

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 241
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mIgnoreMove:Z

    .line 244
    new-instance v2, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-direct {v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;-><init>()V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    .line 247
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    .line 249
    new-instance v2, Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;

    invoke-direct {v2}, Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;-><init>()V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    .line 253
    new-instance v2, Lorg/pocketworkstation/pckeyboard/SwipeTracker;

    invoke-direct {v2}, Lorg/pocketworkstation/pckeyboard/SwipeTracker;-><init>()V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mSwipeTracker:Lorg/pocketworkstation/pckeyboard/SwipeTracker;

    .line 261
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    .line 272
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mClipRegion:Landroid/graphics/Rect;

    .line 275
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    const v2, 0x3f0ccccd    # 0.55f

    .line 277
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR:F

    const-string v2, "H"

    .line 278
    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->KEY_LABEL_HEIGHT_REFERENCE_CHAR:Ljava/lang/String;

    .line 288
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v3, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->INVERTING_MATRIX:[F

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mInvertingColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 290
    new-instance v2, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-direct {v2, p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;-><init>(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    .line 479
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HK/LatinKbdBaseView"

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating new LatinKeyboardBaseView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    sget-object v2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v2, v2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->renderMode:I

    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setRenderModeIfPossible(I)V

    .line 483
    sget-object v2, Lorg/pocketworkstation/pckeyboard/R$styleable;->LatinKeyboardBaseView:[I

    const v3, 0x7f0d009f

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 486
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xff

    if-ge v2, p3, :cond_1

    .line 488
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    const/high16 v5, -0x1000000

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 498
    :pswitch_1
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mVerticalCorrection:F

    goto/16 :goto_1

    .line 550
    :pswitch_2
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mSymbolColorScheme:I

    goto/16 :goto_1

    :pswitch_3
    const/4 v3, 0x0

    .line 525
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShadowRadius:F

    goto/16 :goto_1

    .line 522
    :pswitch_4
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShadowColor:I

    goto/16 :goto_1

    .line 516
    :pswitch_5
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mRecolorSymbols:Z

    goto/16 :goto_1

    :pswitch_6
    const/16 v3, 0xe

    .line 519
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mLabelTextSize:F

    goto :goto_1

    .line 536
    :pswitch_7
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 545
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto :goto_1

    .line 542
    :pswitch_8
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto :goto_1

    .line 539
    :pswitch_9
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_a
    const/16 v3, 0x12

    .line 501
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextSize:F

    goto :goto_1

    .line 504
    :pswitch_b
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextColor:I

    goto :goto_1

    .line 495
    :pswitch_c
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    goto :goto_1

    :pswitch_d
    const v3, -0x444445

    .line 507
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyHintColor:I

    goto :goto_1

    .line 510
    :pswitch_e
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyCursorColor:I

    goto :goto_1

    .line 492
    :pswitch_f
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 513
    :pswitch_10
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mInvertSymbols:Z

    goto :goto_1

    :pswitch_11
    const/high16 v3, 0x3f000000    # 0.5f

    .line 529
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mBackgroundDimAmount:F

    goto :goto_1

    .line 532
    :pswitch_12
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mBackgroundAlpha:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 555
    :cond_1
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 557
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShowPreview:Z

    const p3, 0x7f090005

    .line 558
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDelayBeforePreview:I

    const p3, 0x7f090006

    .line 559
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDelayBeforeSpacePreview:I

    const p3, 0x7f090003

    .line 560
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDelayAfterPreview:I

    .line 562
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPopupLayout:I

    .line 564
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    .line 565
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 566
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 567
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 569
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPaintHint:Landroid/graphics/Paint;

    .line 570
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 571
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPaintHint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 572
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 573
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPaintHint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 575
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    .line 576
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const/high16 p3, 0x43960000    # 300.0f

    .line 578
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, p3

    float-to-int p3, v2

    iput p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mSwipeThreshold:I

    const p3, 0x7f040005

    .line 581
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDisambiguateSwipe:Z

    const p3, 0x7f06006b

    .line 582
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardSlideAllowance:F

    .line 584
    new-instance p3, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;

    invoke-direct {p3, p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$1;-><init>(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)V

    .line 625
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p3, v4, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 626
    iget-object p3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p3, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p3, "android.hardware.touchscreen.multitouch.distinct"

    .line 629
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    const p1, 0x7f090007

    .line 630
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyRepeatInterval:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic access$000(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;ILorg/pocketworkstation/pckeyboard/PointerTracker;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->showKey(ILorg/pocketworkstation/pckeyboard/PointerTracker;)V

    return-void
.end method

.method static synthetic access$100(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)I
    .locals 0

    .line 82
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyRepeatInterval:I

    return p0
.end method

.method static synthetic access$200(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;ILorg/pocketworkstation/pckeyboard/PointerTracker;)Z
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->openPopupIfRequired(ILorg/pocketworkstation/pckeyboard/PointerTracker;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Lorg/pocketworkstation/pckeyboard/SwipeTracker;
    .locals 0

    .line 82
    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mSwipeTracker:Lorg/pocketworkstation/pckeyboard/SwipeTracker;

    return-object p0
.end method

.method static synthetic access$400(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)I
    .locals 0

    .line 82
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mSwipeThreshold:I

    return p0
.end method

.method static synthetic access$500(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDisambiguateSwipe:Z

    return p0
.end method

.method static synthetic access$600(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    .locals 0

    .line 82
    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-object p0
.end method

.method private computeProximityThreshold(Lorg/pocketworkstation/pckeyboard/Keyboard;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 846
    :cond_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-nez p1, :cond_1

    return-void

    .line 848
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 851
    aget-object v3, p1, v1

    .line 852
    iget v4, v3, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget v5, v3, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    iget v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardVerticalGap:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v3, v3, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->gap:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    .line 855
    :cond_3
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    int-to-float v1, v2

    const v2, 0x3fb33333    # 1.4f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Lorg/pocketworkstation/pckeyboard/KeyDetector;->setProximityThreshold(I)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private dismissKeyPreview()V
    .locals 3

    .line 1181
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/PointerTracker;

    .line 1182
    invoke-virtual {v1, v2}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->updateKey(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1184
    invoke-virtual {p0, v2, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->showPreview(ILorg/pocketworkstation/pckeyboard/PointerTracker;)V

    return-void
.end method

.method private drawDeadKeyLabel(Landroid/graphics/Canvas;Ljava/lang/String;IFLandroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x0

    .line 879
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 880
    invoke-static {p2}, Lorg/pocketworkstation/pckeyboard/DeadAccentSequence;->getSpacing(C)Ljava/lang/String;

    move-result-object p2

    .line 881
    sget-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->DEAD_KEY_PLACEHOLDER_STRING:Ljava/lang/String;

    int-to-float p3, p3

    invoke-virtual {p1, v0, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 882
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;
    .locals 8

    .line 1564
    iget-wide v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopupTime:J

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    sub-int/2addr p2, v2

    int-to-float v5, p2

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    sub-int/2addr p3, p2

    int-to-float v6, p3

    const/4 v7, 0x0

    move-wide v2, p4

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    return-object p1
.end method

.method private getLabelHeight(Landroid/graphics/Paint;I)I
    .locals 4

    .line 886
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 890
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const-string v1, "H"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 891
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 892
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 893
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method private getLongPressKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Lorg/pocketworkstation/pckeyboard/Keyboard;
    .locals 4

    .line 1410
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isDistinctCaps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheCaps:Ljava/util/WeakHashMap;

    goto :goto_0

    .line 1412
    :cond_0
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1413
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheShift:Ljava/util/WeakHashMap;

    goto :goto_0

    .line 1415
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheMain:Ljava/util/WeakHashMap;

    .line 1417
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/Keyboard;

    if-nez v1, :cond_2

    .line 1419
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPopupKeyboard(Landroid/content/Context;I)Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1420
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method private getPointerTracker(I)Lorg/pocketworkstation/pckeyboard/PointerTracker;
    .locals 12

    .line 1573
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 1574
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 1575
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 1578
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-gt v3, p1, :cond_2

    .line 1579
    new-instance v11, Lorg/pocketworkstation/pckeyboard/PointerTracker;

    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    iget-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    .line 1580
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->enableSlideKeyHack()Z

    move-result v10

    move-object v4, v11

    move v5, v3

    move-object v8, p0

    invoke-direct/range {v4 .. v10}, Lorg/pocketworkstation/pckeyboard/PointerTracker;-><init>(ILorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;Lorg/pocketworkstation/pckeyboard/KeyDetector;Lorg/pocketworkstation/pckeyboard/PointerTracker$UIProxy;Landroid/content/res/Resources;Z)V

    if-eqz v1, :cond_0

    .line 1582
    iget v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    invoke-virtual {v11, v1, v4}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->setKeyboard([Lorg/pocketworkstation/pckeyboard/Keyboard$Key;F)V

    :cond_0
    if-eqz v2, :cond_1

    .line 1584
    invoke-virtual {v11, v2}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->setOnKeyboardActionListener(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 1585
    :cond_1
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1588
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/pocketworkstation/pckeyboard/PointerTracker;

    return-object p1
.end method

.method private inflateMiniKeyboardContainer()V
    .locals 5

    .line 1345
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1347
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPopupLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080003

    .line 1350
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    .line 1351
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    new-instance v3, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;

    invoke-direct {v3, p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;-><init>(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)V

    invoke-virtual {v1, v3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setOnKeyboardActionListener(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 1387
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    new-instance v3, Lorg/pocketworkstation/pckeyboard/MiniKeyboardKeyDetector;

    iget v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardSlideAllowance:F

    invoke-direct {v3, v4}, Lorg/pocketworkstation/pckeyboard/MiniKeyboardKeyDetector;-><init>(F)V

    iput-object v3, v1, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    .line 1389
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    iput-object v2, v1, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1391
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {v1, p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setPopupParent(Landroid/view/View;)V

    .line 1393
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    return-void
.end method

.method static initCompatibility()V
    .locals 5

    .line 446
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->sSetRenderMode:Ljava/lang/reflect/Method;

    const-string v0, "HK/LatinKbdBaseView"

    const-string v1, "setRenderMode is supported"

    .line 447
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "HK/LatinKbdBaseView"

    const-string v1, "ignoring render mode, not supported"

    .line 452
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HK/LatinKbdBaseView"

    const-string v2, "unexpected SecurityException"

    .line 449
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static isAsciiDigit(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 1560
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBlackSym()Z
    .locals 2

    .line 790
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mSymbolColorScheme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLatinF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 1

    .line 1532
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    instance-of v0, v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    check-cast v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->isF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNonMicLatinF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 1

    .line 1536
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->isLatinF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isNumberAtEdgeOfPopupChars(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 1

    .line 1540
    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->isNumberAtLeftmostPopupChar(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->isNumberAtRightmostPopupChar(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static isNumberAtLeftmostPopupChar(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 2

    .line 1544
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 1545
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->isAsciiDigit(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method static isNumberAtRightmostPopupChar(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 2

    .line 1552
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iget-object p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 1553
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    invoke-interface {v0, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->isAsciiDigit(C)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isOneRowKeys(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/pocketworkstation/pckeyboard/Keyboard$Key;",
            ">;)Z"
        }
    .end annotation

    .line 1397
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1398
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private onBufferDraw(Landroid/graphics/Canvas;)V
    .locals 37

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 900
    iget-boolean v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    iget v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mViewWidth:I

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->setKeyboardWidth(I)V

    .line 910
    invoke-virtual/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 911
    iput-boolean v8, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    .line 915
    :cond_0
    iget-object v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 918
    iget-object v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    if-nez v0, :cond_1

    return-void

    .line 920
    :cond_1
    iget-object v9, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    .line 921
    iget-object v10, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPaintHint:Landroid/graphics/Paint;

    .line 922
    iget v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyHintColor:I

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 923
    iget-object v11, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 924
    iget-object v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mClipRegion:Landroid/graphics/Rect;

    .line 925
    iget-object v12, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    .line 926
    invoke-virtual/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v13

    .line 927
    invoke-virtual/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v14

    .line 928
    iget-object v15, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 929
    iget-object v5, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mInvalidatedKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 933
    iget-boolean v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mInvertSymbols:Z

    if-eqz v1, :cond_2

    .line 934
    iget-object v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mInvertingColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    move-object v4, v1

    const/4 v3, 0x0

    goto :goto_0

    .line 935
    :cond_2
    iget-boolean v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mRecolorSymbols:Z

    if-eqz v1, :cond_3

    .line 937
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 939
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShadowColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v4, v1

    move-object v3, v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v5, :cond_4

    .line 944
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 947
    iget v1, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    add-int/2addr v1, v13

    sub-int/2addr v1, v2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gt v1, v8, :cond_4

    iget v1, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    add-int/2addr v1, v14

    sub-int/2addr v1, v2

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gt v1, v8, :cond_4

    iget v1, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v8, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    add-int/2addr v1, v8

    add-int/2addr v1, v13

    add-int/2addr v1, v2

    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v1, v8, :cond_4

    iget v1, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget v8, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    add-int/2addr v1, v8

    add-int/2addr v1, v14

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v0, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 955
    :goto_1
    array-length v1, v15

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 959
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    move-object/from16 v19, v4

    .line 961
    aget-object v4, v15, v3

    move-object/from16 v20, v12

    .line 962
    iget v12, v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    iget v4, v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v19

    move-object/from16 v12, v20

    goto :goto_2

    :cond_5
    move-object/from16 v19, v4

    move-object/from16 v20, v12

    .line 965
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 966
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 967
    div-int/lit8 v3, v1, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 968
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v12, 0x6

    mul-int/lit8 v2, v2, 0x6

    .line 970
    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0xa

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextSize:F

    .line 971
    iget v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextSize:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v0, v0, v4

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    iput v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mLabelTextSize:F

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_1e

    .line 975
    aget-object v0, v15, v3

    if-eqz v8, :cond_6

    if-eq v5, v0, :cond_6

    move/from16 v22, v1

    move/from16 v23, v3

    move-object/from16 v24, v5

    goto :goto_4

    .line 979
    :cond_6
    iget-object v4, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    iget v12, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    add-int/2addr v12, v13

    iget v2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    add-int/2addr v2, v14

    move/from16 v22, v1

    iget v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    move/from16 v23, v3

    iget v3, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    add-int/2addr v1, v3

    add-int/2addr v1, v13

    iget v3, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    move-object/from16 v24, v5

    iget v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    add-int/2addr v3, v5

    add-int/2addr v3, v14

    invoke-virtual {v4, v12, v2, v1, v3}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_4
    move/from16 v30, v8

    move-object/from16 v34, v11

    move/from16 v28, v14

    move-object/from16 v29, v15

    move-object/from16 v36, v18

    move-object/from16 v1, v19

    move-object/from16 v14, v20

    move/from16 v20, v22

    move/from16 v18, v23

    move-object/from16 v16, v24

    const/4 v2, 0x0

    const/16 v21, 0x1

    goto/16 :goto_11

    .line 987
    :cond_7
    iget-boolean v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isCursor:Z

    if-eqz v1, :cond_8

    iget v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyCursorColor:I

    goto :goto_5

    :cond_8
    iget v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextColor:I

    :goto_5
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 989
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v1

    .line 990
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 993
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getCaseLabel()Ljava/lang/String;

    move-result-object v12

    .line 996
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 997
    iget v2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v2, v3, :cond_9

    iget v2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v1, :cond_b

    .line 998
    :cond_9
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    .line 999
    iget v2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    if-le v1, v2, :cond_a

    .line 1000
    iget v2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 1001
    iget v3, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    .line 1003
    iget v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget v2, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    invoke-virtual {v11, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_b
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1006
    :goto_6
    iget v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    add-int/2addr v1, v13

    int-to-float v1, v1

    iget v3, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    cmpl-float v1, v2, v4

    if-eqz v1, :cond_c

    .line 1008
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1009
    invoke-virtual {v7, v4, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1011
    :cond_c
    iget v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mBackgroundAlpha:I

    const/16 v3, 0xff

    if-eq v1, v3, :cond_d

    .line 1012
    iget v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mBackgroundAlpha:I

    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1014
    :cond_d
    invoke-virtual {v11, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v1, v2, v4

    if-eqz v1, :cond_e

    .line 1015
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    const/4 v5, 0x0

    if-eqz v12, :cond_19

    .line 1021
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_f

    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    array-length v1, v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_10

    .line 1023
    iget v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mLabelTextSize:F

    iget v4, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mLabelScale:F

    mul-float v1, v1, v4

    float-to-int v1, v1

    .line 1024
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_7

    :cond_f
    const/4 v3, 0x2

    .line 1026
    :cond_10
    iget v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextSize:F

    iget v4, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mLabelScale:F

    mul-float v1, v1, v4

    float-to-int v1, v1

    .line 1027
    iget-object v4, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1029
    :goto_7
    iget-boolean v4, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isCursor:Z

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    int-to-float v4, v1

    .line 1030
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1032
    invoke-direct {v6, v9, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getLabelHeight(Landroid/graphics/Paint;I)I

    move-result v4

    .line 1035
    iget v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShadowRadius:F

    iget v2, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShadowColor:I

    invoke-virtual {v9, v1, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1038
    invoke-direct/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->showHints7Bit()Z

    move-result v1

    invoke-direct/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->showHintsAll()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getHintLabel(ZZ)Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    .line 1039
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v17, 0xc

    const-wide v25, 0x3fe3333333333333L    # 0.6

    if-nez v1, :cond_13

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v3, v5, :cond_13

    .line 1040
    :cond_11
    iget v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextSize:F

    move/from16 v27, v4

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v25

    iget v1, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mLabelScale:F

    move/from16 v28, v14

    move-object/from16 v29, v15

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v14

    double-to-int v1, v3

    int-to-float v3, v1

    .line 1041
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1043
    invoke-direct {v6, v10, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getLabelHeight(Landroid/graphics/Paint;I)I

    move-result v1

    .line 1044
    iget v3, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    move-object/from16 v14, v20

    iget v4, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 1045
    iget v4, v14, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v1, v1, 0xc

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v4, v1

    const/4 v1, 0x0

    .line 1046
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v1

    const/4 v5, 0x6

    if-ne v1, v5, :cond_12

    int-to-float v4, v4

    move-object v15, v0

    move-object/from16 v0, p0

    move/from16 v20, v22

    move-object/from16 v1, p1

    move-object v5, v2

    move/from16 v30, v8

    const/4 v8, 0x2

    const/16 v21, 0x1

    move-object/from16 v31, v18

    move/from16 v18, v23

    move-object/from16 v33, v19

    move/from16 v32, v27

    move-object v8, v5

    move-object/from16 v34, v11

    move-object/from16 v16, v24

    const/4 v11, 0x0

    move-object v5, v10

    .line 1047
    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->drawDeadKeyLabel(Landroid/graphics/Canvas;Ljava/lang/String;IFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_12
    move-object v15, v0

    move/from16 v30, v8

    move-object/from16 v34, v11

    move-object/from16 v31, v18

    move-object/from16 v33, v19

    move/from16 v20, v22

    move/from16 v18, v23

    move-object/from16 v16, v24

    move/from16 v32, v27

    const/4 v11, 0x0

    const/16 v21, 0x1

    move-object v8, v2

    int-to-float v0, v3

    int-to-float v1, v4

    .line 1049
    invoke-virtual {v7, v8, v0, v1, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_13
    move/from16 v32, v4

    move/from16 v30, v8

    move-object/from16 v34, v11

    move/from16 v28, v14

    move-object/from16 v29, v15

    move-object/from16 v31, v18

    move-object/from16 v33, v19

    move-object/from16 v14, v20

    move/from16 v20, v22

    move/from16 v18, v23

    move-object/from16 v16, v24

    const/4 v11, 0x0

    const/16 v21, 0x1

    move-object v15, v0

    move-object v8, v2

    .line 1054
    :goto_8
    invoke-direct/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->showHints7Bit()Z

    move-result v0

    invoke-direct/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->showHintsAll()Z

    move-result v1

    invoke-virtual {v15, v0, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getAltHintLabel(ZZ)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    .line 1055
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1056
    iget v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextSize:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v25

    iget v3, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mLabelScale:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-int v0, v0

    int-to-float v1, v0

    .line 1057
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1059
    invoke-direct {v6, v10, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getLabelHeight(Landroid/graphics/Paint;I)I

    move-result v0

    .line 1060
    iget v1, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget v3, v14, Landroid/graphics/Rect;->right:I

    sub-int v3, v1, v3

    .line 1061
    iget v1, v14, Landroid/graphics/Rect;->top:I

    const-string v4, ""

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_9

    :cond_14
    const/16 v17, 0x1a

    :goto_9
    mul-int v0, v0, v17

    div-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v0

    const/4 v0, 0x0

    .line 1062
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v8, 0x6

    if-ne v0, v8, :cond_15

    int-to-float v4, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v10

    .line 1063
    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->drawDeadKeyLabel(Landroid/graphics/Canvas;Ljava/lang/String;IFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_15
    int-to-float v0, v3

    int-to-float v1, v1

    .line 1065
    invoke-virtual {v7, v2, v0, v1, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_16
    const/4 v8, 0x6

    .line 1070
    :goto_a
    iget v0, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget v1, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    div-int/lit8 v5, v0, 0x2

    .line 1071
    iget v0, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    int-to-float v0, v0

    move/from16 v1, v32

    int-to-float v1, v1

    const v2, 0x3f0ccccd    # 0.55f

    mul-float v1, v1, v2

    add-float v4, v0, v1

    .line 1074
    invoke-virtual {v15}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isDeadKey()Z

    move-result v0

    if-eqz v0, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move v3, v5

    move/from16 v35, v4

    move v8, v5

    move-object v5, v9

    .line 1075
    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->drawDeadKeyLabel(Landroid/graphics/Canvas;Ljava/lang/String;IFLandroid/graphics/Paint;)V

    move/from16 v1, v35

    goto :goto_b

    :cond_17
    move/from16 v35, v4

    move v8, v5

    int-to-float v0, v8

    move/from16 v1, v35

    .line 1077
    invoke-virtual {v7, v12, v0, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1079
    :goto_b
    iget-boolean v0, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isCursor:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 1082
    invoke-virtual {v9, v11, v11, v11, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    int-to-float v0, v8

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v3, v0, v2

    .line 1084
    invoke-virtual {v7, v12, v3, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-float v3, v0, v2

    .line 1085
    invoke-virtual {v7, v12, v3, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v4, v1, v2

    .line 1086
    invoke-virtual {v7, v12, v0, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-float v4, v1, v2

    .line 1087
    invoke-virtual {v7, v12, v0, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_18
    const/4 v0, 0x0

    .line 1091
    invoke-virtual {v9, v11, v11, v11, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1095
    invoke-direct {v6, v15}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->shouldDrawLabelAndIcon(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result v2

    goto :goto_c

    :cond_19
    move/from16 v30, v8

    move-object/from16 v34, v11

    move/from16 v28, v14

    move-object/from16 v29, v15

    move-object/from16 v31, v18

    move-object/from16 v33, v19

    move-object/from16 v14, v20

    move/from16 v20, v22

    move/from16 v18, v23

    move-object/from16 v16, v24

    const/4 v11, 0x0

    const/16 v21, 0x1

    move-object v15, v0

    const/4 v2, 0x1

    .line 1097
    :goto_c
    iget-object v0, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    if-eqz v2, :cond_1d

    .line 1104
    invoke-direct {v6, v15}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->shouldDrawIconFully(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1105
    iget v1, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    .line 1106
    iget v2, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    const/4 v3, -0x1

    const/4 v8, 0x0

    goto :goto_d

    .line 1110
    :cond_1a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1111
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1112
    iget v3, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget v4, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    const/4 v4, 0x2

    div-int/lit8 v8, v3, 0x2

    .line 1113
    iget v3, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    iget v5, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    div-int/2addr v3, v4

    :goto_d
    int-to-float v4, v8

    int-to-float v5, v3

    .line 1115
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    .line 1116
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v1, v33

    if-eqz v1, :cond_1c

    move-object/from16 v2, v31

    if-eqz v2, :cond_1b

    .line 1125
    iget v4, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShadowRadius:F

    cmpl-float v4, v4, v11

    if-lez v4, :cond_1b

    .line 1126
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    iget v5, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShadowRadius:F

    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 1127
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1128
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1129
    iget v4, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget v11, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1130
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1131
    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v11, 0x2

    .line 1132
    new-array v11, v11, [I

    .line 1133
    invoke-virtual {v4, v5, v11}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1134
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1135
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v36, v2

    const/4 v12, 0x0

    .line 1136
    aget v2, v11, v12

    int-to-float v2, v2

    aget v11, v11, v21

    int-to-float v11, v11

    invoke-virtual {v7, v4, v2, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_1b
    move-object/from16 v36, v2

    .line 1138
    :goto_e
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1139
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x0

    .line 1140
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_f

    :cond_1c
    move-object/from16 v36, v31

    const/4 v2, 0x0

    .line 1142
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_f
    neg-int v0, v8

    int-to-float v0, v0

    neg-int v3, v3

    int-to-float v3, v3

    .line 1144
    invoke-virtual {v7, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_10

    :cond_1d
    move-object/from16 v36, v31

    move-object/from16 v1, v33

    const/4 v2, 0x0

    .line 1146
    :goto_10
    iget v0, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    neg-int v0, v0

    sub-int/2addr v0, v13

    int-to-float v0, v0

    iget v3, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    neg-int v3, v3

    sub-int v3, v3, v28

    int-to-float v3, v3

    invoke-virtual {v7, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_11
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v19, v1

    move-object/from16 v5, v16

    move/from16 v1, v20

    move-object/from16 v15, v29

    move/from16 v8, v30

    move-object/from16 v11, v34

    move-object/from16 v18, v36

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v12, 0x6

    move-object/from16 v20, v14

    move/from16 v14, v28

    goto/16 :goto_3

    :cond_1e
    const/4 v2, 0x0

    .line 1149
    iput-object v2, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mInvalidatedKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 1151
    iget-boolean v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardVisible:Z

    if-eqz v0, :cond_1f

    .line 1152
    iget v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mBackgroundDimAmount:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object/from16 v0, p1

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1156
    :cond_1f
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->showTouchPos:Z

    if-nez v0, :cond_21

    :cond_20
    const/4 v0, 0x0

    goto :goto_13

    .line 1157
    :cond_21
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->showTouchPos:Z

    if-nez v0, :cond_22

    iget-boolean v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShowTouchPoints:Z

    if-eqz v0, :cond_20

    .line 1158
    :cond_22
    iget-object v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/pocketworkstation/pckeyboard/PointerTracker;

    .line 1159
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getStartX()I

    move-result v10

    .line 1160
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getStartY()I

    move-result v11

    .line 1161
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getLastX()I

    move-result v12

    .line 1162
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getLastY()I

    move-result v13

    const/16 v0, 0x80

    .line 1163
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, -0x10000

    .line 1164
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v10

    int-to-float v2, v11

    const/high16 v14, 0x40400000    # 3.0f

    .line 1165
    invoke-virtual {v7, v1, v2, v14, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v15, v12

    int-to-float v5, v13

    move-object/from16 v0, p1

    move v3, v15

    move v4, v5

    move v14, v5

    move-object v5, v9

    .line 1166
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v0, -0xffff01

    .line 1167
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 1168
    invoke-virtual {v7, v15, v14, v0, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v1, -0xff0100

    .line 1169
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/2addr v10, v12

    const/4 v1, 0x2

    .line 1170
    div-int/2addr v10, v1

    int-to-float v2, v10

    add-int/2addr v11, v13

    div-int/2addr v11, v1

    int-to-float v3, v11

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v7, v2, v3, v4, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_12

    .line 1175
    :goto_13
    iput-boolean v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDrawPending:Z

    .line 1176
    iget-object v0, v6, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private onCancelEvent(Lorg/pocketworkstation/pckeyboard/PointerTracker;IIJ)V
    .locals 0

    .line 1752
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onCancelEvent(IIJ)V

    .line 1753
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {p2, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->remove(Lorg/pocketworkstation/pckeyboard/PointerTracker;)V

    return-void
.end method

.method private onDownEvent(Lorg/pocketworkstation/pckeyboard/PointerTracker;IIJ)V
    .locals 2

    .line 1724
    invoke-virtual {p1, p2, p3}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isOnModifierKey(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4, p5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersExcept(Lorg/pocketworkstation/pckeyboard/PointerTracker;J)V

    .line 1729
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onDownEvent(IIJ)V

    .line 1730
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {p2, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->add(Lorg/pocketworkstation/pckeyboard/PointerTracker;)V

    return-void
.end method

.method private onUpEvent(Lorg/pocketworkstation/pckeyboard/PointerTracker;IIJ)V
    .locals 3

    .line 1734
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isModifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p1, p4, p5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersExcept(Lorg/pocketworkstation/pckeyboard/PointerTracker;J)V

    goto :goto_0

    .line 1739
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->lastIndexOf(Lorg/pocketworkstation/pckeyboard/PointerTracker;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1741
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p1, p4, p5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersOlderThan(Lorg/pocketworkstation/pckeyboard/PointerTracker;J)V

    goto :goto_0

    :cond_1
    const-string v0, "HK/LatinKbdBaseView"

    .line 1743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpEvent: corresponding down event not found for pointer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mPointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :goto_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 1748
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {p2, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->remove(Lorg/pocketworkstation/pckeyboard/PointerTracker;)V

    return-void
.end method

.method private openPopupIfRequired(ILorg/pocketworkstation/pckeyboard/PointerTracker;)Z
    .locals 2

    .line 1323
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPopupLayout:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1327
    :cond_0
    invoke-virtual {p2, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 1330
    :cond_1
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isInSlidingKeyInput()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1332
    :cond_2
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onLongPress(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1334
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 1335
    iget v0, p2, Lorg/pocketworkstation/pckeyboard/PointerTracker;->mPointerId:I

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardTrackerId:I

    .line 1337
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->setAlreadyProcessed()V

    .line 1338
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->remove(Lorg/pocketworkstation/pckeyboard/PointerTracker;)V

    :cond_3
    return p1
.end method

.method private setRenderModeIfPossible(I)V
    .locals 4

    .line 457
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->sSetRenderMode:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->sPrevRenderMode:I

    if-eq p1, v0, :cond_0

    .line 459
    :try_start_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->sSetRenderMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sput p1, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->sPrevRenderMode:I

    const-string p1, "HK/LatinKbdBaseView"

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "render mode set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v1, v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->renderMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 467
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 465
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 463
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private shouldAlignLeftmost(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 0

    .line 1528
    iget-boolean p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupReversed:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private shouldDrawIconFully(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 1

    .line 1517
    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->isNumberAtEdgeOfPopupChars(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->isLatinF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1518
    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->hasPuncOrSmileysPopup(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private shouldDrawLabelAndIcon(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 1

    .line 1523
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->isNonMicLatinF1Key(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1524
    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->hasPuncOrSmileysPopup(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private showHints7Bit()Z
    .locals 2

    .line 634
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->hintMode:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private showHintsAll()Z
    .locals 2

    .line 638
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->hintMode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showKey(ILorg/pocketworkstation/pckeyboard/PointerTracker;)V
    .locals 9

    .line 1212
    invoke-virtual {p2, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getKey(I)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1217
    :cond_0
    iget-object p2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 1218
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->shouldDrawLabelAndIcon(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1219
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    iget-object v5, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object p2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-virtual {v4, v2, v2, v2, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1221
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1223
    :cond_2
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1224
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getCaseLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    iget-object p2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-le p2, v1, :cond_3

    iget-object p2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    array-length p2, p2

    if-ge p2, v0, :cond_3

    .line 1226
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextSize:F

    invoke-virtual {p2, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1227
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1229
    :cond_3
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewTextSizeLarge:I

    int-to-float v2, v2

    invoke-virtual {p2, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1230
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1233
    :goto_0
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1234
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1233
    invoke-virtual {p2, v2, v4}, Landroid/widget/TextView;->measure(II)V

    .line 1235
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget v2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    .line 1236
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    .line 1235
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1237
    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewHeight:I

    .line 1238
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1240
    iput p2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1241
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1244
    :cond_4
    iget v4, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v5, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    sub-int v5, p2, v5

    div-int/2addr v5, v0

    sub-int/2addr v4, v5

    .line 1245
    iget v5, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    sub-int/2addr v5, v2

    iget v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewOffset:I

    add-int/2addr v5, v6

    .line 1247
    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v6}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelDismissPreview()V

    .line 1248
    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    if-nez v6, :cond_5

    .line 1249
    new-array v6, v0, [I

    iput-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    .line 1250
    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    invoke-virtual {p0, v6}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getLocationInWindow([I)V

    .line 1251
    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    aget v7, v6, v3

    iget v8, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetX:I

    add-int/2addr v7, v8

    aput v7, v6, v3

    .line 1252
    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    aget v7, v6, v1

    iget v8, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetY:I

    add-int/2addr v7, v8

    aput v7, v6, v1

    .line 1253
    new-array v6, v0, [I

    .line 1254
    invoke-virtual {p0, v6}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getLocationOnScreen([I)V

    .line 1255
    aget v6, v6, v1

    iput v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mWindowY:I

    .line 1259
    :cond_5
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getLongPressKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    .line 1261
    :goto_1
    iget-object v7, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v6, :cond_7

    const v6, 0x7f07009d

    goto :goto_2

    :cond_7
    const v6, 0x7f07009c

    :goto_2
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1262
    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    aget v6, v6, v3

    add-int/2addr v4, v6

    .line 1263
    iget-object v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    aget v1, v6, v1

    add-int/2addr v5, v1

    .line 1266
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mWindowY:I

    add-int/2addr v1, v5

    if-gez v1, :cond_9

    .line 1269
    iget v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v6, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    add-int/2addr v1, v6

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    if-gt v1, v6, :cond_8

    .line 1270
    iget p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v7

    double-to-int p1, v0

    add-int/2addr v4, p1

    goto :goto_3

    .line 1272
    :cond_8
    iget p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v7

    double-to-int p1, v0

    sub-int/2addr v4, p1

    :goto_3
    add-int/2addr v5, v2

    .line 1277
    :cond_9
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1278
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4, v5, p2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_4

    .line 1280
    :cond_a
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1281
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1282
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1286
    :goto_4
    iput v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPopupPreviewDisplayedY:I

    .line 1287
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public closing()V
    .locals 3

    const-string v0, "HK/LatinKbdBaseView"

    .line 1773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1775
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelAllMessages()V

    .line 1777
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    .line 1788
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheMain:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1789
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheShift:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1790
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheCaps:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method protected dismissPopupKeyboard()V
    .locals 4

    .line 1805
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1807
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1810
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardVisible:Z

    .line 1811
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersExcept(Lorg/pocketworkstation/pckeyboard/PointerTracker;J)V

    .line 1812
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    :cond_1
    return-void
.end method

.method enableSlideKeyHack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;
    .locals 1

    .line 699
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    .locals 1

    .line 653
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-object v0
.end method

.method public getPointerCount()I
    .locals 1

    .line 1600
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    return v0
.end method

.method public getShiftState()I
    .locals 1

    .line 751
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getShiftState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleBack()Z
    .locals 1

    .line 1817
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .line 707
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .line 1297
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    const/4 v0, 0x1

    .line 1298
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDrawPending:Z

    .line 1299
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->invalidate()V

    return-void
.end method

.method public invalidateKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1312
    :cond_0
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mInvalidatedKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 1314
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v4, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    .line 1315
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget v5, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1314
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1317
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    .line 1318
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result p1

    add-int/2addr v3, p1

    .line 1317
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->invalidate(IIII)V

    return-void
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .line 1592
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardVisible:Z

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->isInSlidingKeyInput()Z

    move-result v0

    return v0

    .line 1595
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerQueue:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->isInSlidingKeyInput()Z

    move-result v0

    return v0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .line 786
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .line 817
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyDetector;->isProximityCorrectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isShiftAll()Z
    .locals 4

    .line 762
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getShiftState()I

    move-result v0

    .line 763
    sget-object v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean v1, v1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->shiftLockModifiers:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v0, v3, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public isShiftCaps()Z
    .locals 1

    .line 758
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getShiftState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1795
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1797
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->closing()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 869
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 871
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 872
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 873
    :cond_0
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onBufferDraw(Landroid/graphics/Canvas;)V

    .line 875
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onLongPress(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z
    .locals 13

    .line 1437
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPopupLayout:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1439
    :cond_0
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getLongPressKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1443
    :cond_1
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v2, :cond_2

    .line 1444
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->inflateMiniKeyboardContainer()V

    .line 1446
    :cond_2
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    if-nez v2, :cond_3

    return v1

    .line 1447
    :cond_3
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {v2, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    .line 1448
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1449
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1448
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1451
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v2, 0x2

    if-nez v0, :cond_4

    .line 1452
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    .line 1453
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getLocationInWindow([I)V

    .line 1464
    :cond_4
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getKeyboard()Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 1465
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget v3, v3, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 1467
    :goto_0
    iget v4, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    .line 1468
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 1469
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->shouldAlignLeftmost(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1470
    iget v5, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    sub-int/2addr v5, v3

    add-int/2addr v4, v5

    .line 1471
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_6
    add-int/2addr v4, v3

    .line 1474
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v4, v3

    .line 1475
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v4, v3

    .line 1477
    :goto_1
    iget v3, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v3, v5

    .line 1478
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v5

    add-int/2addr v3, v5

    .line 1479
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 1480
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    .line 1482
    iget-boolean v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShowPreview:Z

    if-eqz v5, :cond_7

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->isOneRowKeys(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPopupPreviewDisplayedY:I

    :cond_7
    if-gez v4, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    .line 1487
    :cond_8
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getMeasuredWidth()I

    move-result v0

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    if-le v4, v0, :cond_9

    .line 1488
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getMeasuredWidth()I

    move-result v0

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_2

    :cond_9
    move v0, v4

    .line 1491
    :goto_2
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    aget v5, v5, v1

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    .line 1492
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    .line 1493
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {v4, v0, v3}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setPopupOffset(II)V

    .line 1494
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getShiftState()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setShiftState(I)Z

    .line 1496
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {v4, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    .line 1497
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1498
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1499
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1501
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, p0, v1, v0, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1502
    iput-boolean v6, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardVisible:Z

    .line 1505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1506
    iput-wide v11, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopupTime:J

    const/4 v8, 0x0

    .line 1507
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    div-int/2addr v1, v2

    add-int v9, v0, v1

    iget v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    div-int/2addr p1, v2

    add-int v10, v0, p1

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1509
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1512
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    return v6
.end method

.method public onMeasure(II)V
    .locals 3

    .line 823
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    if-nez p2, :cond_0

    .line 825
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 824
    invoke-virtual {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 827
    :cond_0
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getMinWidth()I

    move-result p2

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 828
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    add-int/lit8 v1, p2, 0xa

    if-ge v0, v1, :cond_1

    .line 829
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-eq p1, p2, :cond_1

    const-string v0, "HK/LatinKbdBaseView"

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring unexpected width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "HK/LatinKbdBaseView"

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMeasure width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    .line 834
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    .line 833
    invoke-virtual {p0, p2, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .line 860
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const-string p3, "HK/LatinKbdBaseView"

    .line 861
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSizeChanged, w="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mViewWidth:I

    const/4 p1, 0x0

    .line 864
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1605
    invoke-virtual {p0, p1, v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 12

    .line 1609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 1610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1611
    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    .line 1612
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    .line 1617
    iget-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    const/4 v6, 0x1

    if-nez v3, :cond_0

    if-le v0, v6, :cond_0

    if-le v2, v6, :cond_0

    return v6

    .line 1622
    :cond_0
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mSwipeTracker:Lorg/pocketworkstation/pckeyboard/SwipeTracker;

    invoke-virtual {v3, p1}, Lorg/pocketworkstation/pckeyboard/SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1625
    iget-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardVisible:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1626
    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1627
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 1628
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    return v6

    .line 1632
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 1634
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1635
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    .line 1636
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 1640
    iget-boolean v9, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardVisible:Z

    if-eqz v9, :cond_3

    .line 1641
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardTrackerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-ltz p2, :cond_2

    if-ge p2, v0, :cond_2

    .line 1643
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v2, v0

    .line 1644
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int v3, p1

    move-object v0, p0

    .line 1645
    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1647
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {p2, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return v6

    .line 1653
    :cond_3
    iget-object v9, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v9}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->isInKeyRepeat()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_5

    if-ne v1, v10, :cond_4

    return v6

    .line 1658
    :cond_4
    invoke-direct {p0, v7}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lorg/pocketworkstation/pckeyboard/PointerTracker;

    move-result-object v9

    if-le v0, v6, :cond_5

    .line 1661
    invoke-virtual {v9}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isModifier()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1662
    iget-object v9, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v9}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyRepeatTimer()V

    .line 1670
    :cond_5
    iget-boolean v9, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    const/4 v11, 0x0

    if-nez v9, :cond_a

    .line 1672
    invoke-direct {p0, v11}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lorg/pocketworkstation/pckeyboard/PointerTracker;

    move-result-object p1

    if-ne v0, v6, :cond_6

    if-ne v2, v10, :cond_6

    .line 1676
    invoke-virtual {p1, v8, v3, v4, v5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onDownEvent(IIJ)V

    goto :goto_0

    :cond_6
    if-ne v0, v10, :cond_7

    if-ne v2, v6, :cond_7

    .line 1680
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getLastX()I

    move-result v0

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getLastY()I

    move-result v1

    invoke-virtual {p1, v0, v1, v4, v5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_0

    :cond_7
    if-ne v0, v6, :cond_8

    if-ne v2, v6, :cond_8

    move-object v0, p1

    move v2, v8

    .line 1682
    invoke-virtual/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onTouchEvent(IIIJ)V

    goto :goto_0

    :cond_8
    const-string v1, "HK/LatinKbdBaseView"

    .line 1684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown touch panel behavior: pointer count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (old "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_9

    .line 1688
    invoke-virtual {p1, v6}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->setSlidingKeyInputState(Z)V

    :cond_9
    return v6

    :cond_a
    if-ne v1, v10, :cond_b

    .line 1693
    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mIgnoreMove:Z

    if-nez p2, :cond_c

    :goto_1
    if-ge v11, v0, :cond_c

    .line 1695
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lorg/pocketworkstation/pckeyboard/PointerTracker;

    move-result-object p2

    .line 1696
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2, v1, v2, v4, v5}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onMoveEvent(IIJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1700
    :cond_b
    invoke-direct {p0, v7}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lorg/pocketworkstation/pckeyboard/PointerTracker;

    move-result-object p1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move v2, v8

    .line 1713
    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onCancelEvent(Lorg/pocketworkstation/pckeyboard/PointerTracker;IIJ)V

    goto :goto_2

    .line 1709
    :pswitch_2
    iput-boolean v11, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mIgnoreMove:Z

    move-object v0, p0

    move-object v1, p1

    move v2, v8

    .line 1710
    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onUpEvent(Lorg/pocketworkstation/pckeyboard/PointerTracker;IIJ)V

    goto :goto_2

    .line 1704
    :pswitch_3
    iput-boolean v11, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mIgnoreMove:Z

    move-object v0, p0

    move-object v1, p1

    move v2, v8

    .line 1705
    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->onDownEvent(Lorg/pocketworkstation/pckeyboard/PointerTracker;IIJ)V

    :goto_2
    if-eqz p2, :cond_c

    .line 1717
    invoke-virtual {p1, v6}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->setSlidingKeyInputState(Z)V

    :cond_c
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected popupKeyboardIsShowing()Z
    .locals 1

    .line 1801
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAltIndicator(Z)V
    .locals 1

    .line 734
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->setAltIndicator(Z)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->invalidateKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    :cond_0
    return-void
.end method

.method public setCtrlIndicator(Z)V
    .locals 1

    .line 728
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->setCtrlIndicator(Z)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->invalidateKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    :cond_0
    return-void
.end method

.method public setKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;)V
    .locals 4

    .line 664
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 665
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 669
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 670
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 671
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    .line 674
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lorg/pocketworkstation/pckeyboard/KeyDetector;->setKeyboard(Lorg/pocketworkstation/pckeyboard/Keyboard;FF)[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 675
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardVerticalGap:I

    .line 676
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/PointerTracker;

    .line 677
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeys:[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    invoke-virtual {v1, v2, v3}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->setKeyboard([Lorg/pocketworkstation/pckeyboard/Keyboard$Key;F)V

    goto :goto_0

    .line 679
    :cond_1
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->labelScalePref:F

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mLabelScale:F

    .line 681
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->requestLayout()V

    const/4 v0, 0x1

    .line 683
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    .line 684
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 685
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->computeProximityThreshold(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    .line 686
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheMain:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->clear()V

    .line 687
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheShift:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->clear()V

    .line 688
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardCacheCaps:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->clear()V

    .line 689
    sget-object p1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget p1, p1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->renderMode:I

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->setRenderModeIfPossible(I)V

    .line 690
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mIgnoreMove:Z

    return-void
.end method

.method public setMetaIndicator(Z)V
    .locals 1

    .line 740
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->setMetaIndicator(Z)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->invalidateKey(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)V

    :cond_0
    return-void
.end method

.method public setOnKeyboardActionListener(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V
    .locals 2

    .line 642
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 643
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/PointerTracker;

    .line 644
    invoke-virtual {v1, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->setOnKeyboardActionListener(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 0

    .line 798
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetX:I

    .line 799
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetY:I

    .line 800
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0

    .line 777
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShowPreview:Z

    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 1

    .line 810
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyDetector:Lorg/pocketworkstation/pckeyboard/KeyDetector;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/KeyDetector;->setProximityCorrectionEnabled(Z)V

    return-void
.end method

.method public setShiftState(I)Z
    .locals 1

    .line 717
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->setShiftState(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 720
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public showPreview(ILorg/pocketworkstation/pckeyboard/PointerTracker;)V
    .locals 5

    .line 1188
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 1189
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 1190
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    instance-of v1, v1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    check-cast v1, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    .line 1191
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->isLanguageSwitchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 1196
    invoke-virtual {p2, p1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isSpaceKey(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2, v0}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isSpaceKey(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eq v0, p1, :cond_6

    .line 1198
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShowPreview:Z

    if-nez v0, :cond_3

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    :cond_3
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 1202
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 1203
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDelayAfterPreview:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->dismissPreview(J)V

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_6

    .line 1205
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mShowPreview:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDelayBeforePreview:I

    goto :goto_2

    :cond_5
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mDelayBeforeSpacePreview:I

    .line 1206
    :goto_2
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mHandler:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$UIHandler;->popupPreview(JILorg/pocketworkstation/pckeyboard/PointerTracker;)V

    :cond_6
    :goto_3
    return-void
.end method

.method protected swipeDown()Z
    .locals 1

    .line 1769
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeDown()Z

    move-result v0

    return v0
.end method

.method protected swipeLeft()Z
    .locals 1

    .line 1761
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeLeft()Z

    move-result v0

    return v0
.end method

.method protected swipeRight()Z
    .locals 1

    .line 1757
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeRight()Z

    move-result v0

    return v0
.end method

.method swipeUp()Z
    .locals 1

    .line 1765
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeUp()Z

    move-result v0

    return v0
.end method
