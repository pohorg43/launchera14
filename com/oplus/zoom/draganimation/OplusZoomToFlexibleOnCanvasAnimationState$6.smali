.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->adjustFlexibleArea(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;II)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;->val$x:I

    iput p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->getCurrentRectArea()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToFlexible:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToFlexible:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;->val$x:I

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;->val$y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->setScaleAnimPlayIfNeed(Z)V

    goto :goto_38

    :cond_2e
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->setScaleAnimPlayIfNeed(Z)V

    :goto_38
    return-void
.end method
