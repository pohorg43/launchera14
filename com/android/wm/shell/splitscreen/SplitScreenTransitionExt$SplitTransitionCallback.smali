.class Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SplitTransitionCallback"
.end annotation


# instance fields
.field public mExecuteAnaway:Z

.field public mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

.field public mHasCalled:Z

.field public mSession:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Z)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mExecuteAnaway:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mHasCalled:Z

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mSession:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iput-boolean p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mExecuteAnaway:Z

    return-void
.end method


# virtual methods
.method public onComsumed(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Z)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onFinished(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mSession:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    if-ne p1, v0, :cond_31

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    if-eqz p1, :cond_28

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mHasCalled:Z

    if-nez p1, :cond_28

    if-eqz p4, :cond_12

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mExecuteAnaway:Z

    if-eqz p1, :cond_28

    :cond_12
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mExecuteAnaway:Z

    if-eqz p1, :cond_1f

    if-eqz p4, :cond_1f

    const-string p1, "SplitScreenTransitionExt"

    const-string p4, "it\'s executing finishCallbacks in transitionSessionOnConsumed."

    invoke-static {p1, p4}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    invoke-interface {p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mHasCalled:Z

    return p1

    :cond_28
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;->access$000(Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method public setFinishedCallback(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitionExt$SplitTransitionCallback;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    return-void
.end method
