.class public Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;
.super Ljava/lang/Object;
.source "LatinIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/LatinIMEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCUtils"
.end annotation


# static fields
.field private static final GC_INTERVAL:J = 0x3e8L

.field public static final GC_TRY_COUNT:I = 0x2

.field public static final GC_TRY_LOOP_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GCUtils"

.field private static sInstance:Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;


# instance fields
.field private mGCTryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;

    invoke-direct {v0}, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->sInstance:Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->mGCTryCount:I

    return-void
.end method

.method public static getInstance()Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;
    .locals 1

    .line 52
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->sInstance:Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->mGCTryCount:I

    return-void
.end method

.method public tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 4

    .line 60
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->mGCTryCount:I

    if-nez p1, :cond_0

    .line 61
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 63
    :cond_0
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->mGCTryCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;->mGCTryCount:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    const-wide/16 v2, 0x3e8

    .line 67
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    const-string p1, "GCUtils"

    const-string p2, "Sleep was interrupted."

    .line 70
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
