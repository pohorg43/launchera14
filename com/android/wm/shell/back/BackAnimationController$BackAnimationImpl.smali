.class Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/back/BackAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/back/BackAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackAnimationImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/BackAnimationController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;Lcom/android/wm/shell/back/BackAnimationController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFFFII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->lambda$onBackMotion$0(FFFFII)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->lambda$setTriggerBack$1(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->lambda$setSwipeThresholds$2(FFF)V

    return-void
.end method

.method private synthetic lambda$onBackMotion$0(FFFFII)V
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/back/BackAnimationController;->onMotionEvent(FFFFII)V

    return-void
.end method

.method private synthetic lambda$setSwipeThresholds$2(FFF)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/back/BackAnimationController;->access$1000(Lcom/android/wm/shell/back/BackAnimationController;FFF)V

    return-void
.end method

.method private synthetic lambda$setTriggerBack$1(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->setTriggerBack(Z)V

    return-void
.end method


# virtual methods
.method public onBackMotion(FFFFII)V
    .registers 17

    move-object v1, p0

    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$300(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v2}, Lcom/android/wm/shell/back/BackAnimationController;->access$302(Lcom/android/wm/shell/back/BackAnimationController;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_17
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$200(Lcom/android/wm/shell/back/BackAnimationController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v1, v1, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/back/BackAnimationController;->onMotionEvent(FFFFII)V

    return-void

    :cond_30
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$500(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v8

    new-instance v9, Lcom/android/wm/shell/back/f;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/back/f;-><init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFFFII)V

    invoke-interface {v8, v9}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setStatusBarCustomizer(Lcom/android/wm/shell/back/StatusBarCustomizer;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->access$802(Lcom/android/wm/shell/back/BackAnimationController;Lcom/android/wm/shell/back/StatusBarCustomizer;)Lcom/android/wm/shell/back/StatusBarCustomizer;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {p0}, Lcom/android/wm/shell/back/BackAnimationController;->access$900(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/back/BackAnimationBackground;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/BackAnimationBackground;->setStatusBarCustomizer(Lcom/android/wm/shell/back/StatusBarCustomizer;)V

    return-void
.end method

.method public setSwipeThresholds(FFF)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$500(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/back/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/back/e;-><init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFF)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTriggerBack(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$300(Lcom/android/wm/shell/back/BackAnimationController;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->access$302(Lcom/android/wm/shell/back/BackAnimationController;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_16
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$200(Lcom/android/wm/shell/back/BackAnimationController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->setTriggerBack(Z)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->access$500(Lcom/android/wm/shell/back/BackAnimationController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/back/g;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/back/g;-><init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
