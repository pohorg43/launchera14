.class Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/LauncherBackAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IStaticOnBackInvokedCallback"
.end annotation


# instance fields
.field private controllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/LauncherBackAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->lambda$onBackInvoked$1()V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->lambda$onBackCancelled$0()V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;Landroid/window/BackEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->lambda$onBackStarted$3(Landroid/window/BackEvent;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->lambda$onBackStarted$4(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->lambda$onBackProgressed$2(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method private synthetic lambda$onBackCancelled$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->access$1100(Lcom/android/quickstep/LauncherBackAnimationController;)V

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->access$700(Lcom/android/quickstep/LauncherBackAnimationController;)Landroid/window/BackProgressAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/BackProgressAnimator;->reset()V

    return-void
.end method

.method private synthetic lambda$onBackInvoked$1()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->access$1000(Lcom/android/quickstep/LauncherBackAnimationController;)V

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->access$700(Lcom/android/quickstep/LauncherBackAnimationController;)Landroid/window/BackProgressAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/BackProgressAnimator;->reset()V

    return-void
.end method

.method private synthetic lambda$onBackProgressed$2(Landroid/window/BackMotionEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->access$700(Lcom/android/quickstep/LauncherBackAnimationController;)Landroid/window/BackProgressAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method private synthetic lambda$onBackStarted$3(Landroid/window/BackEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float v0, v1, v0

    mul-float v2, v0, v0

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0, v1}, Lcom/android/quickstep/LauncherBackAnimationController;->access$802(Lcom/android/quickstep/LauncherBackAnimationController;F)F

    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p0, v1, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->access$900(Lcom/android/quickstep/LauncherBackAnimationController;FLandroid/window/BackEvent;)V

    return-void
.end method

.method private synthetic lambda$onBackStarted$4(Landroid/window/BackMotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->access$600(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackMotionEvent;)V

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->access$700(Lcom/android/quickstep/LauncherBackAnimationController;)Landroid/window/BackProgressAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/o0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/o0;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/p0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/p0;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackInvoked()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/t;

    invoke-direct {v1, p0}, Lcom/android/quickstep/t;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackMotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/s;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/s;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackStarted(Landroid/window/BackMotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->controllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/r;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/r;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
