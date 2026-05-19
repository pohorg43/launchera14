.class Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$animation:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$3;->val$animation:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$3;->val$animation:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->cancel()V

    return-void
.end method

.method public end()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$3;->val$animation:Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$SpringScroller;->end()V

    return-void
.end method
