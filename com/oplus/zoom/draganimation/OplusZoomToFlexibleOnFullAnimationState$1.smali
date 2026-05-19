.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->initAnimationThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const-string v0, "handleMessage:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$002(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    const-string v0, "KeepMessage clear"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_45

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3f

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3f

    if-eq p1, v1, :cond_31

    goto :goto_4a

    :cond_31
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    if-eqz p1, :cond_38

    return-void

    :cond_38
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->changeToState(I)V

    goto :goto_4a

    :cond_3f
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->changeToState(I)V

    goto :goto_4a

    :cond_45
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$1;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->prepareAnimationSource()V

    :goto_4a
    return-void
.end method
