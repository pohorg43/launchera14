.class Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->prepareNextAnimation(FFFLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Point;Landroid/graphics/Point;FFFFFFFFFFFFFFFFFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;FFFFFFFLandroid/graphics/Point;Landroid/graphics/Point;FFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

.field public final synthetic val$state:I


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;I)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->val$state:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "### transferAnimation Cancel:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->val$state:I

    const-string v1, "OplusDragZoomFoldAnimationManager"

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCancleCurrentAnimation:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "### animation end to:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->val$state:I

    const-string v1, "OplusDragZoomFoldAnimationManager"

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-boolean p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCancleCurrentAnimation:Z

    if-nez p1, :cond_79

    const-string p1, "### transferAnimation normal end to:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->val$state:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->val$state:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setCurrentAnimationState(I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget v0, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_57

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->isInRemindMode()Z

    move-result p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result p1

    if-eqz p1, :cond_79

    :cond_4f
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->finishDragAnimationUnCheck()V

    goto :goto_79

    :cond_57
    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result p1

    if-eqz p1, :cond_79

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const/16 v0, 0xd

    if-eq p1, v0, :cond_76

    const/16 v0, 0xf

    if-ne p1, v0, :cond_6c

    goto :goto_76

    :cond_6c
    const/4 v0, 0x5

    if-eq p1, v0, :cond_72

    const/4 v0, 0x7

    if-ne p1, v0, :cond_79

    :cond_72
    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->transferToNormal(I)V

    goto :goto_79

    :cond_76
    :goto_76
    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->transferToSplit(I)V

    :cond_79
    :goto_79
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "### transferAnimation start:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->val$state:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " gestureStae:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const-string v1, "OplusDragZoomFoldAnimationManager"

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->this$2:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    if-nez p1, :cond_27

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$OplusFoldDragZoomAnimationOperation$2;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_27
    return-void
.end method
