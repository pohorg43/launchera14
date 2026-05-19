.class public abstract Lcom/android/exceptionmonitor/BasePeriodDetector;
.super Lcom/android/exceptionmonitor/BaseDetector;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exceptionmonitor/BasePeriodDetector$PeriodStateChangedListener;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBasePeriodDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePeriodDetector.kt\ncom/android/exceptionmonitor/BasePeriodDetector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,177:1\n1#2:178\n1855#3,2:179\n1855#3,2:181\n*S KotlinDebug\n*F\n+ 1 BasePeriodDetector.kt\ncom/android/exceptionmonitor/BasePeriodDetector\n*L\n127#1:179,2\n160#1:181,2\n*E\n"
    }
.end annotation


# instance fields
.field private launcherExceptionMonitor:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

.field private volatile mPeriodCount:I

.field private volatile mPeriodIntervalTime:J

.field private volatile mPeriodMaxCount:I

.field private mPeriodStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/exceptionmonitor/BasePeriodDetector$PeriodStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;


# direct methods
.method public constructor <init>(ILcom/android/exceptionmonitor/LauncherExceptionMonitor;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/exceptionmonitor/BaseDetector;-><init>(I)V

    iput-object p2, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->launcherExceptionMonitor:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodStateChangedListeners:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->updateRusConfig()V

    new-instance p1, Lcom/android/exceptionmonitor/BasePeriodDetector$1;

    invoke-direct {p1, p0}, Lcom/android/exceptionmonitor/BasePeriodDetector$1;-><init>(Lcom/android/exceptionmonitor/BasePeriodDetector;)V

    iput-object p1, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

    sget-object p2, Lcom/android/common/rus/LauncherCommonConfigManager;->Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    invoke-virtual {p2}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/rusconfig/RusBaseConfigManager;->registerRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    iget-object p1, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->launcherExceptionMonitor:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    if-eqz p1, :cond_26

    invoke-direct {p0, p1}, Lcom/android/exceptionmonitor/BasePeriodDetector;->registerPeriodStateChangedListener(Lcom/android/exceptionmonitor/BasePeriodDetector$PeriodStateChangedListener;)V

    :cond_26
    return-void
.end method

.method public static final synthetic access$updateRusConfig(Lcom/android/exceptionmonitor/BasePeriodDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->updateRusConfig()V

    return-void
.end method

.method private final registerPeriodStateChangedListener(Lcom/android/exceptionmonitor/BasePeriodDetector$PeriodStateChangedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodStateChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private final declared-synchronized setPeriodIntervalTime(J)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodIntervalTime:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized setPeriodMaxCount(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodMaxCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final unregisterPeriodStateChangedListener(Lcom/android/exceptionmonitor/BasePeriodDetector$PeriodStateChangedListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodStateChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private final updateRusConfig()V
    .registers 11

    sget-object v0, Lcom/android/common/rus/LauncherCommonConfigManager;->Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    invoke-virtual {v0}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseConfigManager;->getChangedRusConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getConfigLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_fc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->getConfigListNameDetect()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_38
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;

    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->getConfigNameIntervalTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "LauncherExceptionHandler"

    if-eqz v4, :cond_a1

    :try_start_55
    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->detectPeriodIntervalTime()J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    if-nez v1, :cond_6a

    cmp-long v1, v7, v3

    if-eqz v1, :cond_68

    goto :goto_6a

    :cond_68
    move v1, v2

    goto :goto_6b

    :cond_6a
    :goto_6a
    move v1, v5

    :goto_6b
    invoke-direct {p0, v3, v4}, Lcom/android/exceptionmonitor/BasePeriodDetector;->setPeriodIntervalTime(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateRusConfig newPeriodIntervalTime:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", oldPeriodIntervalTime:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_8d
    .catchall {:try_start_55 .. :try_end_8d} :catchall_8e

    goto :goto_93

    :catchall_8e
    move-exception v3

    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_93
    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_9a

    goto :goto_38

    :cond_9a
    const-string/jumbo v4, "updateRusConfig periodIntervalTime e:"

    invoke-static {v4, v3, v6}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_38

    :cond_a1
    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->getConfigNameMaxCount()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    :try_start_af
    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->detectPeriodMaxCount()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v1, :cond_c2

    if-eq v4, v3, :cond_c0

    goto :goto_c2

    :cond_c0
    move v1, v2

    goto :goto_c3

    :cond_c2
    :goto_c2
    move v1, v5

    :goto_c3
    invoke-direct {p0, v3}, Lcom/android/exceptionmonitor/BasePeriodDetector;->setPeriodMaxCount(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRusConfig newPeriodMaxCount:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", oldPeriodMaxCount:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_e5
    .catchall {:try_start_af .. :try_end_e5} :catchall_e6

    goto :goto_eb

    :catchall_e6
    move-exception v3

    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_eb
    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_f3

    goto/16 :goto_38

    :cond_f3
    const-string/jumbo v4, "updateRusConfig periodMaxCount e:"

    invoke-static {v4, v3, v6}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_fb
    move v2, v1

    :cond_fc
    if-eqz v2, :cond_114

    iget-object p0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodStateChangedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_104
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_114

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exceptionmonitor/BasePeriodDetector$PeriodStateChangedListener;

    invoke-interface {v0}, Lcom/android/exceptionmonitor/BasePeriodDetector$PeriodStateChangedListener;->onPeriodStateChanged()V

    goto :goto_104

    :cond_114
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    invoke-super {p0}, Lcom/android/exceptionmonitor/BaseDetector;->clear()V

    iget-object v0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

    if-eqz v0, :cond_10

    sget-object v1, Lcom/android/common/rus/LauncherCommonConfigManager;->Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    invoke-virtual {v1}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/rusconfig/RusBaseConfigManager;->unregisterRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

    iget-object v1, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->launcherExceptionMonitor:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    if-eqz v1, :cond_1a

    invoke-direct {p0, v1}, Lcom/android/exceptionmonitor/BasePeriodDetector;->unregisterPeriodStateChangedListener(Lcom/android/exceptionmonitor/BasePeriodDetector$PeriodStateChangedListener;)V

    :cond_1a
    iput-object v0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->launcherExceptionMonitor:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    iget-object v0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodStateChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/exceptionmonitor/BasePeriodDetector;->setPeriodIntervalTime(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->setPeriodMaxCount(I)V

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->resetPeriodCount()V

    return-void
.end method

.method public declared-synchronized detectPeriodCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public detectPeriodIntervalTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodIntervalTime:J

    return-wide v0
.end method

.method public detectPeriodMaxCount()I
    .registers 1

    iget p0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodMaxCount:I

    return p0
.end method

.method public enabled(I)Z
    .registers 2

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-eqz p1, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public getConfigListNameDetect()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public getConfigNameIntervalTime()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public getConfigNameMaxCount()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public declared-synchronized increasePeriodCount()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDetectPeriodValid(Z)Z
    .registers 6

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->detectPeriodIntervalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->detectPeriodMaxCount()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_20

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->detectPeriodCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/BasePeriodDetector;->detectPeriodMaxCount()I

    move-result p0

    if-ge p1, p0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p0, 0x1

    :goto_21
    return p0
.end method

.method public declared-synchronized resetPeriodCount()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/exceptionmonitor/BasePeriodDetector;->mPeriodCount:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
