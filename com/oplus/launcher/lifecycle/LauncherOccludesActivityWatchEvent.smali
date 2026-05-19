.class public final Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;
.super Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LAUNCHER:Ljava/lang/String; = "com.android.launcher.Launcher"

.field private static final ACTIVITY_PROXY:Ljava/lang/String; = "com.android.launcher3.proxy.ProxyActivityStarter"

.field private static final ACTIVITY_QUICK_SEARCH:Ljava/lang/String; = "com.heytap.quicksearchbox.ui.activity.SearchHomeActivity"

.field private static final ACTIVITY_TRANSIENT:Ljava/lang/String; = "com.google.android.apps.search.assistant.surfaces.voice.ui.host.activity.transientactivity.FragmentHostTransientActivity"

.field public static final Companion:Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;

.field private static final TAG:Ljava/lang/String; = "LauncherOccludesActivityWatchEvent"

.field public static launchFromRecent:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private final mNotRealTranslucentActivities:[Ljava/lang/String;

.field private final mPkgPattern:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->Companion:Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V
    .registers 9

    const-string v0, "launcherAppSwitchMonitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V

    const-string v1, "com.android.permissioncontroller.permission.ui.GrantPermissionsActivity"

    const-string v2, "com.nearme.common.router.RouterActivity"

    const-string v3, "com.realme.link.home.MainActivity"

    const-string v4, "com.realme.link.home.SplashActivity"

    const-string v5, "com.oplus.screenshot.editor.activity.EditorActivity"

    const-string v6, "com.heytap.quicksearchbox.ui.activity.SearchHomeActivity"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->mNotRealTranslucentActivities:[Ljava/lang/String;

    const-string p1, "^(android)?|com.(android|coloros|heytap|nearme|oplus|oppo|realme|oneplus)(.*)?"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->mPkgPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static final updateTaskbarNoOccludeState(Z)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->Companion:Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;->updateTaskbarNoOccludeState(Z)V

    return-void
.end method

.method private final updateTaskbarVisibility(Z)V
    .registers 6

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isResumed()Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "updateTaskbarVisibility(), show="

    const-string v2, ", hasSetResumeFlag="

    const-string v3, "LauncherOccludesActivityWatchEvent"

    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_26
    if-eqz p1, :cond_2f

    if-eqz v0, :cond_35

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(Z)V

    goto :goto_35

    :cond_2f
    if-nez v0, :cond_35

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(Z)V

    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public getConfigList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "com.android.launcher.Launcher"

    const-string v0, "com.android.launcher3.proxy.ProxyActivityStarter"

    const-string v1, "com.heytap.quicksearchbox.ui.activity.SearchHomeActivity"

    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfigType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityExit(Lcom/android/launcher/Launcher;Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 13

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appExitInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/oplus/app/OplusAppExitInfo;->extension:Landroid/os/Bundle;

    const-string v1, "occludesParent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p2, Lcom/oplus/app/OplusAppExitInfo;->targetName:Ljava/lang/String;

    iget-object v3, p2, Lcom/oplus/app/OplusAppExitInfo;->resumingActivityName:Ljava/lang/String;

    iget-object v4, p2, Lcom/oplus/app/OplusAppExitInfo;->resumingPackageName:Ljava/lang/String;

    const-string v5, "com.android.launcher.Launcher"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "com.android.launcher3.proxy.ProxyActivityStarter"

    const/4 v7, 0x0

    if-eqz v5, :cond_2a

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    :cond_2a
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    :cond_30
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    move v1, v2

    goto :goto_39

    :cond_38
    move v1, v7

    :goto_39
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_6d

    const-string v6, "onActivityExit(), needUpdate="

    const-string v8, ", occludes="

    const-string v9, ", launchFromRecent="

    invoke-static {v6, v1, v8, v0, v9}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v8, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->launchFromRecent:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isInOverview="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "LauncherOccludesActivityWatchEvent"

    invoke-static {v8, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    if-eqz v1, :cond_c2

    if-nez v0, :cond_c2

    iget p2, p2, Lcom/oplus/app/OplusAppExitInfo;->resumingWindowMode:I

    if-ne p2, v2, :cond_c2

    iget-object p2, p0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->mPkgPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_89

    const-string p2, "com.google.android.apps.search.assistant.surfaces.voice.ui.host.activity.transientactivity.FragmentHostTransientActivity"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c2

    :cond_89
    iget-object p2, p0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->mNotRealTranslucentActivities:[Ljava/lang/String;

    invoke-static {p2, v3}, Li4/k;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c2

    sget-boolean p2, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->launchFromRecent:Z

    if-nez p2, :cond_b1

    if-eqz v5, :cond_b1

    sget-object p2, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->INSTANCE:Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    const-string v1, "launcher.getOverviewPanel()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p2, v0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->isShowing(Lcom/android/quickstep/views/RecentsView;)Z

    move-result p2

    if-nez p2, :cond_b1

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState(Z)V

    :cond_b1
    invoke-direct {p0, v7}, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->updateTaskbarVisibility(Z)V

    sget-object p1, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->Companion:Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;

    invoke-virtual {p0}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->getLauncherAppSwitchMonitor()Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    move-result-object p0

    const-string p2, "resumeName"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v3, v2}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;->notifyNotOccludesOrHideTaskbarWindowStateChanged(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;Ljava/lang/String;Z)V

    :cond_c2
    return-void
.end method

.method public onLauncherResume()V
    .registers 1

    const/4 p0, 0x0

    sput-boolean p0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->launchFromRecent:Z

    return-void
.end method

.method public onLauncherStart()V
    .registers 2

    sget-object p0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->Companion:Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;->updateTaskbarNoOccludeState(Z)V

    sput-boolean v0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->launchFromRecent:Z

    return-void
.end method

.method public onLauncherStop()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->updateTaskbarVisibility(Z)V

    sget-object p0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->Companion:Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;->updateTaskbarNoOccludeState(Z)V

    sput-boolean v0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->launchFromRecent:Z

    return-void
.end method
