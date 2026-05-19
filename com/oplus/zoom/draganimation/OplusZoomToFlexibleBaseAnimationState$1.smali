.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_28

    const/4 v1, 0x1

    if-le v0, v1, :cond_28

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-boolean v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    if-eqz v1, :cond_14

    goto :goto_28

    :cond_14
    const/16 v1, 0x9

    if-eq v0, v1, :cond_28

    const/16 v1, 0xa

    if-eq v0, v1, :cond_28

    const-string v0, "OplusZoomToFlexibleBaseAnimationState"

    const-string v2, "changeToState RECOVER_ZOOM"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->changeToState(I)V

    :cond_28
    :goto_28
    return-void
.end method
