.class Lorg/pocketworkstation/pckeyboard/LatinIME$3;
.super Landroid/content/BroadcastReceiver;
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

    .line 3224
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$3;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 3227
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIME$3;->this$0:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/LatinIME;->access$500(Lorg/pocketworkstation/pckeyboard/LatinIME;)V

    return-void
.end method
