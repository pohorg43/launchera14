.class public final Lcom/oplus/util/OplusLauncherAnimExecutor;
.super Lcom/android/launcher3/util/LooperExecutor;
.source ""


# instance fields
.field private final hasSetUx:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    const-string v0, "looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/oplus/util/OplusLauncherAnimExecutor;->hasSetUx:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p1, Lcom/android/launcher3/icons/cache/a;->c:Lcom/android/launcher3/icons/cache/a;

    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusLauncherAnimExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final _init_$lambda$0()V
    .registers 2

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/oplus/util/OplusLauncherAnimExecutor;->_init_$lambda$0()V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/util/OplusLauncherAnimExecutor;Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/util/OplusLauncherAnimExecutor;->execute$lambda$1(Lcom/oplus/util/OplusLauncherAnimExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final execute$lambda$1(Lcom/oplus/util/OplusLauncherAnimExecutor;Ljava/lang/Runnable;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/util/OplusLauncherAnimExecutor;->hasSetUx:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUxThreadValue(I)V

    :cond_1c
    if-eqz p1, :cond_21

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_21
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    new-instance v0, Lcom/oplus/splitscreen/e;

    invoke-direct {v0, p0, p1}, Lcom/oplus/splitscreen/e;-><init>(Lcom/oplus/util/OplusLauncherAnimExecutor;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
