.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->handleUp(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;II)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->val$x:I

    iput p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const-string v1, "handleUp nowState:"

    const-string v2, " x:"

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->val$x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->val$y:I

    const-string v3, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->removeRecoverZoom()V

    const/4 v1, 0x2

    if-gt v0, v1, :cond_32

    const-string v0, "handleUp and over"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    return-void

    :cond_32
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x6

    if-eqz v0, :cond_53

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->val$x:I

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget v4, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-gt v0, v4, :cond_4b

    invoke-virtual {v3, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->sendStateMessage(I)V

    goto :goto_66

    :cond_4b
    iget v2, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt v0, v2, :cond_66

    invoke-virtual {v3, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->sendStateMessage(I)V

    goto :goto_66

    :cond_53
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->val$y:I

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget v4, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-gt v0, v4, :cond_5f

    invoke-virtual {v3, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->sendStateMessage(I)V

    goto :goto_66

    :cond_5f
    iget v2, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt v0, v2, :cond_66

    invoke-virtual {v3, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->sendStateMessage(I)V

    :cond_66
    :goto_66
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->sendStateMessage(I)V

    return-void
.end method
