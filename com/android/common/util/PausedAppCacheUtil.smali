.class public final Lcom/android/common/util/PausedAppCacheUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPausedAppCacheUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PausedAppCacheUtil.kt\ncom/android/common/util/PausedAppCacheUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1#2:131\n1855#3,2:132\n1855#3,2:134\n*S KotlinDebug\n*F\n+ 1 PausedAppCacheUtil.kt\ncom/android/common/util/PausedAppCacheUtil\n*L\n69#1:132,2\n50#1:134,2\n*E\n"
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x3e8L

.field public static final INSTANCE:Lcom/android/common/util/PausedAppCacheUtil;

.field private static final TAG:Ljava/lang/String; = "PauseAppCacheUtil"

.field private static mReloadTimes:I

.field private static needPausedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/PausedAppCacheUtil;

    invoke-direct {v0}, Lcom/android/common/util/PausedAppCacheUtil;-><init>()V

    sput-object v0, Lcom/android/common/util/PausedAppCacheUtil;->INSTANCE:Lcom/android/common/util/PausedAppCacheUtil;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/common/util/PausedAppCacheUtil;->needPausedAppList:Ljava/util/List;

    const/4 v0, 0x2

    sput v0, Lcom/android/common/util/PausedAppCacheUtil;->mReloadTimes:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/PausedAppCacheUtil;->saveNeedPausedAppList$lambda$6()V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/PausedAppCacheUtil;->saveNeedPausedAppList$lambda$6$lambda$5(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/PausedAppCacheUtil;->needPauseImmediately$lambda$13(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/PausedAppCacheUtil;->saveNeedPausedAppList$lambda$6$lambda$3$lambda$2()V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Integer;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/PausedAppCacheUtil;->pauseLastStartingNewTask$lambda$18(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final needPauseImmediately(Landroid/content/Intent;Ljava/lang/Integer;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    :cond_e
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :cond_16
    :goto_16
    sget-object p0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroidx/core/content/res/d;

    invoke-direct {v1, v0, p1}, Landroidx/core/content/res/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final needPauseImmediately(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PausedAppCacheUtil;->needPausedAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    sget v0, Lcom/android/common/util/PausedAppCacheUtil;->mReloadTimes:I

    if-lez v0, :cond_15

    invoke-static {}, Lcom/android/common/util/PausedAppCacheUtil;->saveNeedPausedAppList()V

    sget v0, Lcom/android/common/util/PausedAppCacheUtil;->mReloadTimes:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/common/util/PausedAppCacheUtil;->mReloadTimes:I

    :cond_15
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "checked package name: "

    const-string/jumbo v1, "， needPausedAppList size: "

    invoke-static {v0, p0, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/PausedAppCacheUtil;->needPausedAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mReloadTimes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/common/util/PausedAppCacheUtil;->mReloadTimes:I

    const-string v2, "PauseAppCacheUtil"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_39
    sget-object v0, Lcom/android/common/util/PausedAppCacheUtil;->needPausedAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_45

    move v1, v2

    goto :goto_46

    :cond_45
    move v1, v3

    :goto_46
    if-eqz v1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    if-eqz v0, :cond_64

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {p0, v1, v3, v4}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-eqz v1, :cond_50

    return v2

    :cond_64
    return v3
.end method

.method private static final needPauseImmediately$lambda$13(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    const/4 v0, 0x0

    const-string v1, "PauseAppCacheUtil"

    if-eqz p0, :cond_59

    :try_start_5
    invoke-static {p0}, Lcom/android/common/util/PausedAppCacheUtil;->needPauseImmediately(Ljava/lang/String;)Z

    move-result v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_57
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_9} :catch_55

    const-string v3, "checkPauseAppList(): "

    if-eqz v2, :cond_3b

    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " check result:true"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getInstance()Landroid/app/OplusActivityTaskManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/OplusActivityTaskManager;->pauseInRecentsAnim(I)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    :cond_33
    if-nez v0, :cond_52

    const-string p0, "checkPauseAppList(): runningTaskId is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " check result:false"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    :goto_52
    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_59

    :catch_55
    move-exception p0

    goto :goto_61

    :catch_57
    move-exception p0

    goto :goto_6d

    :cond_59
    :goto_59
    if-nez v0, :cond_78

    const-string p0, "checkPauseAppList(): runningTaskPkg is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_60} :catch_57
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_60} :catch_55

    goto :goto_78

    :goto_61
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    :goto_6d
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    :goto_78
    return-void
.end method

.method public static final pauseLastStartingNewTask(Ljava/lang/Integer;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pauseLastStartingNewTask: lastStartingTaskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PauseAppCacheUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1a

    goto :goto_22

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    return-void

    :cond_22
    :goto_22
    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final pauseLastStartingNewTask$lambda$18(Ljava/lang/Integer;)V
    .registers 10

    const-string v0, "PauseAppCacheUtil"

    if-eqz p0, :cond_4e

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    const-string v1, "android.app.OplusActivityTaskManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "moveTaskToBack"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "cls.getDeclaredMethod(\"m…ype, Boolean::class.java)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastStartingTaskId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lh4/z;->a:Lh4/z;

    goto :goto_4f

    :catchall_4c
    move-exception v1

    goto :goto_5a

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    if-nez v1, :cond_57

    const-string/jumbo v1, "pauseLastStartingNewTask: runningTaskId is null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_59
    .catchall {:try_start_4 .. :try_end_59} :catchall_4c

    goto :goto_5e

    :goto_5a
    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_5e
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_79

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseLastStartingNewTask: pauseLastStartingNewTask failed. lastStartingTaskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    return-void
.end method

.method public static final saveNeedPausedAppList()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/android/common/util/t0;->a:Lcom/android/common/util/t0;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final saveNeedPausedAppList$lambda$6()V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getInstance()Landroid/app/OplusActivityTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getPauseInRecentsAnimPkgList()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "PauseAppCacheUtil"

    if-eqz v1, :cond_21

    const-string/jumbo v0, "saveNeedPausedAppList, e="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    :cond_21
    instance-of v1, v0, Lh4/k$a;

    if-eqz v1, :cond_26

    const/4 v0, 0x0

    :cond_26
    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3d

    const-string v0, "get need to be paused app list is null"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/u0;->a:Lcom/android/common/util/u0;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3d
    const-string/jumbo v1, "saveNeedPausedAppList, list size: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/common/util/s0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/common/util/s0;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final saveNeedPausedAppList$lambda$6$lambda$3$lambda$2()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/PausedAppCacheUtil;->saveNeedPausedAppList()V

    return-void
.end method

.method private static final saveNeedPausedAppList$lambda$6$lambda$5(Ljava/util/List;)V
    .registers 5

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/PausedAppCacheUtil;->needPausedAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Need Paused List:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/common/util/PausedAppCacheUtil;->needPausedAppList:Ljava/util/List;

    const-string/jumbo v3, "pakString"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PauseAppCacheUtil"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
