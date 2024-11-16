.class Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;
.super Ljava/lang/Object;
.source "LatinIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/LatinIMEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RingCharBuffer"
.end annotation


# static fields
.field static final BUFSIZE:I = 0x14

.field private static final INVALID_COORDINATE:I = -0x2

.field private static final PLACEHOLDER_DELIMITER_CHAR:C = '\ufffc'

.field private static sRingCharBuffer:Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;


# instance fields
.field private mCharBuf:[C

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mEnd:I

.field mLength:I

.field private mXBuf:[I

.field private mYBuf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;

    invoke-direct {v0}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnabled:Z

    .line 84
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    .line 85
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    const/16 v0, 0x14

    .line 86
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    .line 87
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mXBuf:[I

    .line 88
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mYBuf:[I

    return-void
.end method

.method public static getInstance()Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;
    .locals 1

    .line 93
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Z)Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;
    .locals 1

    .line 96
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;

    iput-object p0, v0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mContext:Landroid/content/Context;

    .line 97
    sget-object p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnabled:Z

    .line 98
    sget-object p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;

    return-object p0
.end method

.method private normalize(I)I
    .locals 0

    .line 101
    rem-int/lit8 p1, p1, 0x14

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x14

    :cond_0
    return p1
.end method


# virtual methods
.method public getLastChar()C
    .locals 3

    .line 124
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const v0, 0xfffc

    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method public getLastString()Ljava/lang/String;
    .locals 4

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 150
    :goto_0
    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    if-ge v1, v2, :cond_0

    .line 151
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-direct {p0, v3}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v3

    aget-char v2, v2, v3

    .line 152
    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mContext:Landroid/content/Context;

    check-cast v3, Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v3, v2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousX(CI)I
    .locals 2

    .line 131
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, p2

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 132
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_1

    .line 133
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    aget-char p2, p2, v0

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mXBuf:[I

    aget p1, p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public getPreviousY(CI)I
    .locals 2

    .line 140
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, p2

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 141
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_1

    .line 142
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    aget-char p2, p2, v0

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mYBuf:[I

    aget p1, p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public pop()C
    .locals 2

    .line 115
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const v0, 0xfffc

    return v0

    .line 118
    :cond_0
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    .line 119
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    .line 120
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aget-char v0, v0, v1

    return v0
.end method

.method public push(CII)V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aput-char p1, v0, v1

    .line 107
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mXBuf:[I

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aput p2, p1, v0

    .line 108
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mYBuf:[I

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aput p3, p1, p2

    .line 109
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    .line 110
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    const/16 p2, 0x14

    if-ge p1, p2, :cond_1

    .line 111
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    return-void
.end method
