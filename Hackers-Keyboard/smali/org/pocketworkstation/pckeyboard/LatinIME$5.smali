.class synthetic Lorg/pocketworkstation/pckeyboard/LatinIME$5;
.super Ljava/lang/Object;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$pocketworkstation$pckeyboard$TextEntryState$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 997
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->values()[Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME$5;->$SwitchMap$org$pocketworkstation$pckeyboard$TextEntryState$State:[I

    :try_start_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME$5;->$SwitchMap$org$pocketworkstation$pckeyboard$TextEntryState$State:[I

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME$5;->$SwitchMap$org$pocketworkstation$pckeyboard$TextEntryState$State:[I

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->SPACE_AFTER_PICKED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
