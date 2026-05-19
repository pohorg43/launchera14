.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;
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

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const-string v1, "startThirdAndResetAll state:"

    const-string v2, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {v1, v0, v2}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xf

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_4c

    const/16 v2, 0xc

    if-ne v1, v2, :cond_25

    goto :goto_4c

    :cond_25
    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x7

    if-eq v1, v2, :cond_32

    const/4 v2, 0x6

    if-eq v1, v2, :cond_32

    if-eq v1, v4, :cond_32

    if-ne v1, v3, :cond_5f

    :cond_32
    const/4 v2, 0x0

    if-eq v1, v4, :cond_37

    if-ne v1, v3, :cond_38

    :cond_37
    const/4 v2, 0x1

    :cond_38
    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$500(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$600(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$700(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)I

    move-result v3

    invoke-static {v0, v1, v3, v2}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_startReplaceSplitWhenNormal(ILandroid/content/Intent;II)V

    goto :goto_5f

    :cond_4c
    :goto_4c
    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$500(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$600(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$700(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_startThreeSplitFromNormal(ILandroid/content/Intent;I)V

    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->cancleCurrentAnimation()V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->resetAll()V

    :cond_69
    return-void
.end method
