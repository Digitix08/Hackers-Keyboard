.class public abstract Lorg/pocketworkstation/pckeyboard/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;,
        Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;
    }
.end annotation


# static fields
.field protected static final FULL_WORD_FREQ_MULTIPLIER:I = 0x2

.field protected static final INCLUDE_TYPED_WORD_IF_VALID:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getBigrams(Lorg/pocketworkstation/pckeyboard/WordComposer;Ljava/lang/CharSequence;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V
    .locals 0

    return-void
.end method

.method public abstract getWords(Lorg/pocketworkstation/pckeyboard/WordComposer;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V
.end method

.method public abstract isValidWord(Ljava/lang/CharSequence;)Z
.end method

.method protected same([CILjava/lang/CharSequence;)Z
    .locals 4

    .line 104
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 108
    aget-char v2, p1, v0

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
