.class public Lcom/android/statistics/BaseStatistics;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CLICK_FROM_ICON:Ljava/lang/String; = "0"

.field public static final CLICK_FROM_RECENT:Ljava/lang/String; = "1"

.field public static final CONTENT_SPLIT:Ljava/lang/String; = ","

.field public static final DAY_IN_MILLS:I = 0x5265c00

.field private static final DYNAMIC_STATS_TAG:Ljava/lang/String; = "201101"

.field public static final KEY_APPLICATION_NAME:Ljava/lang/String; = "application_name"

.field public static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field public static final KEY_CLICK_FROM:Ljava/lang/String; = "click_from"

.field public static final KEY_COMPONENT_POSE:Ljava/lang/String; = "component_pose"

.field private static final KEY_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_EVENT_TIME:Ljava/lang/String; = "event_time"

.field public static final KEY_LAUNCHER_STATE:Ljava/lang/String; = "launcher_state"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_PACKAGE_NAME_WRAP:Ljava/lang/String; = "{packageName:"

.field private static final KEY_REMARK:Ljava/lang/String; = "remark"

.field public static final KEY_WIDGET_TYPE:Ljava/lang/String; = "type"

.field public static final L_BRACKET:Ljava/lang/String; = "("

.field public static final MINUTE_IN_MILLS:I = 0xea60

.field public static final R_BRACKET:Ljava/lang/String; = ")"

.field public static final SECOND_IN_MILLS:I = 0x3e8

.field private static final STATIC_STATS_TAG:Ljava/lang/String; = "201102"

.field public static final TAG:Ljava/lang/String; = "LauncherStatistics"

.field public static final VALUE_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLauncher:Lcom/android/launcher/Launcher;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/statistics/BaseStatistics;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCurTimeStamp()Ljava/lang/String;
    .registers 4

    iget-object p0, p0, Lcom/android/statistics/BaseStatistics;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/statistics/BaseStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public onEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    const-string v1, "LauncherStatistics"

    if-nez v0, :cond_d

    const-string/jumbo p0, "onEvent. The mContext is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent. event:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " info:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_31

    const-string p3, "201101"

    goto :goto_33

    :cond_31
    const-string p3, "201102"

    :goto_33
    invoke-static {p0, p3, p1, p2}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method

.method public onEventBatch(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    const-string v1, "LauncherStatistics"

    if-nez v0, :cond_d

    const-string/jumbo p0, "onEventBatch. The mContext is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string/jumbo v2, "onEventBatch. event:"

    if-eqz v0, :cond_41

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",map = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_41
    const-string v0, ",info.size = "

    invoke-static {v2, p1, v0}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/statistics/BaseStatistics;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_5c

    const-string p3, "201101"

    goto :goto_5e

    :cond_5c
    const-string p3, "201102"

    :goto_5e
    const/4 v0, 0x1

    invoke-static {p0, p3, p1, p2, v0}, Lcom/oplus/statistics/OplusTrack;->onCommonBatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Z

    return-void
.end method

.method public onEventCount(Ljava/lang/String;IZZ)V
    .registers 6

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "count"

    invoke-virtual {p4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p4, p3}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 6

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "remark"

    invoke-virtual {p4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p4, p3}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public onOplusDcsPeriodUpload()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/statistics/BaseStatistics;->statsDaily()V

    return-void
.end method

.method public setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/statistics/BaseStatistics;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public statsDaily()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "statsDaily"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
