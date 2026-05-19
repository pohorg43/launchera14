.class Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->startTransferToNormalAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$2;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "OplusDragZoomPhoneAnimationManager"

    const-string p1, "### startTransferToNormalAnimation Cancel"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "OplusDragZoomPhoneAnimationManager"

    const-string v0, "### startTransferToNormalAnimation end"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$2;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->finishDragAnimationUnCheck()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "### startTransferToNormalAnimation gestureStae:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$2;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const-string v0, "OplusDragZoomPhoneAnimationManager"

    invoke-static {p1, p0, v0}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method
