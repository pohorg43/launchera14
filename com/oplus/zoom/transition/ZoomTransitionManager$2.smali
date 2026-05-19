.class Lcom/oplus/zoom/transition/ZoomTransitionManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/transition/ZoomTransitionManager$FinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/transition/ZoomTransitionManager;->startRemoteTransition(I[Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

.field public final synthetic val$transitionFinishCallback:Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/transition/ZoomTransitionManager;Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$2;->this$0:Lcom/oplus/zoom/transition/ZoomTransitionManager;

    iput-object p2, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$2;->val$transitionFinishCallback:Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyReleaseDragBg()V
    .registers 2

    const-string p0, "ZoomAnimation"

    const-string v0, "notifyReleaseDragBg remote"

    invoke-static {p0, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/zoom/OplusZoomFeature;->getInstance()Lcom/oplus/zoom/OplusZoomFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/OplusZoomFeature;->release()V

    return-void
.end method

.method public onTransitionEnd()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/transition/ZoomTransitionManager$2;->val$transitionFinishCallback:Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;

    invoke-interface {p0}, Lcom/oplus/zoom/transition/ZoomTransitionController$FinishCallback;->onAnimationFinish()V

    return-void
.end method
