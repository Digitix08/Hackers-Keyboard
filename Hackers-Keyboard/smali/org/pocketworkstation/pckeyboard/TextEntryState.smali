.class public Lorg/pocketworkstation/pckeyboard/TextEntryState;
.super Ljava/lang/Object;
.source "TextEntryState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/TextEntryState$State;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static LOGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "TextEntryState"

.field private static sActualChars:I

.field private static sAutoSuggestCount:I

.field private static sAutoSuggestUndoneCount:I

.field private static sBackspaceCount:I

.field private static sKeyLocationFile:Ljava/io/FileOutputStream;

.field private static sManualSuggestCount:I

.field private static sSessionCount:I

.field private static sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field private static sTypedChars:I

.field private static sUserActionFile:Ljava/io/FileOutputStream;

.field private static sWordNotInDictionaryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->UNKNOWN:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    sget v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sAutoSuggestCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sAutoSuggestCount:I

    .line 124
    :cond_1
    sget v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sTypedChars:I

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/2addr v0, p0

    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sTypedChars:I

    .line 125
    sget p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sActualChars:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p0, p1

    sput p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sActualChars:I

    .line 126
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 127
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->displayState()V

    return-void
.end method

.method public static acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 157
    sget v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sManualSuggestCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sManualSuggestCount:I

    .line 158
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 159
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->CORRECTING:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    if-eq v0, p0, :cond_2

    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PICKED_CORRECTION:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    if-ne v0, p0, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PICKED_SUGGESTION:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_1

    .line 163
    :cond_2
    :goto_0
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PICKED_CORRECTION:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 167
    :goto_1
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->displayState()V

    return-void
.end method

.method public static acceptedTyped(Ljava/lang/CharSequence;)V
    .locals 0

    .line 151
    sget p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sWordNotInDictionaryCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sWordNotInDictionaryCount:I

    .line 152
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PICKED_SUGGESTION:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 153
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->displayState()V

    return-void
.end method

.method public static backToAcceptedDefault(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 135
    :cond_0
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$1;->$SwitchMap$org$pocketworkstation$pckeyboard$TextEntryState$State:[I

    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 142
    :goto_0
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->displayState()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static backspace()V
    .locals 2

    .line 232
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    if-ne v0, v1, :cond_0

    .line 233
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->UNDO_COMMIT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 234
    sget v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sAutoSuggestUndoneCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sAutoSuggestUndoneCount:I

    goto :goto_0

    .line 235
    :cond_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->UNDO_COMMIT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    if-ne v0, v1, :cond_1

    .line 236
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->IN_WORD:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 238
    :cond_1
    :goto_0
    sget v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sBackspaceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sBackspaceCount:I

    .line 239
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->displayState()V

    return-void
.end method

.method private static displayState()V
    .locals 0

    return-void
.end method

.method public static endSession()V
    .locals 3

    .line 94
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    :try_start_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MM:dd hh:mm:ss"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sBackspaceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " auto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sAutoSuggestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " manual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sManualSuggestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " typed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sWordNotInDictionaryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " undone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sAutoSuggestUndoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " saved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sActualChars:I

    sget v2, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sTypedChars:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sActualChars:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 111
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    .line 112
    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    .line 113
    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getState()Lorg/pocketworkstation/pckeyboard/TextEntryState$State;
    .locals 1

    .line 251
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    return-object v0
.end method

.method public static isCorrecting()Z
    .locals 2

    .line 255
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->CORRECTING:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PICKED_CORRECTION:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

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

.method public static keyPressedAt(Lorg/pocketworkstation/pckeyboard/Keyboard$Key;II)V
    .locals 3

    .line 259
    sget-boolean v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->LOGGING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    aget v1, v2, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Y: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " MX: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->x:I

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->width:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " MY: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->y:I

    iget p0, p0, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->height:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 268
    :try_start_0
    sget-object p1, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static manualTyped(Ljava/lang/CharSequence;)V
    .locals 0

    .line 146
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->START:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 147
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->displayState()V

    return-void
.end method

.method public static newSession(Landroid/content/Context;)V
    .locals 3

    .line 73
    sget v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sSessionCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sSessionCount:I

    const/4 v0, 0x0

    .line 74
    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sAutoSuggestCount:I

    .line 75
    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sBackspaceCount:I

    .line 76
    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sAutoSuggestUndoneCount:I

    .line 77
    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sManualSuggestCount:I

    .line 78
    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sWordNotInDictionaryCount:I

    .line 79
    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sTypedChars:I

    .line 80
    sput v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sActualChars:I

    .line 81
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->START:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 83
    sget-boolean v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->LOGGING:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "key.txt"

    const v1, 0x8000

    .line 85
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    const-string v0, "action.txt"

    .line 86
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TextEntryState"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t open file for output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static reset()V
    .locals 1

    .line 243
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->START:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 244
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->displayState()V

    return-void
.end method

.method public static selectedForCorrection()V
    .locals 1

    .line 171
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->CORRECTING:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 172
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->displayState()V

    return-void
.end method

.method public static typedCharacter(CZ)V
    .locals 2

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 177
    :goto_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$1;->$SwitchMap$org$pocketworkstation$pckeyboard$TextEntryState$State:[I

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 225
    :pswitch_0
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->START:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_2

    :pswitch_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->IN_WORD:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_2

    .line 219
    :cond_2
    :goto_1
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_2

    :pswitch_2
    if-eqz p0, :cond_3

    .line 198
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->SPACE_AFTER_PICKED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 201
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_2

    .line 203
    :cond_4
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->IN_WORD:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_2

    :pswitch_3
    if-eqz p0, :cond_5

    .line 188
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->SPACE_AFTER_ACCEPTED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 190
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_2

    .line 192
    :cond_6
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->IN_WORD:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_2

    :pswitch_4
    if-nez p0, :cond_7

    if-eqz p1, :cond_9

    .line 180
    :cond_7
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->START:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_2

    :pswitch_5
    if-nez p0, :cond_8

    if-nez p1, :cond_8

    .line 212
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->IN_WORD:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    goto :goto_2

    .line 214
    :cond_8
    sget-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->START:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sput-object p0, Lorg/pocketworkstation/pckeyboard/TextEntryState;->sState:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 228
    :cond_9
    :goto_2
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/TextEntryState;->displayState()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
