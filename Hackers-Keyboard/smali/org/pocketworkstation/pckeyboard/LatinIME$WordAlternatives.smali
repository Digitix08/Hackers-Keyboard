.class public abstract Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;
.super Ljava/lang/Object;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WordAlternatives"
.end annotation


# instance fields
.field protected mChosenWord:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;->mChosenWord:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public abstract getAlternatives()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public getChosenWord()Ljava/lang/CharSequence;
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;->mChosenWord:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getOriginalWord()Ljava/lang/CharSequence;
.end method

.method public hashCode()I
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$WordAlternatives;->mChosenWord:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
