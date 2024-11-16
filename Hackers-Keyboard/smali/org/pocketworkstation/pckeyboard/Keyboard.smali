.class public Lorg/pocketworkstation/pckeyboard/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/Keyboard$Key;,
        Lorg/pocketworkstation/pckeyboard/Keyboard$Row;
    }
.end annotation


# static fields
.field public static final DEAD_KEY_PLACEHOLDER:C = '\u25cc'

.field public static final DEAD_KEY_PLACEHOLDER_STRING:Ljava/lang/String;

.field public static final DEFAULT_LAYOUT_COLUMNS:I = 0xa

.field public static final DEFAULT_LAYOUT_ROWS:I = 0x4

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field public static final KEYCODE_ALT_SYM:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field public static final POPUP_ADD_CASE:I = 0x2

.field public static final POPUP_ADD_SELF:I = 0x4

.field public static final POPUP_ADD_SHIFT:I = 0x1

.field public static final POPUP_AUTOREPEAT:I = 0x200

.field public static final POPUP_DISABLE:I = 0x100

.field private static SEARCH_DISTANCE:F = 0.0f

.field public static final SHIFT_CAPS:I = 0x3

.field public static final SHIFT_CAPS_LOCKED:I = 0x4

.field public static final SHIFT_LOCKED:I = 0x2

.field public static final SHIFT_OFF:I = 0x0

.field public static final SHIFT_ON:I = 0x1

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mAltKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCtrlKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:F

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:F

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field public mExtensionRowCount:I

