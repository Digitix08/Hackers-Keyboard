.class Lorg/pocketworkstation/pckeyboard/LatinIME$2;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/pocketworkstation/pckeyboard/LatinIME;->switchToKeyboardView()V
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

    .line 2465
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2467
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    iget-object v0, v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2469
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2470
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2471
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2473
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    iget-object v1, v1, Lorg/pocketworkstation/pckeyboard/LatinIME;->mKeyboardSwitcher:Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setInputView(Landroid/view/View;)V

    .line 2475
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->setCandidatesViewShown(Z)V

    .line 2476
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->updateInputViewShown()V

    .line 2477
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->access$300(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    return-void
.end method
