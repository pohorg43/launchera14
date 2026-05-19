.class public final Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->checkAndRun(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $gestureToHomeWatcher:Lcom/android/launcher3/taskbar/AnimatorWatcher;

.field public final synthetic $task:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/AnimatorWatcher;Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$2;->$gestureToHomeWatcher:Lcom/android/launcher3/taskbar/AnimatorWatcher;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$2;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$2;->$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener$DefaultImpls;->onAnimationCancel(Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;)V

    return-void
.end method

.method public onAnimationEnd()V
    .registers 3

    const-string v0, "OplusTaskbarModelCallbacks"

    const-string v1, "gestureToHomeWatcher onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$2;->$gestureToHomeWatcher:Lcom/android/launcher3/taskbar/AnimatorWatcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/AnimatorWatcher;->removeListener(Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$2;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$checkAndRun$2;->$task:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;->access$checkAndRun(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener$DefaultImpls;->onAnimationStart(Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;)V

    return-void
.end method
