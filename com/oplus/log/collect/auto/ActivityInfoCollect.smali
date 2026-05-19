.class public Lcom/oplus/log/collect/auto/ActivityInfoCollect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/collect/auto/IAutoCollect;
.implements Lcom/oplus/log/IBaseLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler;
    }
.end annotation


# static fields
.field public static final ACTIVITY_NAME:Ljava/lang/String; = "activity_name"

.field private static final ACTIVITY_TAG:Ljava/lang/String; = "activity_lifecycle"

.field private static final SCREENSHOT_TAG:Ljava/lang/String; = "screenshot"

.field private static final SESSION_TAG:Ljava/lang/String; = "session"

.field private static final TAKE_SCREENSHOT_MESSAGE:I = 0x7b

.field private static final WRITE_NET_MESSAGE:I = 0x7c

.field private static mAppender:Lcom/oplus/log/log/ICollectLog;

.field private static mSimpleLog:Lcom/oplus/log/log/SimpleLog;


# instance fields
.field private mActivityVisibleCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreActivityVisibleCountChange:Z


# direct methods
.method public constructor <init>(Lcom/oplus/log/log/ICollectLog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mActivityVisibleCount:I

    iput-boolean v0, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mIgnoreActivityVisibleCountChange:Z

    sput-object p1, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/log/SimpleLog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mActivityVisibleCount:I

    iput-boolean v0, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mIgnoreActivityVisibleCountChange:Z

    sput-object p1, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    sput-object p2, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/log/log/ICollectLog;
    .registers 1

    sget-object v0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/oplus/log/log/SimpleLog;
    .registers 1

    sget-object v0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    return-object v0
.end method

.method private isActivityConfigChanging(Landroid/app/Activity;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private updateActivityVisibleCount(ZZLandroid/content/Context;Ljava/lang/String;)V
    .registers 12

    sget-object p4, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    if-nez p4, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_49

    iget p1, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mActivityVisibleCount:I

    add-int/lit8 p4, p1, 0x1

    iput p4, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mActivityVisibleCount:I

    if-nez p1, :cond_76

    if-nez p2, :cond_76

    new-instance p1, Lcom/oplus/log/collect/LoggingEvent;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "session"

    const-string v2, "session start"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/log/collect/LoggingEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V

    sget-object p2, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-eqz p2, :cond_2b

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->getLogType()I

    move-result p4

    invoke-virtual {p2, p1, p4}, Lcom/oplus/log/log/SimpleLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    goto :goto_34

    :cond_2b
    sget-object p2, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->getLogType()I

    move-result p4

    invoke-interface {p2, p1, p4}, Lcom/oplus/log/log/ICollectLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    :goto_34
    iget-object p1, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_41

    new-instance p1, Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler;

    check-cast p3, Landroid/app/Activity;

    invoke-direct {p1, p3}, Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mHandler:Landroid/os/Handler;

    :cond_41
    iget-object p0, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x7c

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_76

    :cond_49
    iget p1, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mActivityVisibleCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mActivityVisibleCount:I

    if-eqz p1, :cond_53

    if-eqz p2, :cond_76

    :cond_53
    new-instance p1, Lcom/oplus/log/collect/LoggingEvent;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "session"

    const-string v2, "session end"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/log/collect/LoggingEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V

    sget-object p2, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-eqz p2, :cond_6d

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->getLogType()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/oplus/log/log/SimpleLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    goto :goto_76

    :cond_6d
    sget-object p2, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->getLogType()I

    move-result p0

    invoke-interface {p2, p1, p0}, Lcom/oplus/log/log/ICollectLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    :cond_76
    :goto_76
    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public getLogType()I
    .registers 1

    const/16 p0, 0x68

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public onActivityStart(Landroid/content/Context;)V
    .registers 10

    sget-object v0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    if-nez v0, :cond_5

    return-void

    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mIgnoreActivityVisibleCountChange:Z

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->updateActivityVisibleCount(ZZLandroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mIgnoreActivityVisibleCountChange:Z

    new-instance p1, Lcom/oplus/log/collect/LoggingEvent;

    const-string v1, " start "

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "activity_lifecycle"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/oplus/log/collect/LoggingEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V

    sget-object v0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->getLogType()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/oplus/log/log/SimpleLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    goto :goto_40

    :cond_37
    sget-object v0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->getLogType()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/oplus/log/log/ICollectLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    :goto_40
    return-void
.end method

.method public onActivityStop(Landroid/content/Context;)V
    .registers 11

    sget-object v0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/oplus/log/collect/LoggingEvent;

    const-string v1, " stop "

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "activity_lifecycle"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/oplus/log/collect/LoggingEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V

    sget-object v0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->getLogType()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lcom/oplus/log/log/SimpleLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    goto :goto_36

    :cond_2d
    sget-object v0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->getLogType()I

    move-result v1

    invoke-interface {v0, v8, v1}, Lcom/oplus/log/log/ICollectLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    :goto_36
    invoke-direct {p0, p1}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->isActivityConfigChanging(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->mIgnoreActivityVisibleCountChange:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->updateActivityVisibleCount(ZZLandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
