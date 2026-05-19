.class Lcom/android/launcher3/taskbar/TaskbarStashController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarStashController;->createAnimToIsStashed(ZJJZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field public final synthetic val$isStashed:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->val$isStashed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->val$isStashed:Z

    iput-boolean p0, p1, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onIsStashedChanged(Z)V

    return-void
.end method
