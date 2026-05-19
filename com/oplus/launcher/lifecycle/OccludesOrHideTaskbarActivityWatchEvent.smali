.class public final Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;
.super Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;
.source ""

# interfaces
.implements Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;
.implements Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;,
        Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;

.field private static final TAG:Ljava/lang/String; = "OOHTBAWE"

.field private static final TASKBAR_HIDE_RESTORE_FUSE_DELAY:J = 0x1f4L


# instance fields
.field private final configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentHideTaskbarActivityName:Ljava/lang/String;

.field private frontTaskActivityName:Ljava/lang/String;

.field private final taskbarHideRestoreFuse:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->Companion:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V
    .registers 3

    const-string v0, "launcherAppSwitchMonitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->configList:Ljava/util/List;

    new-instance p1, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;

    invoke-direct {p1, p0}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;-><init>(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;)V

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->taskbarHideRestoreFuse:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;

    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/quickstep/ITopTaskTrackerExt;->addOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V

    return-void
.end method

.method public static final synthetic access$getCurrentHideTaskbarActivityName$p(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->currentHideTaskbarActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFrontTaskActivityName$p(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->frontTaskActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$illegalTaskbarAlpha(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->illegalTaskbarAlpha()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onNotOccludesOrHideTaskbarWindowStateChanged(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->onNotOccludesOrHideTaskbarWindowStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$topActivityNotEqual(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->topActivityNotEqual()Z

    move-result p0

    return p0
.end method

.method private final illegalTaskbarAlpha()Z
    .registers 4

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarViewController()Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->currentHideTaskbarActivityName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_32

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2e

    move p0, v1

    goto :goto_2f

    :cond_2e
    move p0, v2

    :goto_2f
    if-eqz p0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    return v1
.end method

.method private final onNotOccludesOrHideTaskbarWindowStateChanged(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_4

    move-object v0, p1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-object v0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->currentHideTaskbarActivityName:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNotOccludesOrHideTaskbarWindowStateChanged activityName:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",enter:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OOHTBAWE"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarUtils;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->setInHideTaskbarOrNotOccludesWindow(Z)V

    return-void
.end method

.method private final topActivityNotEqual()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->currentHideTaskbarActivityName:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->frontTaskActivityName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public getConfigList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->configList:Ljava/util/List;

    return-object p0
.end method

.method public getConfigType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 3

    const-string p0, "oplusAppEnterInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityEnter:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OOHTBAWE"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 3

    const-string p0, "oplusAppExitInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityExit:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OOHTBAWE"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLauncherCreate(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onLauncherCreate(Lcom/android/launcher/Launcher;)V

    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/quickstep/ITopTaskTrackerExt;->removeOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V

    invoke-interface {p1, p0}, Lcom/android/quickstep/ITopTaskTrackerExt;->addOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V

    return-void
.end method

.method public onLauncherDestroy(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onLauncherDestroy(Lcom/android/launcher/Launcher;)V

    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/quickstep/ITopTaskTrackerExt;->removeOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V

    return-void
.end method

.method public onRunningTaskChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)V
    .registers 5

    const-string v0, "latest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->frontTaskActivityName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->topActivityNotEqual()Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->illegalTaskbarAlpha()Z

    move-result p1

    if-eqz p1, :cond_59

    :cond_1d
    const-string p1, "Reset hide flag onRunningTaskChanged. CurrentHideTaskbarActivityName:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->currentHideTaskbarActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",latestTask:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->frontTaskActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",currentTask:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OOHTBAWE"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->taskbarHideRestoreFuse:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->taskbarHideRestoreFuse:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$TaskbarHideRestoreFuse;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_59
    return-void
.end method
