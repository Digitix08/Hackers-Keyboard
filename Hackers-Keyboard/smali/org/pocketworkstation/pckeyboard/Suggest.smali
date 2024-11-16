.class public Lorg/pocketworkstation/pckeyboard/Suggest;
.super Ljava/lang/Object;
.source "Suggest.java"

# interfaces
.implements Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;


# static fields
.field public static final APPROX_MAX_WORD_LENGTH:I = 0x20

.field public static final BIGRAM_MULTIPLIER_MAX:D = 1.5

.field public static final BIGRAM_MULTIPLIER_MIN:D = 1.2

.field public static final CORRECTION_BASIC:I = 0x1

.field public static final CORRECTION_FULL:I = 0x2

.field public static final CORRECTION_FULL_BIGRAM:I = 0x3

.field public static final CORRECTION_NONE:I = 0x0

.field public static final DIC_AUTO:I = 0x3

.field public static final DIC_CONTACTS:I = 0x4

.field public static final DIC_MAIN:I = 0x1

.field public static final DIC_TYPE_LAST_ID:I = 0x4

.field public static final DIC_USER:I = 0x2

.field public static final DIC_USER_TYPED:I = 0x0

.field static final LARGE_DICTIONARY_THRESHOLD:I = 0x30d40

.field public static final MAXIMUM_BIGRAM_FREQUENCY:I = 0x7f

.field private static final PREF_MAX_BIGRAMS:I = 0x3c

.field private static TAG:Ljava/lang/String; = "PCKeyboard"


# instance fields
.field private mAutoDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

.field private mAutoTextEnabled:Z

