.class public final Lcom/android/quickstep/views/OplusRecentsViewImpl$goHome$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusRecentsViewImpl;->goHome()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $handler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;"
        }
    .end annotation
.end field

.field public final synthetic $toState:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "TT;TSTATE_TYPE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "TT;TSTATE_TYPE;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "*>;>;",
            "Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler<",
            "***>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$goHome$3;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object p2, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$goHome$3;->$toState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$goHome$3;->$handler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$goHome$3;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$setGoingToNormalAnimationStarted$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$goHome$3;->$toState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.states.OPlusBaseState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/states/OPlusBaseState;

    invoke-virtual {p1}, Lcom/android/launcher3/states/OPlusBaseState;->resetActionFlag()V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$goHome$3;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOveriewToNormalAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$goHome$3;->$handler:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->hideCurrentSurface()V

    :cond_7
    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$goHome$3;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setOveriewToNormalAnim(Landroid/animation/Animator;)V

    return-void
.end method
