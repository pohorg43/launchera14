.class Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->exitZoom(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;->this$0:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;->lambda$onAnimationCancel$1()V

    return-void
.end method

.method private synthetic lambda$onAnimationCancel$1()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;->this$0:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->exitZoom()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;->this$0:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->exitZoom()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;->this$0:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    iget-object p1, p1, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v0, Lcom/oplus/zoom/pointerhandler/c;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/pointerhandler/c;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;->this$0:Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;

    iget-object p1, p1, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v0, Lcom/oplus/zoom/pointerhandler/b;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/pointerhandler/b;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "ZoomPointerHandler"

    const-string p1, "gesture close mini animation started"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
