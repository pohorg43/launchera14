.class public final Lcom/android/exceptionmonitor/LauncherExceptionMonitor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;
.implements Lcom/android/exceptionmonitor/BasePeriodDetector$PeriodStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherExceptionMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherExceptionMonitor.kt\ncom/android/exceptionmonitor/LauncherExceptionMonitor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,195:1\n1855#2,2:196\n1855#2,2:198\n1855#2,2:200\n1855#2,2:202\n1855#2,2:204\n1855#2,2:206\n*S KotlinDebug\n*F\n+ 1 LauncherExceptionMonitor.kt\ncom/android/exceptionmonitor/LauncherExceptionMonitor\n*L\n82#1:196,2\n90#1:198,2\n122#1:200,2\n126#1:202,2\n162#1:204,2\n167#1:206,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;

.field public static final ENTRANCE_FINISH_BINDING_ITEMS:I = 0x4

.field public static final ENTRANCE_LOADER_TASK_ENDED:I = 0x2

.field public static final ENTRANCE_PERIOD_DETECTION:I = 0x1

.field public static final ENTRANCE_QUICK_SEARCH_QUERY_RESULT:I = 0x8

.field public static final TAG:Ljava/lang/String; = "LauncherExceptionMonitor"

.field private static volatile sInstance:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mDetectHandler:Landroid/os/Handler;

.field private final mExceptionHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/exceptionmonitor/ILauncherExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLock:Ljava/lang/Object;

.field private final mPendingOnPauseEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingOnResumeEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->Companion:Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mExceptionHandlers:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnResumeEvents:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnPauseEvents:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->onPause$lambda$4$lambda$3(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;I)V

    return-void
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/exceptionmonitor/LauncherExceptionMonitor;
    .registers 1

    sget-object v0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->sInstance:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    return-object v0
.end method

.method public static final synthetic access$processAndDispatchNextDetectIfNeed(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->processAndDispatchNextDetectIfNeed(III)V

    return-void
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;)V
    .registers 1

    sput-object p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->sInstance:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    return-void
.end method

.method private final addExceptionHandler(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;)V
    .registers 3

    iget-object v0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mExceptionHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mExceptionHandlers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public static synthetic b(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->onResume$lambda$2$lambda$1(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;I)V

    return-void
.end method

.method private final dispatchAllPeriodDetects()V
    .registers 4

    iget-object v0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mExceptionHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v2}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->dispatchNextExceptionDetect(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;IZ)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method private final dispatchInitiativeDetect(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mExceptionHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->dispatchNextExceptionDetect(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;IZ)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method private final dispatchNextExceptionDetect(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;IZ)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {p1, p3}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->detectMessageType(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    invoke-interface {p1, p2}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->enabled(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1, p3}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->isDetectPeriodValid(Z)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-interface {p1, p3}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->detectMessageType(Z)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_3b

    if-eqz p3, :cond_36

    invoke-interface {p1}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->detectPeriodIntervalTime()J

    move-result-wide p1

    goto :goto_38

    :cond_36
    const-wide/16 p1, 0x0

    :goto_38
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3b
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/exceptionmonitor/LauncherExceptionMonitor;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->Companion:Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;

    invoke-virtual {v0, p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    move-result-object p0

    return-object p0
.end method

.method private static final onPause$lambda$4$lambda$3(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;I)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->dispatchInitiativeDetect(I)V

    return-void
.end method

.method private static final onResume$lambda$2$lambda$1(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;I)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->dispatchInitiativeDetect(I)V

    return-void
.end method

.method private final processAndDispatchNextDetectIfNeed(III)V
    .registers 9

    const/4 v0, 0x1

    if-ne p3, v0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mExceptionHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;

    invoke-interface {v3, v1}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->detectMessageType(Z)I

    move-result v4

    if-ne p1, v4, :cond_c

    invoke-direct {p0, v3, p2, v1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->processExceptionHandler(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;IZ)Z

    if-ne p3, v0, :cond_26

    invoke-direct {p0, v3, p2, v0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->dispatchNextExceptionDetect(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;IZ)V

    :cond_26
    return-void
.end method

.method private final processExceptionHandler(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;IZ)Z
    .registers 4

    invoke-interface {p1, p2}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->enabled(I)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-interface {p1, p0, p3}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->startDetectIfAvailable(Lcom/android/launcher/Launcher;Z)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private final removeExceptionHandlers()V
    .registers 3

    iget-object v0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mExceptionHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;

    invoke-interface {v1}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->clear()V

    goto :goto_6

    :cond_16
    iget-object p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mExceptionHandlers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .registers 4

    iget-object v0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mDetectHandler:Landroid/os/Handler;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mDetectHandler:Landroid/os/Handler;

    if-nez v1, :cond_18

    const-string v1, "exception-monitor"

    invoke-static {v1}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$getHandler$1$1;

    invoke-direct {v2, p0, v1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$getHandler$1$1;-><init>(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mDetectHandler:Landroid/os/Handler;
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1d
    :goto_1d
    iget-object p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mDetectHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final onBusEvent(Lcom/android/exceptionmonitor/LauncherExceptionEvent;)V
    .registers 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBusEvent entranceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->getMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pendingOnPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->getPendingOnPause()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherExceptionMonitor"

    invoke-static {v1, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->getPendingOnResume()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnResumeEvents:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->getMethod()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_40
    invoke-virtual {p1}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->getPendingOnPause()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnPauseEvents:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->getMethod()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_54
    invoke-virtual {p1}, Lcom/android/exceptionmonitor/LauncherExceptionEvent;->getMethod()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->dispatchInitiativeDetect(I)V

    :goto_5b
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LauncherExceptionMonitor"

    const-string/jumbo v1, "onCreate!"

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance p1, Lcom/android/exceptionmonitor/iconlost/IconLostDetector;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/android/exceptionmonitor/iconlost/IconLostDetector;-><init>(ILcom/android/exceptionmonitor/LauncherExceptionMonitor;)V

    invoke-direct {p0, p1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->addExceptionHandler(Lcom/android/exceptionmonitor/ILauncherExceptionHandler;)V

    invoke-direct {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->dispatchAllPeriodDetects()V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_17
    invoke-direct {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->removeExceptionHandlers()V

    iget-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnResumeEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnPauseEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 7

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnPauseEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2d

    :cond_14
    const-string/jumbo p1, "onPause pending size:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnPauseEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherExceptionMonitor"

    invoke-static {v0, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    iget-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnPauseEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_33
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v2, Lt/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lt/a;-><init>(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;II)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    :cond_55
    iget-object p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnPauseEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onPeriodStateChanged()V
    .registers 3

    const-string v0, "LauncherExceptionMonitor"

    const-string/jumbo v1, "onPeriodStateChanged!"

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->dispatchAllPeriodDetects()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 7

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnResumeEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2d

    const-string/jumbo p1, "onResume pending size:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnResumeEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherExceptionMonitor"

    invoke-static {v0, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    iget-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnResumeEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_33
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v2, Lt/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lt/a;-><init>(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;II)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    :cond_55
    iget-object p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mPendingOnResumeEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final resetDetectPeriodCountDaily()V
    .registers 2

    iget-object p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mExceptionHandlers:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;

    invoke-interface {v0}, Lcom/android/exceptionmonitor/ILauncherExceptionHandler;->resetPeriodCount()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->mContext:Landroid/content/Context;

    return-void
.end method
