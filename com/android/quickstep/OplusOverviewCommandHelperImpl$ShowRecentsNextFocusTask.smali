.class final Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/OplusOverviewCommandHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShowRecentsNextFocusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field private final scheduleShowRecentsNextFocusTimeout:Ljava/lang/Runnable;

.field private final stateManager:Lcom/android/launcher3/statemanager/StateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "*>;)V"
        }
    .end annotation

    const-string/jumbo v0, "stateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->this$0:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->stateManager:Lcom/android/launcher3/statemanager/StateManager;

    new-instance p2, Lcom/android/quickstep/x0;

    invoke-direct {p2, p1}, Lcom/android/quickstep/x0;-><init>(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V

    iput-object p2, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->scheduleShowRecentsNextFocusTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->scheduleShowRecentsNextFocusTimeout$lambda$0(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->onStateTransitionComplete$lambda$1(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V

    return-void
.end method

.method private static final onStateTransitionComplete$lambda$1(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->access$doRecentsViewShowNextFocusInner(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V

    return-void
.end method

.method private static final scheduleShowRecentsNextFocusTimeout$lambda$0(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OplusOverviewCommandHelperImpl"

    const-string v1, "ShowRecentsNextFocusTask timeout!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->access$getCurrentShowRecentsNextFocusTask$p(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->unregisterListener()V

    :cond_16
    return-void
.end method


# virtual methods
.method public final getStateManager()Lcom/android/launcher3/statemanager/StateManager;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->stateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->unregisterListener()V

    iget-object p1, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->this$0:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    invoke-static {p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->access$getMainHandler$p(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->this$0:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    new-instance v0, Lcom/android/quickstep/y0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/y0;-><init>(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    const-string/jumbo p0, "toState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public final registerListener()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->this$0:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    invoke-static {v0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->access$getMainHandler$p(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->scheduleShowRecentsNextFocusTimeout:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->getRecentsLaunchDuration()J

    move-result-wide v1

    const/4 v3, 0x2

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final unregisterListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->this$0:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    invoke-static {v0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->access$getMainHandler$p(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->scheduleShowRecentsNextFocusTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;->this$0:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->access$setCurrentShowRecentsNextFocusTask$p(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;Lcom/android/quickstep/OplusOverviewCommandHelperImpl$ShowRecentsNextFocusTask;)V

    return-void
.end method
