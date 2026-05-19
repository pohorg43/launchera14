.class Lcom/android/launcher3/touch/AbstractStateChangeTouchController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onDragEnd(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$1;->this$0:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$1;->this$0:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    iget-object p1, p1, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isStoped()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$1;->this$0:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->clearState()V

    :cond_f
    return-void
.end method
