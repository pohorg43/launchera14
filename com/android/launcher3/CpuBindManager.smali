.class public Lcom/android/launcher3/CpuBindManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX_CLUSTER_NUMBER:I = 0x8

.field private static final MAX_CPU_NUMBER:I = 0x8

.field private static final TAG:Ljava/lang/String; = "CpuBindManager"

.field private static volatile sInstance:Lcom/android/launcher3/CpuBindManager;


# instance fields
.field public mCpuClusters:[I

.field private mCpuSet:Ljava/util/BitSet;

.field private mGetCpuClusters:Ljava/lang/reflect/Method;

.field private mGetRenderThreadTid:Ljava/lang/reflect/Method;

.field private mMaxCpuGear:I

.field private mOplusActivityTaskManager:Ljava/lang/Class;

.field private mProcess:Ljava/lang/Class;

.field private mRenderThreadTid:I

.field private mSetThreadAffinity:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/CpuBindManager;->mMaxCpuGear:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/CpuBindManager;->mRenderThreadTid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mProcess:Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mSetThreadAffinity:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mGetCpuClusters:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/CpuBindManager;->mCpuSet:Ljava/util/BitSet;

    iput-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mOplusActivityTaskManager:Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mGetRenderThreadTid:Ljava/lang/reflect/Method;

    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mCpuClusters:[I

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/CpuBindManager;
    .registers 2

    sget-object v0, Lcom/android/launcher3/CpuBindManager;->sInstance:Lcom/android/launcher3/CpuBindManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/CpuBindManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/CpuBindManager;->sInstance:Lcom/android/launcher3/CpuBindManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/CpuBindManager;

    invoke-direct {v1}, Lcom/android/launcher3/CpuBindManager;-><init>()V

    sput-object v1, Lcom/android/launcher3/CpuBindManager;->sInstance:Lcom/android/launcher3/CpuBindManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher3/CpuBindManager;->sInstance:Lcom/android/launcher3/CpuBindManager;

    return-object v0
.end method

.method private initCpuBindManager()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mCpuSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mProcess:Ljava/lang/Class;

    if-nez v0, :cond_58

    :try_start_9
    const-string v0, "android.os.Process"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mProcess:Ljava/lang/Class;

    const-string/jumbo v1, "setThreadAffinity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, [B

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mSetThreadAffinity:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mProcess:Ljava/lang/Class;

    const-string v1, "getCpuClusters"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, [I

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mGetCpuClusters:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/CpuBindManager;->mCpuClusters:[I

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_41
    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mCpuClusters:[I

    array-length v1, v0

    if-ge v4, v1, :cond_58

    aget v0, v0, v4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4e

    iput v4, p0, Lcom/android/launcher3/CpuBindManager;->mMaxCpuGear:I
    :try_end_4d
    .catchall {:try_start_9 .. :try_end_4d} :catchall_51

    goto :goto_58

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :catchall_51
    const-string p0, "CpuBindManager"

    const-string v0, "initCpuBindManager: init failed!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method public bindCpu(I)V
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/launcher3/CpuBindManager;->initCpuBindManager()V

    iget v0, p0, Lcom/android/launcher3/CpuBindManager;->mMaxCpuGear:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_80

    const/4 v0, -0x1

    if-eq p1, v0, :cond_80

    const-string v0, "CpuBindManager#bindCpu"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_82

    :try_start_13
    iget v0, p0, Lcom/android/launcher3/CpuBindManager;->mMaxCpuGear:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-le v0, v6, :cond_3f

    iget-object v7, p0, Lcom/android/launcher3/CpuBindManager;->mCpuSet:Ljava/util/BitSet;

    iget-object v8, p0, Lcom/android/launcher3/CpuBindManager;->mCpuClusters:[I

    add-int/lit8 v9, v0, -0x2

    aget v9, v8, v9

    sub-int/2addr v0, v1

    aget v0, v8, v0

    add-int/2addr v0, v1

    invoke-virtual {v7, v9, v0, v1}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mSetThreadAffinity:Ljava/lang/reflect/Method;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    iget-object p1, p0, Lcom/android/launcher3/CpuBindManager;->mCpuSet:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object p1

    aput-object p1, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    :cond_3f
    sget-boolean v7, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v7, :cond_4f

    iget-object v7, p0, Lcom/android/launcher3/CpuBindManager;->mCpuSet:Ljava/util/BitSet;

    iget-object v8, p0, Lcom/android/launcher3/CpuBindManager;->mCpuClusters:[I

    sub-int/2addr v0, v1

    aget v0, v8, v0

    const/16 v8, 0x8

    invoke-virtual {v7, v0, v8, v1}, Ljava/util/BitSet;->set(IIZ)V

    :cond_4f
    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mCpuSet:Ljava/util/BitSet;

    iget-object v7, p0, Lcom/android/launcher3/CpuBindManager;->mCpuClusters:[I

    iget v8, p0, Lcom/android/launcher3/CpuBindManager;->mMaxCpuGear:I

    add-int/lit8 v9, v8, -0x1

    aget v9, v7, v9

    sub-int/2addr v8, v1

    aget v7, v7, v8

    add-int/2addr v7, v1

    invoke-virtual {v0, v9, v7, v1}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mSetThreadAffinity:Ljava/lang/reflect/Method;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    iget-object p1, p0, Lcom/android/launcher3/CpuBindManager;->mCpuSet:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object p1

    aput-object p1, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catchall {:try_start_13 .. :try_end_75} :catchall_76

    goto :goto_7d

    :catchall_76
    :try_start_76
    const-string p1, "CpuBindManager"

    const-string v0, "bindCpu: bindCpu failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_80
    monitor-exit p0

    return-void

    :catchall_82
    move-exception p1

    monitor-exit p0
    :try_end_84
    .catchall {:try_start_76 .. :try_end_84} :catchall_82

    throw p1
.end method

.method public getRenderThreadTid()I
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mOplusActivityTaskManager:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_69

    if-nez v0, :cond_65

    :try_start_5
    const-string v0, "android.app.OplusActivityTaskManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mOplusActivityTaskManager:Ljava/lang/Class;

    const-string v1, "getRenderThreadTid"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mGetRenderThreadTid:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mOplusActivityTaskManager:Ljava/lang/Class;

    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CpuBindManager;->mGetRenderThreadTid:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CpuBindManager;->mRenderThreadTid:I

    const-string v0, "CpuBindManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRenderThreadTid: renderThreadTid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/CpuBindManager;->mRenderThreadTid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_5e

    goto :goto_65

    :catchall_5e
    :try_start_5e
    const-string v0, "CpuBindManager"

    const-string v1, "getRenderThreadTid: getRenderThreadTid failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    iget v0, p0, Lcom/android/launcher3/CpuBindManager;->mRenderThreadTid:I

    monitor-exit p0

    return v0

    :catchall_69
    move-exception v0

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_69

    throw v0
.end method

.method public unBindCpu(I)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/launcher3/CpuBindManager;->initCpuBindManager()V

    iget v0, p0, Lcom/android/launcher3/CpuBindManager;->mMaxCpuGear:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_52

    const-string v0, "CpuBindManager#unBindCpu"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_54

    :try_start_10
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mCpuSet:Ljava/util/BitSet;

    iget-object v5, p0, Lcom/android/launcher3/CpuBindManager;->mCpuClusters:[I

    aget v5, v5, v4

    const/16 v6, 0x8

    invoke-virtual {v0, v5, v6, v1}, Ljava/util/BitSet;->set(IIZ)V

    :cond_20
    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mCpuSet:Ljava/util/BitSet;

    iget-object v5, p0, Lcom/android/launcher3/CpuBindManager;->mCpuClusters:[I

    aget v6, v5, v4

    iget v7, p0, Lcom/android/launcher3/CpuBindManager;->mMaxCpuGear:I

    sub-int/2addr v7, v1

    aget v5, v5, v7

    add-int/2addr v5, v1

    invoke-virtual {v0, v6, v5, v1}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v0, p0, Lcom/android/launcher3/CpuBindManager;->mSetThreadAffinity:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    iget-object p1, p0, Lcom/android/launcher3/CpuBindManager;->mCpuSet:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object p1

    aput-object p1, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_47

    goto :goto_4f

    :catchall_47
    :try_start_47
    const-string p1, "CpuBindManager"

    const-string/jumbo v0, "unBindCpu: unBindCpu failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_52
    monitor-exit p0

    return-void

    :catchall_54
    move-exception p1

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_54

    throw p1
.end method
