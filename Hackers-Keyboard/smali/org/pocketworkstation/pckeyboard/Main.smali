.class public Lorg/pocketworkstation/pckeyboard/Main;
.super Landroid/app/Activity;
.source "Main.java"


# static fields
.field private static final MARKET_URI:Ljava/lang/String; = "market://search?q=pub:\"Klaus Weidner\""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a002c

    .line 42
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/Main;->setContentView(I)V

    const p1, 0x7f0c0114

    .line 43
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/Main;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<p><i>Version: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0c0049

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/Main;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</i></p>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    const v0, 0x7f08004c

    .line 46
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 48
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const p1, 0x7f08004f

    .line 51
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/Main;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 52
    new-instance v0, Lorg/pocketworkstation/pckeyboard/Main$1;

    invoke-direct {v0, p0}, Lorg/pocketworkstation/pckeyboard/Main$1;-><init>(Lorg/pocketworkstation/pckeyboard/Main;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080052

    .line 58
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/Main;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 59
    new-instance v0, Lorg/pocketworkstation/pckeyboard/Main$2;

    invoke-direct {v0, p0}, Lorg/pocketworkstation/pckeyboard/Main$2;-><init>(Lorg/pocketworkstation/pckeyboard/Main;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080051

    .line 68
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/Main;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 69
    new-instance v0, Lorg/pocketworkstation/pckeyboard/Main$3;

    invoke-direct {v0, p0, p0}, Lorg/pocketworkstation/pckeyboard/Main$3;-><init>(Lorg/pocketworkstation/pckeyboard/Main;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080050

    .line 75
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/Main;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 76
    new-instance v0, Lorg/pocketworkstation/pckeyboard/Main$4;

    invoke-direct {v0, p0}, Lorg/pocketworkstation/pckeyboard/Main$4;-><init>(Lorg/pocketworkstation/pckeyboard/Main;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080053

    .line 91
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/Main;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 92
    new-instance v0, Lorg/pocketworkstation/pckeyboard/Main$5;

    invoke-direct {v0, p0, p0}, Lorg/pocketworkstation/pckeyboard/Main$5;-><init>(Lorg/pocketworkstation/pckeyboard/Main;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
