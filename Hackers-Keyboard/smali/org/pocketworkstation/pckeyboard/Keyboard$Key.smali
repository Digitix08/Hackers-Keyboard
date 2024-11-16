.class public Lorg/pocketworkstation/pckeyboard/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_LOCK:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_LOCK:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public altHint:Ljava/lang/String;

.field public capsLabel:Ljava/lang/CharSequence;

.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public hint:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field public isCursor:Z

.field private isDistinctUppercase:Z

.field private isSimpleUppercase:Z

.field private keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

.field public label:Ljava/lang/CharSequence;

.field public locked:Z

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public popupReversed:Z

.field public pressed:Z

.field private realGap:F

.field private realWidth:F

.field private realX:F

.field public repeatable:Z

.field public shiftLabel:Ljava/lang/CharSequence;

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 327
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    const/4 v1, 0x3

    .line 332
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 338
    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_NORMAL_LOCK:[I

    const/4 v1, 0x4

    .line 344
    new-array v1, v1, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_PRESSED_LOCK:[I

    const/4 v1, 0x1

    .line 351
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x101009f

    aput v4, v2, v3

    sput-object v2, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 355
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 360
    new-array v0, v3, [I

    sput-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 363
    new-array v0, v1, [I

    const v1, 0x10100a7

    aput v1, v0, v3

    sput-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_PRESSED:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101009f
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        0x101009f
        0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x10100a2
        0x101009f
        0x10100a0
    .end array-data

    :array_3
    .array-data 4
        0x10100a2
        0x10100a7
        0x101009f
        0x10100a0
    .end array-data

    :array_4
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lorg/pocketworkstation/pckeyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 5

    .line 387
    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;-><init>(Lorg/pocketworkstation/pckeyboard/Keyboard$Row;)V

    .line 389
    iput p3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    .line 390
    iput p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    .line 392
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object p4, Lorg/pocketworkstation/pckeyboard/R$styleable;->Keyboard:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 395
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    .line 397
    invoke-static {p4}, Lorg/pocketworkstation/pckeyboard/Keyboard;->access$000(Lorg/pocketworkstation/pckeyboard/Keyboard;)I

    move-result p4

    iget v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultWidth:F

    const/4 v1, 0x3

    .line 395
    invoke-static {p3, v1, p4, v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result p4

    iput p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realWidth:F

    .line 398
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    .line 400
    invoke-static {p4}, Lorg/pocketworkstation/pckeyboard/Keyboard;->access$200(Lorg/pocketworkstation/pckeyboard/Keyboard;)I

    move-result p4

    iget v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultHeight:I

    int-to-float v0, v0

    const/4 v2, 0x2

    .line 398
    invoke-static {p3, v2, p4, v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result p4

    .line 401
    invoke-static {p2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->access$600(Lorg/pocketworkstation/pckeyboard/Keyboard$Row;)Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->access$700(Lorg/pocketworkstation/pckeyboard/Keyboard;)F

    move-result v0

    sub-float/2addr p4, v0

    .line 402
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iput p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    .line 403
    iget p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    int-to-float p4, p4

    invoke-static {p2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->access$600(Lorg/pocketworkstation/pckeyboard/Keyboard$Row;)Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->access$700(Lorg/pocketworkstation/pckeyboard/Keyboard;)F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    .line 404
    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    .line 406
    invoke-static {p4}, Lorg/pocketworkstation/pckeyboard/Keyboard;->access$000(Lorg/pocketworkstation/pckeyboard/Keyboard;)I

    move-result p4

    iget v0, p2, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultHorizontalGap:F

    const/4 v4, 0x0

    .line 404
    invoke-static {p3, v4, p4, v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;IIF)F

    move-result p4

    iput p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realGap:F

    .line 407
    iget p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realGap:F

    invoke-static {p2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->access$600(Lorg/pocketworkstation/pckeyboard/Keyboard$Row;)Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->access$800(Lorg/pocketworkstation/pckeyboard/Keyboard;)F

    move-result v0

    add-float/2addr p4, v0

    iput p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realGap:F

    .line 408
    iget p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realWidth:F

    invoke-static {p2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->access$600(Lorg/pocketworkstation/pckeyboard/Keyboard$Row;)Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->access$800(Lorg/pocketworkstation/pckeyboard/Keyboard;)F

    move-result v0

    sub-float/2addr p4, v0

    iput p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realWidth:F

    .line 409
    iget p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realWidth:F

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iput p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    .line 410
    iget p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realGap:F

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iput p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->gap:I

    .line 411
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 412
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object p4, Lorg/pocketworkstation/pckeyboard/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 414
    iget p3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    int-to-float p3, p3

    iget p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realGap:F

    add-float/2addr p3, p4

    invoke-static {p2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->access$600(Lorg/pocketworkstation/pckeyboard/Keyboard$Row;)Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object p2

    invoke-static {p2}, Lorg/pocketworkstation/pckeyboard/Keyboard;->access$800(Lorg/pocketworkstation/pckeyboard/Keyboard;)F

    move-result p2

    div-float/2addr p2, v3

    sub-float/2addr p3, p2

    iput p3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realX:F

    .line 415
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realX:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    .line 416
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    const/4 p3, 0x1

    .line 417
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 419
    iget p4, p2, Landroid/util/TypedValue;->type:I

    const/16 p5, 0x10

    if-eq p4, p5, :cond_1

    iget p4, p2, Landroid/util/TypedValue;->type:I

    const/16 p5, 0x11

    if-ne p4, p5, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    iget p4, p2, Landroid/util/TypedValue;->type:I

    if-ne p4, v1, :cond_2

    .line 423
    iget-object p2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    goto :goto_1

    .line 421
    :cond_1
    :goto_0
    new-array p4, p3, [I

    iget p2, p2, Landroid/util/TypedValue;->data:I

    aput p2, p4, v4

    iput-object p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    .line 426
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 427
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    .line 428
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    iget-object p5, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 429
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    .line 428
    invoke-virtual {p2, v4, v4, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    const/16 p2, 0xc

    .line 431
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/16 p2, 0xd

    .line 433
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    const/4 p2, 0x5

    .line 435
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->repeatable:Z

    const/4 p2, 0x4

    .line 437
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->modifier:Z

    const/4 p2, 0x6

    .line 439
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->sticky:Z

    .line 441
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isCursor:Z

    const/16 p2, 0x8

    .line 444
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 446
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    .line 447
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    iget-object p5, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    invoke-virtual {p2, v4, v4, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    const/16 p2, 0x9

    .line 449
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/16 p2, 0xe

    .line 450
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    .line 451
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    const/4 p4, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_5

    iput-object p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    .line 452
    :cond_5
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->capsLabel:Ljava/lang/CharSequence;

    .line 453
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->capsLabel:Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->capsLabel:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_6

    iput-object p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->capsLabel:Ljava/lang/CharSequence;

    :cond_6
    const/16 p2, 0xa

    .line 454
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 456
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-nez p2, :cond_c

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 457
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getFromString(Ljava/lang/CharSequence;)[I

    move-result-object p2

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    .line 458
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    array-length p2, p2

    if-ne p2, p3, :cond_a

    .line 459
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-object p2, p2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->inputLocale:Ljava/util/Locale;

    .line 460
    iget-object p5, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 461
    iget-object p5, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    if-nez p5, :cond_7

    .line 463
    iget-object p5, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p5

    if-ne p5, p3, :cond_a

    .line 464
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    .line 465
    iput-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isSimpleUppercase:Z

    goto :goto_2

    .line 471
    :cond_7
    iget-object p5, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->capsLabel:Ljava/lang/CharSequence;

    if-eqz p5, :cond_8

    .line 472
    iput-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isDistinctUppercase:Z

    goto :goto_2

    .line 473
    :cond_8
    iget-object p5, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_9

    .line 474
    iput-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isSimpleUppercase:Z

    goto :goto_2

    .line 475
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p5

    if-ne p5, p3, :cond_a

    .line 476
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->capsLabel:Ljava/lang/CharSequence;

    .line 477
    iput-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isDistinctUppercase:Z

    .line 481
    :cond_a
    :goto_2
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget p2, p2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->popupKeyboardFlags:I

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_b

    .line 482
    iput-object p4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 483
    iput v4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    .line 485
    :cond_b
    sget-object p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget p2, p2, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->popupKeyboardFlags:I

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_c

    .line 487
    iput-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->repeatable:Z

    .line 491
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lorg/pocketworkstation/pckeyboard/Keyboard$Row;)V
    .locals 1

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->access$600(Lorg/pocketworkstation/pckeyboard/Keyboard$Row;)Lorg/pocketworkstation/pckeyboard/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    .line 370
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultHeight:I

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    .line 371
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultWidth:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    .line 372
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultWidth:F

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realWidth:F

    .line 373
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultHorizontalGap:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->gap:I

    .line 374
    iget p1, p1, Lorg/pocketworkstation/pckeyboard/Keyboard$Row;->defaultHorizontalGap:F

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realGap:F

    return-void
.end method

.method static synthetic access$1000(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)F
    .locals 0

    .line 259
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realX:F

    return p0
.end method

.method static synthetic access$1002(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;F)F
    .locals 0

    .line 259
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realX:F

    return p1
.end method

.method static synthetic access$1100(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)F
    .locals 0

    .line 259
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realGap:F

    return p0
.end method

.method static synthetic access$1200(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;)F
    .locals 0

    .line 259
    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->realWidth:F

    return p0
.end method

.method private getPopupKeyboardContent(ZZZ)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, v0, v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPrimaryCode(ZZ)I

    move-result v1

    const/4 v2, 0x1

    .line 557
    invoke-virtual {p0, v0, v2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPrimaryCode(ZZ)I

    move-result v3

    .line 558
    invoke-virtual {p0, v2, v2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPrimaryCode(ZZ)I

    move-result v4

    if-ne v3, v1, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-eq v4, v3, :cond_1

    if-ne v4, v1, :cond_2

    :cond_1
    const/4 v4, 0x0

    .line 564
    :cond_2
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 565
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_8

    .line 567
    iget-object v8, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v8, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-nez p2, :cond_4

    if-eqz p1, :cond_5

    .line 569
    :cond_4
    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-object v10, v10, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->inputLocale:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 570
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v2, :cond_5

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :cond_5
    if-eq v8, v1, :cond_7

    if-eq v8, v3, :cond_7

    if-ne v8, v4, :cond_6

    goto :goto_2

    .line 574
    :cond_6
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_15

    .line 578
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 579
    sget-object v5, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v5, v5, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->popupKeyboardFlags:I

    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_b

    .line 582
    iget-boolean v7, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isDistinctUppercase:Z

    if-eqz v7, :cond_9

    if-eqz p1, :cond_9

    if-lez v4, :cond_b

    int-to-char v4, v4

    .line 583
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    if-eqz p2, :cond_a

    if-lez v3, :cond_b

    int-to-char v3, v3

    .line 585
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_3

    :cond_a
    if-lez v1, :cond_b

    int-to-char v1, v1

    .line 587
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_b
    :goto_3
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_12

    .line 593
    iget-boolean v7, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isDistinctUppercase:Z

    if-eqz v7, :cond_d

    if-eqz p1, :cond_d

    if-lez v1, :cond_c

    int-to-char p1, v1

    .line 594
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_c
    if-lez v3, :cond_12

    int-to-char p1, v3

    .line 595
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_5

    :cond_d
    if-eqz p2, :cond_f

    if-lez v1, :cond_e

    int-to-char p1, v1

    .line 597
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_e
    if-lez v4, :cond_12

    int-to-char p1, v4

    .line 598
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    if-lez v3, :cond_10

    int-to-char p1, v3

    .line 600
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_10
    move v0, v3

    :goto_4
    if-lez v4, :cond_11

    int-to-char p1, v4

    .line 601
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    move v3, v0

    .line 605
    :cond_12
    :goto_5
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isSimpleUppercase:Z

    if-nez p1, :cond_14

    and-int/lit8 p1, v5, 0x1

    if-eqz p1, :cond_14

    if-eqz p2, :cond_13

    if-lez v1, :cond_14

    int-to-char p1, v1

    .line 608
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_13
    if-lez v3, :cond_14

    int-to-char p1, v3

    .line 610
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    :cond_14
    :goto_6
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 618
    :cond_15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static is7BitAscii(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x41

    if-lt p0, v1, :cond_0

    const/16 v1, 0x5a

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x61

    if-lt p0, v1, :cond_2

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/16 v1, 0x20

    if-lt p0, v1, :cond_3

    const/16 v1, 0x7f

    if-ge p0, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public getAltHintLabel(ZZ)Ljava/lang/String;
    .locals 3

    .line 657
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->altHint:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 658
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->altHint:Ljava/lang/String;

    const/4 v0, 0x0

    .line 659
    invoke-direct {p0, v0, v0, v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPopupKeyboardContent(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 661
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    .line 662
    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->is7BitAscii(C)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 663
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->altHint:Ljava/lang/String;

    .line 667
    :cond_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->altHint:Ljava/lang/String;

    return-object p1
.end method

.method public getCaseLabel()Ljava/lang/String;
    .locals 2

    .line 544
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isDistinctUppercase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->isShiftCaps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->capsLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 547
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isSimpleUppercase:Z

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->isShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 551
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentDrawableState()[I
    .locals 2

    .line 756
    sget-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 758
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->locked:Z

    if-eqz v1, :cond_1

    .line 759
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_0

    .line 760
    sget-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_PRESSED_LOCK:[I

    goto :goto_0

    .line 762
    :cond_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_NORMAL_LOCK:[I

    goto :goto_0

    .line 764
    :cond_1
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->on:Z

    if-eqz v1, :cond_3

    .line 765
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2

    .line 766
    sget-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_0

    .line 768
    :cond_2
    sget-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_0

    .line 771
    :cond_3
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_5

    .line 772
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_4

    .line 773
    sget-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_0

    .line 775
    :cond_4
    sget-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_0

    .line 778
    :cond_5
    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_6

    .line 779
    sget-object v0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->KEY_STATE_PRESSED:[I

    :cond_6
    :goto_0
    return-object v0
.end method

.method public getFromString(Ljava/lang/CharSequence;)[I
    .locals 4

    .line 530
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 531
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x25cc

    if-ne v0, v3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 532
    new-array v0, v1, [I

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    aput p1, v0, v2

    return-object v0

    .line 534
    :cond_0
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 535
    new-array p1, v1, [I

    aput v2, p1, v2

    return-object p1

    .line 538
    :cond_1
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 539
    new-array v0, v1, [I

    aput p1, v0, v2

    return-object v0
.end method

.method public getHintLabel(ZZ)Ljava/lang/String;
    .locals 2

    .line 644
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->hint:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 645
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->hint:Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isSimpleUppercase:Z

    if-nez v0, :cond_1

    .line 647
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    .line 648
    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->is7BitAscii(C)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 649
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->hint:Ljava/lang/String;

    .line 653
    :cond_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->hint:Ljava/lang/String;

    return-object p1
.end method

.method public getPopupKeyboard(Landroid/content/Context;I)Lorg/pocketworkstation/pckeyboard/Keyboard;
    .locals 13

    .line 622
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 623
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    if-eqz v0, :cond_0

    .line 624
    new-instance p2, Lorg/pocketworkstation/pckeyboard/Keyboard;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->access$300(Lorg/pocketworkstation/pckeyboard/Keyboard;)I

    move-result v0

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    invoke-direct {p2, p1, v0, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard;-><init>(Landroid/content/Context;II)V

    return-object p2

    .line 626
    :cond_0
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->modifier:Z

    if-eqz v0, :cond_1

    return-object v1

    .line 630
    :cond_1
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->popupKeyboardFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    return-object v1

    .line 632
    :cond_2
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->isShiftCaps()Z

    move-result v0

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    iget-boolean v3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isSimpleUppercase:Z

    invoke-virtual {v2, v3}, Lorg/pocketworkstation/pckeyboard/Keyboard;->isShifted(Z)Z

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPopupKeyboardContent(ZZZ)Ljava/lang/String;

    move-result-object v8

    .line 634
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 635
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    if-nez v0, :cond_3

    const v0, 0x7f0f000a

    const v7, 0x7f0f000a

    goto :goto_0

    :cond_3
    move v7, v0

    .line 637
    :goto_0
    new-instance v0, Lorg/pocketworkstation/pckeyboard/Keyboard;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-static {v1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->access$300(Lorg/pocketworkstation/pckeyboard/Keyboard;)I

    move-result v6

    iget-boolean v9, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupReversed:Z

    const/4 v10, -0x1

    const/4 v12, 0x0

    move-object v4, v0

    move-object v5, p1

    move v11, p2

    invoke-direct/range {v4 .. v12}, Lorg/pocketworkstation/pckeyboard/Keyboard;-><init>(Landroid/content/Context;IILjava/lang/CharSequence;ZIILorg/pocketworkstation/pckeyboard/Keyboard$1;)V

    return-object v0

    :cond_4
    return-object v1
.end method

.method public getPrimaryCode()I
    .locals 3

    .line 521
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->isShiftCaps()Z

    move-result v0

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    iget-boolean v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isSimpleUppercase:Z

    invoke-virtual {v1, v2}, Lorg/pocketworkstation/pckeyboard/Keyboard;->isShifted(Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPrimaryCode(ZZ)I

    move-result v0

    return v0
.end method

.method public getPrimaryCode(ZZ)I
    .locals 2

    .line 505
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isDistinctUppercase:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 506
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->capsLabel:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_2

    .line 509
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 510
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x25cc

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_1

    .line 511
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1

    .line 513
    :cond_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1

    .line 516
    :cond_2
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget p1, p1, v1

    return p1
.end method

.method public isDeadKey()Z
    .locals 4

    .line 525
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    array-length v0, v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public isDistinctCaps()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isDistinctUppercase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Keyboard;->isShiftCaps()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInside(II)Z
    .locals 7

    .line 724
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 725
    :goto_0
    iget v3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 726
    :goto_1
    iget v4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 727
    :goto_2
    iget v5, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 728
    :goto_3
    iget v6, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    if-ge p1, v6, :cond_4

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v6, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    add-int/2addr v0, v6

    if-gt p1, v0, :cond_7

    :cond_4
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v6, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    add-int/2addr v0, v6

    if-lt p1, v0, :cond_5

    if-eqz v3, :cond_7

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    if-lt p1, v0, :cond_7

    :cond_5
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    if-ge p2, p1, :cond_6

    if-eqz v4, :cond_7

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_7

    :cond_6
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    add-int/2addr p1, v0

    if-lt p2, p1, :cond_8

    if-eqz v5, :cond_7

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    if-lt p2, p1, :cond_7

    goto :goto_4

    :cond_7
    return v2

    :cond_8
    :goto_4
    return v1
.end method

.method public isShifted()Z
    .locals 2

    .line 499
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->keyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isSimpleUppercase:Z

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard;->isShifted(Z)Z

    move-result v0

    return v0
.end method

.method public onPressed()V
    .locals 1

    .line 681
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->pressed:Z

    return-void
.end method

.method public onReleased(Z)V
    .locals 0

    .line 690
    iget-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->pressed:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->pressed:Z

    return-void
.end method

.method parseCSV(Ljava/lang/String;)[I
    .locals 6

    .line 696
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    const-string v4, ","

    add-int/2addr v2, v0

    .line 698
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 702
    :cond_1
    new-array v0, v3, [I

    .line 704
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 707
    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v1, "Keyboard"

    .line 709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing keycodes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v1, v3

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public squaredDistanceFrom(II)I
    .locals 2

    .line 745
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 746
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    sub-int/2addr p1, p2

    mul-int v0, v0, v0

    mul-int p1, p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 787
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v1, v0, v1

    .line 788
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const-string v2, "L"

    goto :goto_0

    :cond_1
    const-string v2, "-"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const-string v2, "R"

    goto :goto_1

    :cond_2
    const-string v2, "-"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    const-string v2, "T"

    goto :goto_2

    :cond_3
    const-string v2, "-"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    const-string v2, "B"

    goto :goto_3

    :cond_4
    const-string v2, "-"

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyDebugFIXME(label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " shift="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->shiftLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    const-string v3, ""

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->capsLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " caps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->capsLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    const-string v3, ""

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_7
    const-string v3, ""

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v1, :cond_9

    .line 798
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    :goto_7
    const-string v1, ""

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " x="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " edgeFlags="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_a
    const-string v0, ""

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " res="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->popupResId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
