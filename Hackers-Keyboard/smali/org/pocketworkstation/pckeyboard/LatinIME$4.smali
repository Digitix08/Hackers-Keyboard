.class Lorg/pocketworkstation/pckeyboard/LatinIME$4;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/pocketworkstation/pckeyboard/LatinIME;->showOptionsMenu()V
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

    .line 3449
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$4;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3452
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 3455
    :pswitch_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$4;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->launchSettings()V

    goto :goto_0

    .line 3458
    :pswitch_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$4;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 3459
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
