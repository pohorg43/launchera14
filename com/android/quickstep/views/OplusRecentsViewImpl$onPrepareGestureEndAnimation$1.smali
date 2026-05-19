.class public final Lcom/android/quickstep/views/OplusRecentsViewImpl$onPrepareGestureEndAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusRecentsViewImpl;->onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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

    iput-object p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onPrepareGestureEndAnimation$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl$onPrepareGestureEndAnimation$1;->this$0:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->access$setGridAnimOfBackgroundToOverview$p(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/animation/AnimatorSet;)V

    return-void
.end method
