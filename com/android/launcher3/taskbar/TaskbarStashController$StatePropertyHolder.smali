.class Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarStashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatePropertyHolder"
.end annotation


# instance fields
.field private mIsHotseatIconOnTopWhenAligned:Z

.field private mIsStashed:Z

.field private mPrevFlags:I

.field private final mStashCondition:Ljava/util/function/IntPredicate;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Ljava/util/function/IntPredicate;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mStashCondition:Ljava/util/function/IntPredicate;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    return p0
.end method


# virtual methods
.method public setState(IJJZ)Landroid/animation/Animator;
    .registers 16

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    xor-int v8, v0, p1

    if-eq v0, p1, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v0, v8}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$100(Lcom/android/launcher3/taskbar/TaskbarStashController;I)V

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mStashCondition:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isHotseatIconOnTopWhenAligned()Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    if-ne v0, v2, :cond_34

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsHotseatIconOnTopWhenAligned:Z

    if-eq v0, p1, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_34

    :cond_32
    const/4 p0, 0x0

    return-object p0

    :cond_34
    :goto_34
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_65

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const-string/jumbo v1, "setState: mIsStashed=%b, isStashed=%b, duration=%d, start=:%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/227657604"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsHotseatIconOnTopWhenAligned:Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v7, 0x1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/taskbar/TaskbarStashController;->createAnimToIsStashed(ZJJZI)V

    if-eqz p6, :cond_7c

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_7c
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public setState(IJZ)Landroid/animation/Animator;
    .registers 12

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->setState(IJJZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
