.class Lorg/pocketworkstation/pckeyboard/LatinIME$1;
.super Landroid/os/Handler;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 342
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->access$200(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 344
    :cond_2
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$1;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->access$100(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    :goto_0
    return-void
.end method