.field private mBigramPriorities:[I

.field mBigramSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

.field private mCorrectionMode:I

.field private mHaveCorrection:Z

.field private mIsAllUpperCase:Z

.field private mIsFirstCharCapitalized:Z

.field private mLowerOriginalWord:Ljava/lang/String;

.field private mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

.field private mNextLettersFrequencies:[I

.field private mOriginalWord:Ljava/lang/CharSequence;

.field private mPrefMaxSuggestions:I

.field private mPriorities:[I

.field private mStringPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

.field private mUserDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 80
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    .line 86
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPriorities:[I

    const/16 v0, 0x3c

    .line 87
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramPriorities:[I

    const/16 v0, 0x500

    .line 94
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mNextLettersFrequencies:[I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 106
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    .line 122
    new-instance v1, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    invoke-direct {v1, p1, p2, v0}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/nio/ByteBuffer;I)V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    .line 123
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/Suggest;->initPool()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 80
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    .line 86
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPriorities:[I

    const/16 v0, 0x3c

    .line 87
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramPriorities:[I

    const/16 v0, 0x500

    .line 94
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mNextLettersFrequencies:[I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 106
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    .line 109
    new-instance v1, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    invoke-direct {v1, p1, p2, v0}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;-><init>(Landroid/content/Context;[II)V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    .line 110
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/Suggest;->hasMainDictionary()Z

    move-result p2

    if-nez p2, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 112
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/pocketworkstation/pckeyboard/PluginManager;->getDictionary(Landroid/content/Context;Ljava/lang/String;)Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->close()V

    .line 115
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    .line 118
    :cond_0
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/Suggest;->initPool()V

    return-void
.end method

.method private collectGarbage(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 518
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, p2, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 520
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 521
    instance-of v3, v2, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    .line 522
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    if-ne v0, p2, :cond_2

    const-string p2, "Suggest"

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String pool got too big: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private compareCaseInsensitive(Ljava/lang/String;[CII)Z
    .locals 4

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p4, :cond_2

    .line 393
    aget-char p4, p2, p3

    invoke-static {p4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, v0, :cond_1

    .line 395
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p3, p4

    aget-char v3, p2, v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 10

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 198
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-gt v0, v2, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 205
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->toLowerCase(C)C

    move-result v8

    .line 206
    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->toLowerCase(C)C

    move-result v9

    if-ne v8, v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v5, 0x1

    if-ge v9, v1, :cond_2

    .line 210
    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->toLowerCase(C)C

    move-result v9

    if-ne v8, v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 214
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x4

    if-gt v0, p2, :cond_5

    if-lt p1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    return v3

    .line 219
    :cond_5
    div-int/2addr v0, v2

    if-le p1, v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    return v3
.end method

.method private initPool()V
    .locals 3

    const/4 v0, 0x0

    .line 127
    :goto_0
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    if-ge v0, v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/Suggest;->getApproxMaxWordLength()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeDupes()V
    .locals 6

    .line 360
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 361
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 364
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 365
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    .line 368
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 369
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 370
    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/Suggest;->removeFromSuggestions(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v2, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private removeFromSuggestions(I)V
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 381
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private searchBigramSuggestion([CII)I
    .locals 6

    .line 489
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 491
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, p3, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_1

    .line 494
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int v5, p2, v3

    aget-char v5, p1, v5

    if-eq v4, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public addWord([CIIIILorg/pocketworkstation/pckeyboard/Dictionary$DataType;)Z
    .locals 9

    .line 410
    sget-object p5, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->BIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    if-ne p6, p5, :cond_0

    .line 411
    iget-object p5, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 412
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramPriorities:[I

    const/16 v1, 0x3c

    goto :goto_0

    .line 415
    :cond_0
    iget-object p5, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 416
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPriorities:[I

    .line 417
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    .line 423
    :goto_0
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    invoke-direct {p0, v2, p1, p2, p3}, Lorg/pocketworkstation/pckeyboard/Suggest;->compareCaseInsensitive(Ljava/lang/String;[CII)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 p6, 0x0

    goto :goto_2

    .line 426
    :cond_1
    sget-object v2, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->UNIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    if-ne p6, v2, :cond_2

    .line 428
    invoke-direct {p0, p1, p2, p3}, Lorg/pocketworkstation/pckeyboard/Suggest;->searchBigramSuggestion([CII)I

    move-result p6

    if-ltz p6, :cond_2

    .line 430
    sget-object v2, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->BIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    .line 432
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramPriorities:[I

    aget p6, v2, p6

    int-to-double v5, p6

    const-wide v7, 0x405fc00000000000L    # 127.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    const-wide v7, 0x3fd3333333333334L    # 0.30000000000000004

    mul-double v5, v5, v7

    const-wide v7, 0x3ff3333333333333L    # 1.2

    add-double/2addr v5, v7

    int-to-double v7, p4

    .line 441
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int p4, v5

    :cond_2
    add-int/lit8 p6, v1, -0x1

    .line 446
    aget p6, v0, p6

    if-lt p6, p4, :cond_3

    return v4

    :cond_3
    const/4 p6, 0x0

    :goto_1
    if-ge p6, v1, :cond_5

    .line 448
    aget v2, v0, p6

    if-lt v2, p4, :cond_5

    aget v2, v0, p6

    if-ne v2, p4, :cond_4

    .line 449
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p3, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-lt p6, v1, :cond_6

    return v4

    :cond_6
    add-int/lit8 v2, p6, 0x1

    sub-int v5, v1, p6

    sub-int/2addr v5, v4

    .line 459
    invoke-static {v0, p6, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    aput p4, v0, p6

    .line 462
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_7

    .line 463
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    sub-int/2addr p4, v4

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    new-instance p4, Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/Suggest;->getApproxMaxWordLength()I

    move-result v0

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 465
    :goto_3
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 466
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mIsAllUpperCase:Z

    if-eqz v0, :cond_8

    .line 467
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 468
    :cond_8
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mIsFirstCharCapitalized:Z

    if-eqz v0, :cond_9

    .line 469
    aget-char v0, p1, p2

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-le p3, v4, :cond_a

    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    .line 471
    invoke-virtual {p4, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 474
    :cond_9
    invoke-virtual {p4, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 476
    :cond_a
    :goto_4
    invoke-virtual {p5, p6, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 477
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_b

    .line 478
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 479
    instance-of p2, p1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_b

    .line 480
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return v4
.end method

.method public close()V
    .locals 1

    .line 534
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->close()V

    :cond_0
    return-void
.end method

.method public getApproxMaxWordLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getCorrectionMode()I
    .locals 1

    .line 138
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    return v0
.end method

.method public getNextLettersFrequencies()[I
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mNextLettersFrequencies:[I

    return-object v0
.end method

.method public getSuggestions(Landroid/view/View;Lorg/pocketworkstation/pckeyboard/WordComposer;ZLjava/lang/CharSequence;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lorg/pocketworkstation/pckeyboard/WordComposer;",
            "Z",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 p3, 0x0

    .line 233
    iput-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mHaveCorrection:Z

    .line 234
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->isFirstCharCapitalized()Z

    move-result v0

    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mIsFirstCharCapitalized:Z

    .line 235
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->isAllUpperCase()Z

    move-result v0

    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mIsAllUpperCase:Z

    .line 236
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 237
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPriorities:[I

    invoke-static {v0, p3}, Ljava/util/Arrays;->fill([II)V

    .line 238
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mNextLettersFrequencies:[I

    invoke-static {v0, p3}, Ljava/util/Arrays;->fill([II)V

    .line 241
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 242
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 247
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    .line 250
    :goto_0
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_a

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    if-ne v0, v3, :cond_a

    .line 253
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramPriorities:[I

    invoke-static {v0, p3}, Ljava/util/Arrays;->fill([II)V

    .line 254
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    const/16 v4, 0x3c

    invoke-direct {p0, v0, v4}, Lorg/pocketworkstation/pckeyboard/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 256
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 257
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    invoke-virtual {v4, v0}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p4, v0

    .line 261
    :cond_2
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mNextLettersFrequencies:[I

    invoke-virtual {v0, p2, p4, p0, v4}, Lorg/pocketworkstation/pckeyboard/Dictionary;->getBigrams(Lorg/pocketworkstation/pckeyboard/WordComposer;Ljava/lang/CharSequence;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V

    .line 265
    :cond_3
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mContactsDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mContactsDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mNextLettersFrequencies:[I

    invoke-virtual {v0, p2, p4, p0, v4}, Lorg/pocketworkstation/pckeyboard/Dictionary;->getBigrams(Lorg/pocketworkstation/pckeyboard/WordComposer;Ljava/lang/CharSequence;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V

    .line 269
    :cond_4
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    if-eqz v0, :cond_5

    .line 270
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mNextLettersFrequencies:[I

    invoke-virtual {v0, p2, p4, p0, v4}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->getBigrams(Lorg/pocketworkstation/pckeyboard/WordComposer;Ljava/lang/CharSequence;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V

    .line 273
    :cond_5
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    .line 274
    invoke-static {p4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 276
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_11

    .line 278
    iget-object v7, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, p4, :cond_6

    iget-object v7, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 279
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_9

    .line 280
    :cond_6
    iget-object v7, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 281
    iget-object v8, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    .line 282
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/Suggest;->getApproxMaxWordLength()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    :goto_2
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 285
    iget-object v8, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v8, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 287
    iget v6, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    if-le v9, v6, :cond_8

    goto :goto_3

    :cond_8
    move v6, v9

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 292
    :cond_a
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->size()I

    move-result p4

    if-le p4, v3, :cond_11

    .line 294
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    if-nez p4, :cond_b

    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mContactsDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    if-eqz p4, :cond_f

    .line 295
    :cond_b
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    if-eqz p4, :cond_c

    .line 296
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mNextLettersFrequencies:[I

    invoke-virtual {p4, p2, p0, v0}, Lorg/pocketworkstation/pckeyboard/Dictionary;->getWords(Lorg/pocketworkstation/pckeyboard/WordComposer;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V

    .line 298
    :cond_c
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mContactsDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    if-eqz p4, :cond_d

    .line 299
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mContactsDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mNextLettersFrequencies:[I

    invoke-virtual {p4, p2, p0, v0}, Lorg/pocketworkstation/pckeyboard/Dictionary;->getWords(Lorg/pocketworkstation/pckeyboard/WordComposer;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V

    .line 302
    :cond_d
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_f

    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    invoke-virtual {p0, p4}, Lorg/pocketworkstation/pckeyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_f

    iget p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    if-eq p4, v1, :cond_e

    iget p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    if-ne p4, v2, :cond_f

    .line 305
    :cond_e
    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mHaveCorrection:Z

    .line 308
    :cond_f
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mNextLettersFrequencies:[I

    invoke-virtual {p4, p2, p0, v0}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->getWords(Lorg/pocketworkstation/pckeyboard/WordComposer;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V

    .line 309
    iget p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    if-eq p4, v1, :cond_10

    iget p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    if-ne p4, v2, :cond_11

    :cond_10
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 310
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_11

    .line 311
    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mHaveCorrection:Z

    .line 314
    :cond_11
    :goto_3
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    if-eqz p4, :cond_12

    .line 315
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 319
    :cond_12
    invoke-virtual {p2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->size()I

    move-result p2

    if-le p2, v3, :cond_14

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v3, :cond_14

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    if-eq p2, v1, :cond_13

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    if-ne p2, v2, :cond_14

    .line 322
    :cond_13
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    invoke-direct {p0, p2, p4}, Lorg/pocketworkstation/pckeyboard/Suggest;->haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14

    .line 323
    iput-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mHaveCorrection:Z

    .line 326
    :cond_14
    iget-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mAutoTextEnabled:Z

    if-eqz p2, :cond_19

    const/4 p2, 0x6

    .line 330
    iget p4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    if-ne p4, v3, :cond_15

    const/4 p2, 0x0

    const/4 p4, 0x1

    goto :goto_4

    :cond_15
    const/4 p2, 0x0

    const/4 p4, 0x6

    .line 331
    :goto_4
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_19

    if-ge p2, p4, :cond_19

    .line 332
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p3, v1, p1}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    goto :goto_5

    :cond_16
    const/4 v1, 0x0

    .line 338
    :goto_5
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    add-int/lit8 v2, p2, 0x1

    .line 340
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_17

    iget v4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    if-eq v4, v3, :cond_17

    .line 341
    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    and-int/2addr v1, v2

    :cond_17
    if-eqz v1, :cond_18

    .line 344
    iput-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mHaveCorrection:Z

    .line 345
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_18
    add-int/2addr p2, v3

    goto :goto_4

    .line 351
    :cond_19
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/Suggest;->removeDupes()V

    .line 352
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    return-object p1
.end method

.method public hasMainDictionary()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->getSize()I

    move-result v0

    const v1, 0x30d40

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMinimalCorrection()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mHaveCorrection:Z

    return v0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 507
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mMainDict:Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    invoke-virtual {v1, p1}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    .line 511
    invoke-virtual {v1, p1}, Lorg/pocketworkstation/pckeyboard/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mAutoDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mAutoDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    .line 512
    invoke-virtual {v1, p1}, Lorg/pocketworkstation/pckeyboard/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mContactsDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mContactsDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    .line 513
    invoke-virtual {v1, p1}, Lorg/pocketworkstation/pckeyboard/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v0
.end method

.method public setAutoDictionary(Lorg/pocketworkstation/pckeyboard/Dictionary;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mAutoDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    return-void
.end method

.method public setAutoTextEnabled(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mAutoTextEnabled:Z

    return-void
.end method

.method public setContactsDictionary(Lorg/pocketworkstation/pckeyboard/Dictionary;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mContactsDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    return-void
.end method

.method public setCorrectionMode(I)V
    .locals 0

    .line 142
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mCorrectionMode:I

    return-void
.end method

.method public setMaxSuggestions(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    .line 186
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    .line 187
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPriorities:[I

    const/16 p1, 0x3c

    .line 188
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mBigramPriorities:[I

    .line 189
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    invoke-direct {p0, p1, v0}, Lorg/pocketworkstation/pckeyboard/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 190
    :goto_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mPrefMaxSuggestions:I

    if-ge p1, v0, :cond_0

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/Suggest;->getApproxMaxWordLength()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSuggestions must be between 1 and 100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserBigramDictionary(Lorg/pocketworkstation/pckeyboard/Dictionary;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mUserBigramDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    return-void
.end method

.method public setUserDictionary(Lorg/pocketworkstation/pckeyboard/Dictionary;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Suggest;->mUserDictionary:Lorg/pocketworkstation/pckeyboard/Dictionary;

    return-void
.end method