.field private mGridNeighbors:[[I

.field private mHorizontalPad:F

.field private mKeyboardHeight:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/pocketworkstation/pckeyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mLayoutColumns:I

.field public mLayoutRows:I

.field private mMetaKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/pocketworkstation/pckeyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field public mRowCount:I

.field private mShiftKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

.field private mShiftKeyIndex:I

.field private mShiftState:I

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private mUseExtension:Z

.field private mVerticalPad:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25cc

    .line 68
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->DEAD_KEY_PLACEHOLDER_STRING:Ljava/lang/String;

    const v0, 0x3fe66666    # 1.8f

    .line 169
    sput v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 813
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 817
    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/Keyboard;-><init>(Landroid/content/Context;IIIF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIF)V
    .locals 5

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftState:I

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftKeyIndex:I

    const/4 v1, 0x1

    .line 160
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mRowCount:I

    .line 161
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mExtensionRowCount:I

    .line 829
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 830
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayWidth:I

    .line 831
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayHeight:I

    const-string v2, "Keyboard"

    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyboard\'s display metrics:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayWidth="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayWidth:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 834
    iput v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHorizontalGap:F

    .line 835
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultWidth:F

    .line 836
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultVerticalGap:I

    .line 837
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHeight:I

    .line 838
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayHeight:I

    int-to-float p2, p2

    mul-float p2, p2, p5

    const/high16 p5, 0x42c80000    # 100.0f

    div-float/2addr p2, p5

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeyboardHeight:I

    .line 840
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 841
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 842
    iput p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeyboardMode:I

    .line 843
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean p2, p2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->useExtension:Z

    iput-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mUseExtension:Z

    .line 844
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 845
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->setEdgeFlags()V

    .line 846
    sget-object p1, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->inputLocale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->fixAltChars(Ljava/util/Locale;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IILjava/lang/CharSequence;ZII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p6

    .line 865
    invoke-direct/range {p0 .. p3}, Lorg/pocketworkstation/pckeyboard/Keyboard;-><init>(Landroid/content/Context;II)V

    const/4 v3, 0x0

    .line 869
    iput v3, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    .line 871
    new-instance v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;

    invoke-direct {v4, v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;-><init>(Lorg/pocketworkstation/pckeyboard/Keyboard;)V

    .line 872
    iget v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHeight:I

    iput v5, v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultHeight:I

    .line 873
    iget v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultWidth:F

    iput v5, v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultWidth:F

    .line 874
    iget v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHorizontalGap:F

    iput v5, v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultHorizontalGap:F

    .line 875
    iget v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultVerticalGap:I

    iput v5, v4, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->verticalGap:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    const v6, 0x7fffffff

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    const/4 v7, 0x1

    .line 877
    iput v7, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    if-eqz p5, :cond_1

    .line 878
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v7

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz p5, :cond_2

    const/4 v9, -0x1

    goto :goto_2

    .line 879
    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    :goto_2
    if-eqz p5, :cond_3

    const/4 v1, -0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    if-eq v8, v9, :cond_7

    move-object/from16 v13, p4

    .line 882
    invoke-interface {v13, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ge v10, v6, :cond_4

    int-to-float v15, v12

    .line 883
    iget v3, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultWidth:F

    add-float/2addr v15, v3

    move/from16 v3, p7

    int-to-float v5, v3

    add-float/2addr v15, v5

    iget v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayWidth:I

    int-to-float v5, v5

    cmpl-float v5, v15, v5

    if-lez v5, :cond_5

    goto :goto_5

    :cond_4
    move/from16 v3, p7

    .line 886
    :goto_5
    iget v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultVerticalGap:I

    iget v10, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHeight:I

    add-int/2addr v5, v10

    add-int/2addr v11, v5

    .line 888
    iget v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    add-int/2addr v5, v7

    iput v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 890
    :cond_5
    new-instance v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    invoke-direct {v5, v4}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;-><init>(Lorg/pocketworkstation/pckeyboard/Keyboard$Row;)V

    .line 891
    iput v12, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    int-to-float v15, v12

    .line 892
    invoke-static {v5, v15}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->access$1002(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;F)F

    .line 893
    iput v11, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    .line 894
    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 895
    iget-object v14, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v14}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getFromString(Ljava/lang/CharSequence;)[I

    move-result-object v14

    iput-object v14, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    add-int/2addr v10, v7

    .line 897
    iget v14, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget v15, v5, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->gap:I

    add-int/2addr v14, v15

    add-int/2addr v12, v14

    .line 898
    iget-object v14, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    iget v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    if-le v12, v5, :cond_6

    .line 900
    iput v12, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    :cond_6
    add-int/2addr v8, v1

    const/4 v3, 0x0

    const/4 v5, -0x1

    goto :goto_4

    .line 903
    :cond_7
    iget v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHeight:I

    add-int/2addr v11, v1

    iput v11, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalHeight:I

    const/4 v1, -0x1

    if-ne v2, v1, :cond_8

    goto :goto_6

    :cond_8
    move v10, v6

    .line 904
    :goto_6
    iput v10, v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutColumns:I

    .line 905
    invoke-direct/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->setEdgeFlags()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;IILjava/lang/CharSequence;ZIILorg/pocketworkstation/pckeyboard/Keyboard$1;)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p7}, Lorg/pocketworkstation/pckeyboard/Keyboard;-><init>(Landroid/content/Context;IILjava/lang/CharSequence;ZII)V

    return-void
.end method

.method static synthetic access$000(Lorg/pocketworkstation/pckeyboard/Keyboard;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayWidth:I

    return p0
.end method

.method static synthetic access$100(Lorg/pocketworkstation/pckeyboard/Keyboard;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultWidth:F

    return p0
.end method

.method static synthetic access$200(Lorg/pocketworkstation/pckeyboard/Keyboard;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayHeight:I

    return p0
.end method

.method static synthetic access$300(Lorg/pocketworkstation/pckeyboard/Keyboard;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHeight:I

    return p0
.end method

.method static synthetic access$400(Lorg/pocketworkstation/pckeyboard/Keyboard;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHorizontalGap:F

    return p0
.end method

.method static synthetic access$500(Lorg/pocketworkstation/pckeyboard/Keyboard;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultVerticalGap:I

    return p0
.end method

.method static synthetic access$700(Lorg/pocketworkstation/pckeyboard/Keyboard;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mVerticalPad:F

    return p0
.end method

.method static synthetic access$800(Lorg/pocketworkstation/pckeyboard/Keyboard;)F
    .locals 0

    .line 63
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mHorizontalPad:F

    return p0
.end method

.method private computeNearestNeighbors()V
    .locals 13

    .line 1101
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getMinWidth()I

    move-result v0

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutColumns:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutColumns:I

    div-int/2addr v0, v2

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellWidth:I

    .line 1102
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getHeight()I

    move-result v0

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    div-int/2addr v0, v2

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellHeight:I

    .line 1103
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutColumns:I

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    mul-int v0, v0, v2

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mGridNeighbors:[[I

    .line 1104
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1105
    iget v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutColumns:I

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellWidth:I

    mul-int v2, v2, v3

    .line 1106
    iget v3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    iget v4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellHeight:I

    mul-int v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_4

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1110
    :goto_2
    iget-object v9, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_3

    .line 1111
    iget-object v9, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 1112
    iget-object v10, v9, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-eqz v10, :cond_0

    iget-object v10, v9, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    array-length v10, v10

    if-lez v10, :cond_0

    iget-object v10, v9, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v10, v10, v4

    const/16 v11, 0x20

    if-ne v10, v11, :cond_0

    const/4 v10, 0x1

    goto :goto_3

    :cond_0
    const/4 v10, 0x0

    .line 1114
    :goto_3
    invoke-virtual {v9, v5, v6}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v11

    iget v12, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mProximityThreshold:I

    if-lt v11, v12, :cond_1

    iget v11, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellWidth:I

    add-int/2addr v11, v5

    sub-int/2addr v11, v1

    .line 1115
    invoke-virtual {v9, v11, v6}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v11

    iget v12, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mProximityThreshold:I

    if-lt v11, v12, :cond_1

    iget v11, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellWidth:I

    add-int/2addr v11, v5

    sub-int/2addr v11, v1

    iget v12, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellHeight:I

    add-int/2addr v12, v6

    sub-int/2addr v12, v1

    .line 1116
    invoke-virtual {v9, v11, v12}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v11

    iget v12, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mProximityThreshold:I

    if-lt v11, v12, :cond_1

    iget v11, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellHeight:I

    add-int/2addr v11, v6

    sub-int/2addr v11, v1

    .line 1118
    invoke-virtual {v9, v5, v11}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v11

    iget v12, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mProximityThreshold:I

    if-lt v11, v12, :cond_1

    if-eqz v10, :cond_2

    iget v10, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellWidth:I

    add-int/2addr v10, v5

    sub-int/2addr v10, v1

    iget v11, v9, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    if-lt v10, v11, :cond_2

    iget v10, v9, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v11, v9, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    add-int/2addr v10, v11

    if-gt v5, v10, :cond_2

    iget v10, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellHeight:I

    add-int/2addr v10, v6

    sub-int/2addr v10, v1

    iget v11, v9, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    if-lt v10, v11, :cond_2

    iget v10, v9, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget v9, v9, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    add-int/2addr v10, v9

    if-gt v6, v10, :cond_2

    :cond_1
    add-int/lit8 v9, v8, 0x1

    .line 1125
    aput v7, v0, v8

    move v8, v9

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1128
    :cond_3
    new-array v7, v8, [I

    .line 1129
    invoke-static {v0, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1130
    iget-object v8, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mGridNeighbors:[[I

    iget v9, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellHeight:I

    div-int v9, v6, v9

    iget v10, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutColumns:I

    mul-int v9, v9, v10

    iget v10, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellWidth:I

    div-int v10, v5, v10

    add-int/2addr v9, v10

    aput-object v7, v8, v9

    .line 1108
    iget v7, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellHeight:I

    add-int/2addr v6, v7

    goto/16 :goto_1

    .line 1107
    :cond_4
    iget v6, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellWidth:I

    add-int/2addr v5, v6

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private fixAltChars(Ljava/util/Locale;)V
    .locals 9

    if-nez p1, :cond_0

    .line 945
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 946
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 947
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 951
    iget-object v4, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->modifier:Z

    if-nez v4, :cond_1

    iget-object v4, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 952
    iget-object v1, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 953
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 957
    :cond_2
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 958
    iget-object v4, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    goto :goto_1

    .line 959
    :cond_3
    iget-object v4, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 963
    :cond_4
    iget v5, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v6, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    div-int/lit8 v6, v6, 0x2

    if-lt v5, v6, :cond_5

    .line 964
    iput-boolean v3, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupReversed:Z

    .line 968
    :cond_5
    iget-object v5, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    iget-object v5, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v3, :cond_6

    iget-object v5, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_7

    .line 970
    iget-object v4, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 971
    iget-object v4, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 974
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_a

    .line 976
    iget-object v7, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 978
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4

    .line 981
    :cond_8
    iget v8, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_9

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_4

    .line 983
    :cond_9
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 987
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_b
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F
    .locals 3

    .line 1307
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    .line 1309
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1310
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 1311
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1314
    invoke-virtual {p0, p1, p2, p2, p3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p0

    return p0

    :cond_2
    return p3
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 1169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x0

    .line 1171
    iput v9, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mRowCount:I

    const/4 v10, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v14, v2

    move-object v15, v14

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    .line 1176
    :cond_0
    :goto_2
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_12

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    .line 1178
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Row"

    .line 1179
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1182
    invoke-virtual {v7, v8, v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lorg/pocketworkstation/pckeyboard/Keyboard$Row;

    move-result-object v14

    .line 1183
    iget v3, v14, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->mode:I

    if-eqz v3, :cond_1

    iget v3, v14, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->mode:I

    iget v4, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeyboardMode:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    .line 1184
    :goto_3
    iget-boolean v4, v14, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->extension:Z

    if-eqz v4, :cond_3

    .line 1185
    iget-boolean v4, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mUseExtension:Z

    if-eqz v4, :cond_2

    .line 1186
    iget v4, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mExtensionRowCount:I

    add-int/2addr v4, v6

    iput v4, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mExtensionRowCount:I

    goto :goto_4

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 1192
    invoke-direct {v7, v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    const-string v4, "Key"

    .line 1195
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1197
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v14

    move v5, v11

    const/16 v16, 0x1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/pocketworkstation/pckeyboard/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Lorg/pocketworkstation/pckeyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object v1

    .line 1198
    invoke-static {v1, v12}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->access$1002(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;F)F

    .line 1199
    iget-object v2, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-nez v2, :cond_7

    if-eqz v15, :cond_6

    .line 1202
    iget v2, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    iget v3, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    iput v2, v15, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    :cond_6
    move-object v2, v1

    :goto_5
    const/4 v1, 0x1

    goto :goto_2

    .line 1205
    :cond_7
    iget-object v2, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    iget-object v2, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v2, v2, v9

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 1208
    iget v2, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftKeyIndex:I

    if-ne v2, v3, :cond_8

    .line 1209
    iput-object v1, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 1210
    iget-object v2, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftKeyIndex:I

    .line 1212
    :cond_8
    iget-object v2, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1213
    :cond_9
    iget-object v2, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v2, v2, v9

    const/4 v3, -0x6

    if-ne v2, v3, :cond_a

    .line 1214
    iget-object v2, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1215
    :cond_a
    iget-object v2, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v2, v2, v9

    const/16 v3, -0x71

    if-ne v2, v3, :cond_b

    .line 1216
    iput-object v1, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCtrlKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    goto :goto_6

    .line 1217
    :cond_b
    iget-object v2, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v2, v2, v9

    const/16 v3, -0x39

    if-ne v2, v3, :cond_c

    .line 1218
    iput-object v1, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mAltKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    goto :goto_6

    .line 1219
    :cond_c
    iget-object v2, v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v2, v2, v9

    const/16 v3, -0x75

    if-ne v2, v3, :cond_d

    .line 1220
    iput-object v1, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mMetaKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    :cond_d
    :goto_6
    move-object v2, v1

    move-object v15, v2

    goto :goto_5

    :cond_e
    const-string v4, "Keyboard"

    .line 1223
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1224
    invoke-direct {v7, v8, v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_2

    :cond_f
    const/16 v16, 0x1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_11

    .line 1229
    invoke-static {v2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->access$1100(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)F

    move-result v1

    invoke-static {v2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->access$1200(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)F

    move-result v3

    add-float/2addr v1, v3

    add-float/2addr v12, v1

    .line 1230
    iget v1, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    int-to-float v1, v1

    cmpl-float v1, v12, v1

    if-lez v1, :cond_10

    .line 1231
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_11
    if-eqz v13, :cond_0

    .line 1235
    iget v3, v14, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->verticalGap:I

    add-int/2addr v11, v3

    .line 1236
    iget v3, v14, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultHeight:I

    add-int/2addr v11, v3

    .line 1237
    iget v3, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mRowCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mRowCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Keyboard"

    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1247
    :cond_12
    iget v0, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultVerticalGap:I

    sub-int/2addr v11, v0

    iput v11, v7, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalHeight:I

    return-void
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    .line 1274
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lorg/pocketworkstation/pckeyboard/R$styleable;->Keyboard:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1277
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayWidth:I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayWidth:I

    const/16 v2, 0xa

    div-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v3, 0x3

    invoke-static {p2, v3, v0, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultWidth:F

    .line 1280
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayHeight:I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHeight:I

    int-to-float v1, v1

    const/4 v3, 0x2

    invoke-static {p2, v3, v0, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHeight:I

    .line 1283
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayWidth:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHorizontalGap:F

    .line 1286
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayHeight:I

    const/4 v3, 0x6

    invoke-static {p2, v3, v0, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultVerticalGap:I

    .line 1289
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayWidth:I

    const v1, 0x7f06005f

    .line 1291
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v3, 0x1

    .line 1289
    invoke-static {p2, v3, v0, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mHorizontalPad:F

    .line 1292
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayHeight:I

    const v1, 0x7f060066

    .line 1294
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v1, 0x7

    .line 1292
    invoke-static {p2, v1, v0, p1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mVerticalPad:F

    const/4 p1, 0x4

    const/4 v0, 0x5

    .line 1295
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    .line 1296
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutColumns:I

    .line 1297
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHeight:I

    if-nez p1, :cond_0

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeyboardHeight:I

    if-lez p1, :cond_0

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    if-lez p1, :cond_0

    .line 1298
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeyboardHeight:I

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    div-int/2addr p1, v0

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHeight:I

    .line 1301
    :cond_0
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultWidth:F

    sget v0, Lorg/pocketworkstation/pckeyboard/Keyboard;->SEARCH_DISTANCE:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mProximityThreshold:I

    .line 1302
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mProximityThreshold:I

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mProximityThreshold:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mProximityThreshold:I

    .line 1303
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setEdgeFlags()V
    .locals 9

    .line 909
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mRowCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mRowCount:I

    :cond_0
    const/4 v0, 0x0

    .line 913
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz v0, :cond_2

    .line 915
    iget v7, v6, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v8, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    if-gt v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 920
    iget v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    :cond_3
    if-nez v4, :cond_4

    const/4 v0, 0x4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 926
    :goto_2
    iget v5, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mRowCount:I

    sub-int/2addr v5, v1

    if-ne v4, v5, :cond_5

    or-int/lit8 v0, v0, 0x8

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v5

    .line 932
    iput v0, v6, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    move-object v0, v6

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 936
    iget v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    :cond_7
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1265
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1267
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lorg/pocketworkstation/pckeyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;
    .locals 7

    .line 1159
    new-instance v6, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;-><init>(Landroid/content/res/Resources;Lorg/pocketworkstation/pckeyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v6
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lorg/pocketworkstation/pckeyboard/Keyboard$Row;
    .locals 1

    .line 1154
    new-instance v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;-><init>(Landroid/content/res/Resources;Lorg/pocketworkstation/pckeyboard/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1036
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .line 1000
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHorizontalGap:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .line 1016
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .line 1024
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultWidth:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/pocketworkstation/pckeyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 992
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1044
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/pocketworkstation/pckeyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 1

    .line 1143
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mGridNeighbors:[[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->computeNearestNeighbors()V

    :cond_0
    if-ltz p1, :cond_1

    .line 1144
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1145
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellHeight:I

    div-int/2addr p2, v0

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutColumns:I

    mul-int p2, p2, v0

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCellWidth:I

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    .line 1146
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutColumns:I

    mul-int p1, p1, v0

    if-ge p2, p1, :cond_1

    .line 1147
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mGridNeighbors:[[I

    aget-object p1, p1, p2

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 1150
    new-array p1, p1, [I

    return-object p1
.end method

.method public getScreenHeight()I
    .locals 1

    .line 1040
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method public getShiftKeyIndex()I
    .locals 1

    .line 1096
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftKeyIndex:I

    return v0
.end method

.method public getShiftState()I
    .locals 1

    .line 1092
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftState:I

    return v0
.end method

.method protected getVerticalGap()I
    .locals 1

    .line 1008
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShiftCaps()Z
    .locals 2

    .line 1080
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method public isShifted(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1085
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftState:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1087
    :cond_1
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftState:I

    if-eq p1, v1, :cond_2

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftState:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public setAltIndicator(Z)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;
    .locals 1

    .line 1070
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mAltKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mAltKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-boolean p1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->on:Z

    .line 1071
    :cond_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mAltKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    return-object p1
.end method

.method public setCtrlIndicator(Z)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;
    .locals 1

    .line 1065
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCtrlKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCtrlKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-boolean p1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->on:Z

    .line 1066
    :cond_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mCtrlKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    return-object p1
.end method

.method protected setHorizontalGap(I)V
    .locals 0

    int-to-float p1, p1

    .line 1004
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHorizontalGap:F

    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0

    .line 1020
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultHeight:I

    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0

    int-to-float p1, p1

    .line 1028
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultWidth:F

    return-void
.end method

.method public setKeyboardWidth(I)V
    .locals 4

    const-string v0, "Keyboard"

    .line 1251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyboardWidth newWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTotalWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_0

    return-void

    .line 1253
    :cond_0
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    if-gt v0, p1, :cond_1

    return-void

    :cond_1
    int-to-float v0, p1

    .line 1254
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDisplayWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const-string v1, "PCKeyboard"

    .line 1255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rescaling keyboard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    .line 1257
    invoke-static {v2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->access$1000(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)F

    move-result v3

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    goto :goto_0

    .line 1259
    :cond_2
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    return-void
.end method

.method public setMetaIndicator(Z)Lorg/pocketworkstation/pckeyboard/Keyboard$Key;
    .locals 1

    .line 1075
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mMetaKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mMetaKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    iput-boolean p1, v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->on:Z

    .line 1076
    :cond_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mMetaKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    return-object p1
.end method

.method public setShiftState(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 1060
    invoke-virtual {p0, p1, v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->setShiftState(IZ)Z

    move-result p1

    return p1
.end method

.method public setShiftState(IZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1049
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz p2, :cond_1

    .line 1050
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftKey:Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->on:Z

    .line 1052
    :cond_1
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftState:I

    if-eq p2, p1, :cond_2

    .line 1053
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mShiftState:I

    return v1

    :cond_2
    return v0
.end method

.method protected setVerticalGap(I)V
    .locals 0

    .line 1012
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mDefaultVerticalGap:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyboard("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mLayoutRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 1322
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rowCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mRowCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mKeyboardMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard;->mTotalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
