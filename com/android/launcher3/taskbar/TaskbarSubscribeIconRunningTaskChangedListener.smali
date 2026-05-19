.class public abstract Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener$Companion;

.field private static final TAG:Ljava/lang/String; = "TaskbarSubscribeIconRunningTaskChangedListener"


# instance fields
.field private lastTopActivity:Landroid/content/ComponentName;

.field private showWhenRecentsAnimatonRunning:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->Companion:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunningTaskChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)V
    .registers 6

    const-string p2, "latest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->lastTopActivity:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "TaskbarSubscribeIconRunningTaskChangedListener"

    const-string v1, "Taskbar"

    if-eqz p2, :cond_19

    const-string p0, "do not close subscribe overlay window when RunningTaskChange but same activity"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    const-string p2, " update top-activity, latest:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",last:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->lastTopActivity:Landroid/content/ComponentName;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->lastTopActivity:Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-ne p1, p2, :cond_48

    goto :goto_49

    :cond_48
    move p2, v2

    :goto_49
    if-eqz p2, :cond_51

    const-string p0, "do not close subscribe overlay:window when onTaskStackChanged & launcher resume"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_51
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->showWhenRecentsAnimatonRunning:Z

    if-eqz p1, :cond_5d

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->showWhenRecentsAnimatonRunning:Z

    const-string p0, "do not close subscribe overlay:RecentsAnimationRunning"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5d
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->onShouldCloseOverlayWindow()V

    return-void
.end method

.method public abstract onShouldCloseOverlayWindow()V
.end method

.method public final onShow(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/TopTaskTracker;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->lastTopActivity:Landroid/content/ComponentName;

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRecentsAnimationRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->showWhenRecentsAnimatonRunning:Z

    const-string p1, " [onShow] init top-activity, cur:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->lastTopActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",isRecentsAnimationRunning:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->showWhenRecentsAnimatonRunning:Z

    const-string v0, "Taskbar"

    const-string v1, "TaskbarSubscribeIconRunningTaskChangedListener"

    invoke-static {p1, p0, v0, v1}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
