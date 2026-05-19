.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$5;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$5;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const-string v1, "resetAll state:"

    const-string v2, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {v1, v0, v2}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x11

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$5;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$5;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->cancleCurrentAnimation()V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$5;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->resetAll()V

    :cond_22
    return-void
.end method
