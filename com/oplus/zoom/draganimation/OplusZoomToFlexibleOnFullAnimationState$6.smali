.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$6;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$6;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const-string v1, "mResetAll state:"

    const-string v2, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {v1, v0, v2}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x14

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$6;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$6;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->cancleCurrentAnimation()V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$6;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->resetAll()V

    :cond_22
    return-void
.end method
