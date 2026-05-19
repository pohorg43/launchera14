.class final Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$checkAttachOnFinish$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusRecentsViewImpl;->onRecentAttachedToAppWindow(ZLandroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "TT;TSTATE_TYPE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "TT;TSTATE_TYPE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$checkAttachOnFinish$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$checkAttachOnFinish$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$checkAttachOnFinish$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$isAttachedToWindow$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$checkAttachOnFinish$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getGestureStart()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$checkAttachOnFinish$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->currentGestureState:Lcom/android/quickstep/GestureState;

    if-eqz v0, :cond_1b

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ATTACHED_TO_WINDOW_STABLE:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->setState(I)V

    :cond_1b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string/jumbo v0, "onRecentAttachedToAppWindow-onAnimationEnd, gestureStart="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$checkAttachOnFinish$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getGestureStart()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isCompleteAttachToWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onRecentAttachedToAppWindow$checkAttachOnFinish$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->isCompleteAttachToWindow:Z

    const-string v1, "OplusRecentsView"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_3f
    return-void
.end method
