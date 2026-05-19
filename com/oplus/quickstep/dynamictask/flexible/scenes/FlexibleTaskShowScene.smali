.class public Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFlexibleTaskShowScene.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlexibleTaskShowScene.kt\ncom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,247:1\n252#2:248\n252#2:250\n252#2:251\n1#3:249\n*S KotlinDebug\n*F\n+ 1 FlexibleTaskShowScene.kt\ncom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene\n*L\n134#1:248\n182#1:250\n185#1:251\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene$Companion;

.field private static final DELAY_SHOW_MSG_TIME:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "RFT_ShowScene"


# instance fields
.field private wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    return-void
.end method


# virtual methods
.method public allow(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v1, 0x0

    if-nez v0, :cond_15

    return v1

    :cond_15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-boolean v3, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    if-eqz v3, :cond_4f

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->allowInRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->allowInNecessary(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->allowInTaskView(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->allowInTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v3

    if-eqz v3, :cond_4f

    const-string v3, "ctx"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->allowInPackage(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0, v2, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->allowInSystemState(Landroid/content/Context;Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z

    move-result p0

    if-eqz p0, :cond_4f

    const/4 v1, 0x1

    :cond_4f
    return v1
.end method

.method public allowInNecessary(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")Z"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppSuperLocking(Lcom/android/quickstep/views/TaskView;)Z

    move-result p0

    if-nez p0, :cond_3c

    const-string p0, "not super lock, "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_2d

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RFT_ShowScene"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_3c
    const/4 p0, 0x1

    return p0
.end method

.method public allowInPackage(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    const/4 p2, 0x1

    if-nez p0, :cond_11

    return p2

    :cond_11
    invoke-static {p1}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher/AppLimitedStartUpManager;->isAppLimited(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_38

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "allowInPackage(), pkgName="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", limited."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RFT_ShowScene"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_38
    return p2
.end method

.method public allowInRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_f

    move p0, v0

    goto :goto_10

    :cond_f
    move p0, v1

    :goto_10
    const-string v2, "RFT_ShowScene"

    if-nez p0, :cond_1a

    const-string p0, "allowInRecentsView(), not visible"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1a
    instance-of p0, p1, Lcom/android/quickstep/fallback/FallbackRecentsView;

    if-eqz p0, :cond_24

    const-string p0, "allowInRecentsView(), fallback"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_24
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->isStarting()Z

    move-result p0

    if-eqz p0, :cond_34

    const-string p0, "allowInRecentsView(), isStarting Task"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_34
    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    sget-boolean v3, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    if-nez v3, :cond_4d

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning()Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning()Z

    move-result p0

    if-nez p0, :cond_4d

    sget-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning:Z

    if-eqz p0, :cond_4b

    goto :goto_4d

    :cond_4b
    move p0, v1

    goto :goto_4e

    :cond_4d
    :goto_4d
    move p0, v0

    :goto_4e
    if-eqz p0, :cond_56

    const-string p0, "allowInRecentsView(), isEnterStateAnimRunning"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_56
    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    if-eqz p0, :cond_62

    const-string p0, "allowInRecentsView(), isPageInTransition"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_62
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isFreeScroll()Z

    move-result p0

    if-nez p0, :cond_6e

    const-string p0, "allowInRecentsView(), not free scroll"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6e
    iget-object p0, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    const-string p0, "allowInRecentsView(), not in OVERVIEW"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_86
    return v0
.end method

.method public allowInSystemState(Landroid/content/Context;Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "recentsView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->getActiveDetector()Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    invoke-interface {p0}, Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;->isActive()Z

    move-result v2

    if-ne v2, v0, :cond_1c

    move v2, v0

    goto :goto_1d

    :cond_1c
    move v2, v1

    :goto_1d
    const-string v3, "RFT_ShowScene"

    if-eqz v2, :cond_3b

    const-string p1, "allowInSystemState(), "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " active"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3b
    iget-object p0, p2, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result p0

    if-eqz p0, :cond_49

    const-string p0, "allowInSystemState(), isInMinimize"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_49
    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p0

    if-eqz p0, :cond_59

    const-string p0, "allowInSystemState(), isInSuperPowerMode"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_59
    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMZoomWindowName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_74

    const-string p0, "allowInSystemState(), zoom showing, "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getMZoomWindowName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_74
    return v0
.end method

.method public allowInTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 7

    const/4 p0, 0x0

    const-string v0, "RFT_ShowScene"

    if-nez p1, :cond_b

    const-string p1, "allowInTask(), task null"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_b
    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string p1, "allowInTask(), embedded task"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_17
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_32

    if-eqz v2, :cond_32

    const/16 v4, 0x64

    if-eq v2, v4, :cond_32

    const-string v1, "allowInTask(), not fullscreen or undefined, "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    invoke-static {v1, p1, v0}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return p0

    :cond_32
    iget p1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    if-eqz p1, :cond_3f

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3f

    const-string v1, "allowInTask(), displayId="

    invoke-static {v1, p1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p0

    :cond_3f
    return v3
.end method

.method public allowInTaskView(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z
    .registers 6

    const-string p0, "taskView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    const-string v0, "RFT_ShowScene"

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    const-string p0, "allowInTaskView(), group task"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_12
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float p0, p0, v2

    const/4 v2, 0x1

    if-nez p0, :cond_1f

    move p0, v2

    goto :goto_20

    :cond_1f
    move p0, v1

    :goto_20
    if-eqz p0, :cond_5a

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2a

    move p0, v2

    goto :goto_2b

    :cond_2a
    move p0, v1

    :goto_2b
    if-nez p0, :cond_2e

    goto :goto_5a

    :cond_2e
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p0

    instance-of p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz p1, :cond_39

    check-cast p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_3a

    :cond_39
    const/4 p0, 0x0

    :goto_3a
    if-eqz p0, :cond_50

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isPrivacy()Z

    move-result p1

    if-nez p1, :cond_4b

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection()Z

    move-result p0

    if-eqz p0, :cond_49

    goto :goto_4b

    :cond_49
    move p0, v1

    goto :goto_4c

    :cond_4b
    :goto_4b
    move p0, v2

    :goto_4c
    if-ne p0, v2, :cond_50

    move p0, v2

    goto :goto_51

    :cond_50
    move p0, v1

    :goto_51
    if-eqz p0, :cond_59

    const-string p0, "allowInTaskView(), taskview is protected."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_59
    return v2

    :cond_5a
    :goto_5a
    const-string p0, "allowInTaskView(), taskview invisible: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_73

    goto :goto_74

    :cond_73
    move v2, v1

    :goto_74
    invoke-static {p0, v2, v0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return v1
.end method

.method public delayMillis()J
    .registers 3

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public final getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    return-object p0
.end method

.method public final setWrapper(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    return-void
.end method

.method public show(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_12

    :cond_11
    move-object v0, v2

    :goto_12
    if-nez v0, :cond_15

    return-void

    :cond_15
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_5b

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_5b

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isShowing()Z

    move-result v3

    const-string v4, "show(), isShowing="

    const-string v5, " taskId="

    const-string v6, ", flexibleTaskId="

    invoke-static {v4, v3, v5, v1, v6}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v5}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleTaskId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RFT_ShowScene"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleTaskId()I

    move-result v3

    if-eq v3, v1, :cond_55

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v3, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V

    goto :goto_56

    :cond_55
    return-void

    :cond_56
    :goto_56
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->attach(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    :cond_5b
    return-void
.end method

.method public verifyAllowFirst()Z
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$DefaultImpls;->verifyAllowFirst(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;)Z

    move-result p0

    return p0
.end method
