.class public Lcom/oplus/log/log/TraceLog;
.super Lcom/oplus/log/log/BaseSimpleLog;
.source ""


# static fields
.field private static final TRACE_TAG:Ljava/lang/String; = "trace_info"


# instance fields
.field private dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

.field private final mAppender:Lcom/oplus/log/appender/ILogAppender;

.field private monitor:Lcom/oplus/log/collect/ActivityLifeMonitor;


# direct methods
.method public constructor <init>(Lcom/oplus/log/appender/ILogAppender;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/collect/ActivityLifeMonitor;)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/log/log/BaseSimpleLog;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/log/TraceLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    iput-object p2, p0, Lcom/oplus/log/log/TraceLog;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    iput-object p3, p0, Lcom/oplus/log/log/TraceLog;->monitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    return-void
.end method

.method private log2File(Ljava/lang/String;Ljava/lang/String;B)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    :cond_d
    iget-object v0, p0, Lcom/oplus/log/log/TraceLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/oplus/log/log/TraceLog;->getLogType()I

    move-result p0

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/oplus/log/appender/ILogAppender;->append(Ljava/lang/String;Ljava/lang/String;BI)V

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8

    const-string p1, "trace_info"

    :cond_8
    iget-object p3, p0, Lcom/oplus/log/log/TraceLog;->monitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Lcom/oplus/log/collect/ActivityLifeMonitor;->isForeground()Z

    move-result p3

    if-nez p3, :cond_18

    const-string p3, "_back"

    invoke-static {p1, p3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_18
    iget-object p3, p0, Lcom/oplus/log/log/TraceLog;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {p3, p4}, Lcom/oplus/log/config/DynConfigManager;->isPrint(I)Z

    move-result p3

    if-eqz p3, :cond_23

    invoke-direct {p0, p1, p2, p4}, Lcom/oplus/log/log/TraceLog;->log2File(Ljava/lang/String;Ljava/lang/String;B)V

    :cond_23
    iget-object p0, p0, Lcom/oplus/log/log/TraceLog;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {p0, p4}, Lcom/oplus/log/config/DynConfigManager;->isShow(I)Z

    move-result p0

    if-eqz p0, :cond_4e

    const/4 p0, 0x1

    if-eq p4, p0, :cond_4b

    const/4 p0, 0x2

    if-eq p4, p0, :cond_47

    const/4 p0, 0x3

    if-eq p4, p0, :cond_43

    const/4 p0, 0x4

    if-eq p4, p0, :cond_3f

    const/4 p0, 0x5

    if-eq p4, p0, :cond_3b

    goto :goto_4e

    :cond_3b
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_3f
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_43
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_47
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_4b
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    :goto_4e
    return-void
.end method

.method public getLogType()I
    .registers 1

    const/16 p0, 0x69

    return p0
.end method
