.class public Lorg/pocketworkstation/pckeyboard/LatinIME$MyInputMethodImpl;
.super Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyInputMethodImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;


# direct methods
.method public constructor <init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$MyInputMethodImpl;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 3

    .line 716
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->attachToken(Landroid/os/IBinder;)V

    const-string v0, "PCKeyboardIME"

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$MyInputMethodImpl;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    iget-object v0, v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$MyInputMethodImpl;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    iput-object p1, v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method
