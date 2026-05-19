.class public final Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->checkAndRun(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $animator:Landroid/animation/Animator;

.field public final synthetic $task:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;


# direct methods
.method public constructor <init>(Landroid/animation/Animator;Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$1;->$animator:Landroid/animation/Animator;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$1;->$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$1;->$animator:Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$1;->$task:Ljava/lang/Runnable;

    invoke-static {p1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->access$checkAndRun(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/lang/Runnable;)V

    return-void
.end method
