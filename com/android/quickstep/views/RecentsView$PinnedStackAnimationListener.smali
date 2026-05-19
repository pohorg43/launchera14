.class Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;
.super Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PinnedStackAnimationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseActivity;",
        ">",
        "Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;"
    }
.end annotation


# instance fields
.field private mActivityReference:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRecentViewRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->lambda$onPipAnimationStarted$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->lambda$onExpandPip$1()V

    return-void
.end method

.method private synthetic lambda$onExpandPip$1()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentViewRef:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_1f

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_1f

    :cond_16
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onExpandPip()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private synthetic lambda$onPipAnimationStarted$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mActivityReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BaseActivity;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_17
    return-void
.end method


# virtual methods
.method public onExpandPip()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/views/f0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/f0;-><init>(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPipAnimationStarted()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/views/e0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/e0;-><init>(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPipResourceDimensionsChanged(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentViewRef:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_13

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->access$502(Lcom/android/quickstep/views/RecentsView;I)I

    invoke-static {p0, p2}, Lcom/android/quickstep/views/RecentsView;->access$602(Lcom/android/quickstep/views/RecentsView;I)I

    :cond_13
    return-void
.end method

.method public setActivityAndRecentsView(Lcom/android/launcher3/BaseActivity;Lcom/android/quickstep/views/RecentsView;)V
    .registers 4
    .param p1  # Lcom/android/launcher3/BaseActivity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Lcom/android/quickstep/views/RecentsView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/quickstep/views/RecentsView;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mActivityReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
