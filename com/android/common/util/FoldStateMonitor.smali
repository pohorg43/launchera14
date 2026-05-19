.class public final Lcom/android/common/util/FoldStateMonitor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/FoldStateMonitor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

.field private static final TAG:Ljava/lang/String; = "FoldStateMonitor"

.field private static mInstance:Lcom/android/common/util/FoldStateMonitor;


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field private final mDeviceStateManager$delegate:Lh4/f;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsFold:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/FoldStateMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/FoldStateMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/FoldStateMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/common/util/FoldStateMonitor$mDeviceStateManager$2;

    invoke-direct {v0, p0}, Lcom/android/common/util/FoldStateMonitor$mDeviceStateManager$2;-><init>(Lcom/android/common/util/FoldStateMonitor;)V

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/FoldStateMonitor;->mDeviceStateManager$delegate:Lh4/f;

    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v1, Lcom/android/common/a;

    invoke-direct {v1, p0}, Lcom/android/common/a;-><init>(Lcom/android/common/util/FoldStateMonitor;)V

    invoke-direct {v0, p1, v1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/common/util/FoldStateMonitor;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/FoldStateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/common/util/FoldStateMonitor;->mIsFold:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/common/util/FoldStateMonitor;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/FoldStateMonitor;->dispatchFoldChange$lambda$1(Lcom/android/common/util/FoldStateMonitor;Z)V

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/android/common/util/FoldStateMonitor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/FoldStateMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMInstance$cp()Lcom/android/common/util/FoldStateMonitor;
    .registers 1

    sget-object v0, Lcom/android/common/util/FoldStateMonitor;->mInstance:Lcom/android/common/util/FoldStateMonitor;

    return-object v0
.end method

.method public static final synthetic access$setMInstance$cp(Lcom/android/common/util/FoldStateMonitor;)V
    .registers 1

    sput-object p0, Lcom/android/common/util/FoldStateMonitor;->mInstance:Lcom/android/common/util/FoldStateMonitor;

    return-void
.end method

.method public static synthetic b(Lcom/android/common/util/FoldStateMonitor;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/FoldStateMonitor;->mDeviceStateCallback$lambda$0(Lcom/android/common/util/FoldStateMonitor;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final dispatchFoldChange(Z)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/common/util/q;

    invoke-direct {v1, p0, p1}, Lcom/android/common/util/q;-><init>(Lcom/android/common/util/FoldStateMonitor;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final dispatchFoldChange$lambda$1(Lcom/android/common/util/FoldStateMonitor;Z)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/common/util/FoldStateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    iget-boolean v2, p0, Lcom/android/common/util/FoldStateMonitor;->mIsFold:Z

    if-eq p1, v2, :cond_31

    const-string p1, "dispatchFoldChange interrupted. fold state changed before dispatch. mIsFold: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/common/util/FoldStateMonitor;->mIsFold:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FoldStateMonitor"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_c

    :cond_39
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object p0

    return-object p0
.end method

.method private final getMDeviceStateManager()Landroid/hardware/devicestate/DeviceStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/FoldStateMonitor;->mDeviceStateManager$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/devicestate/DeviceStateManager;

    return-object p0
.end method

.method private static final mDeviceStateCallback$lambda$0(Lcom/android/common/util/FoldStateMonitor;Ljava/lang/Boolean;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/common/util/FoldStateMonitor;->onFoldStateChange(Z)V

    return-void
.end method

.method private final onFoldStateChange(Z)V
    .registers 4

    const-string/jumbo v0, "onFoldStateChange isFold: "

    const-string v1, "FoldStateMonitor"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/common/util/FoldStateMonitor;->mIsFold:Z

    invoke-direct {p0, p1}, Lcom/android/common/util/FoldStateMonitor;->dispatchFoldChange(Z)V

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/common/util/FoldStateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget-object p0, p0, Lcom/android/common/util/FoldStateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/common/util/FoldStateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/common/util/FoldStateMonitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_10
    invoke-direct {p0}, Lcom/android/common/util/FoldStateMonitor;->getMDeviceStateManager()Landroid/hardware/devicestate/DeviceStateManager;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/common/util/FoldStateMonitor;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-virtual {v0, p0}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_1b
    return-void
.end method

.method public final init()V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroid/os/Handler;

    const-string v1, "FoldStateObserver"

    invoke-static {v1}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/common/util/FoldStateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/common/util/FoldStateMonitor;->getMDeviceStateManager()Landroid/hardware/devicestate/DeviceStateManager;

    move-result-object v1

    if-eqz v1, :cond_26

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/common/util/FoldStateMonitor;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-virtual {v1, v2, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_26
    return-void
.end method

.method public final isFold()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/common/util/FoldStateMonitor;->mIsFold:Z

    return p0
.end method

.method public final removeCallback(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object p0, p0, Lcom/android/common/util/FoldStateMonitor;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
