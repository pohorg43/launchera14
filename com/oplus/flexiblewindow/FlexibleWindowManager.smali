.class public Lcom/oplus/flexiblewindow/FlexibleWindowManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/flexiblewindow/FlexibleWindowManager$IEmbeddedWindowCallback;
    }
.end annotation


# static fields
.field private static final ACTION_POCKET_STUDIO:Ljava/lang/String; = "oplus.intent.action.pocket.studio.canvas"

.field public static final BIG_SCREEN_SMALLEST_SWDP:I = 0x258

.field public static final FLEXIBLE_ACTIVITY_POSITION_LEFT:I = 0x1

.field public static final FLEXIBLE_ACTIVITY_POSITION_RIGHT:I = 0x2

.field public static final FLEXIBLE_POCKET_STUDIO_UNSUPPORTED:I = 0x0

.field public static final FLEXIBLE_RESIZE_MODE_COMPAT:I = 0x2

.field public static final FLEXIBLE_RESIZE_MODE_COMPAT_FULLSCREEN:I = 0x3

.field public static final FLEXIBLE_RESIZE_MODE_SPLITSCREEN:I = 0x1

.field private static final FORBID_SPLITSCREEN_FEATURE:Ljava/lang/String; = "oplus.customize.splitscreen.disable"

.field public static final KEY_ACTIVITY_NO_ANIM:Ljava/lang/String; = "androidx.flexible.activityNoAnimation"

.field public static final KEY_CANVAS_FOCUS_INDEX:Ljava/lang/String; = "androidx.flexible.focusIndex"

.field public static final KEY_CANVAS_INTENT_LIST:Ljava/lang/String; = "androidx.flexible.intentList"

.field public static final KEY_CANVAS_LAYOUT_ORIENTATION:Ljava/lang/String; = "androidx.flexible.layoutOrientation"

.field public static final KEY_CANVAS_TASK_ID_LIST:Ljava/lang/String; = "androidx.flexible.taskIdList"

.field public static final KEY_CANVAS_USER_ID:Ljava/lang/String; = "androidx.flexible.userId"

.field public static final KEY_CANVAS_USER_ID_LIST:Ljava/lang/String; = "androidx.flexible.userIdList"

.field public static final KEY_FLEXIBLE_ACTIVITY_DESCENDANT:Ljava/lang/String; = "androidx.activity.FlexibleDescendant"

.field public static final KEY_FLEXIBLE_ACTIVITY_POSITION:Ljava/lang/String; = "androidx.activity.FlexiblePosition"

.field public static final KEY_FLEXIBLE_COMPAT_RATIO:Ljava/lang/String; = "androidx.flexible.CompatRatio"

.field public static final KEY_FLEXIBLE_LAUNCH_BOUNDS:Ljava/lang/String; = "androidx.flexible.LaunchBounds"

.field public static final KEY_FLEXIBLE_LAUNCH_MAX_BOUNDS:Ljava/lang/String; = "androidx.flexible.LaunchMaxBounds"

.field public static final KEY_FLEXIBLE_RESIZE_MODE:Ljava/lang/String; = "androidx.flexible.ResizeMode"

.field public static final KEY_FLEXIBLE_SCREEN_ORIENTATION:Ljava/lang/String; = "androidx.flexible.ScreenOrientation"

.field public static final KEY_FLEXIBLE_STABLE_RECT:Ljava/lang/String; = "androidx.flexible.StableRect"

.field public static final KEY_FLEXIBLE_START_ACTIVITY:Ljava/lang/String; = "androidx.activity.StartFlexibleActivity"

.field public static final KEY_FLEXIBLE_WINDOW_METRICS_BOUNDS:Ljava/lang/String; = "androidx.flexible.WindowMetricsBounds"

.field public static final KEY_LAUNCH_CONTAINER_TASK_ID:Ljava/lang/String; = "androidx.activity.LaunchContainerTaskId"

.field public static final KEY_LAUNCH_EMBEDDED_TASK_ID:Ljava/lang/String; = "androidx.activity.LaunchEmbeddedTaskId"

.field public static final KEY_LAUNCH_TASK_CORNER_RADIUS:Ljava/lang/String; = "androidx.activity.LaunchCornerRadius"

.field public static final KEY_LAUNCH_TASK_EMBEDDED:Ljava/lang/String; = "androidx.activity.LaunchEmbedded"

.field public static final KEY_LAUNCH_TASK_RESIZABLE:Ljava/lang/String; = "androidx.activity.LaunchResizable"

.field public static final KEY_LAUNCH_TASK_SCALE:Ljava/lang/String; = "androidx.activity.LaunchScale"

.field public static final KEY_LAUNCH_TASK_SCENARIO:Ljava/lang/String; = "androidx.activity.LaunchScenario"

.field public static final KEY_LAUNCH_TASK_SHADOW_RADIUS:Ljava/lang/String; = "androidx.activity.LaunchShadowRadius"

.field public static final KEY_NO_ANIM:Ljava/lang/String; = "no_activity_anim"

.field public static final KEY_SUPPORT_SPLIT_SCREEN_WINDOWING_MODE:Ljava/lang/String; = "androidx.activity.SupportsSplitScreenWindowingMode"

.field public static final LAUNCH_SCENARIO_CANVAS:I = 0x2

.field public static final LAUNCH_SCENARIO_DEFAULT:I = 0x0

.field public static final LAUNCH_SCENARIO_FLEXIBLE:I = 0x1

.field public static final LAUNCH_TASK_MARGIN:I = 0x8

.field public static final MARGIN_GLOBAL_MODE:I = 0x10

.field public static final MARGIN_SECURE_RESERVE:I = 0x38

.field private static final SETTINGS_FORBID_SPLITSCREEN:Ljava/lang/String; = "forbid_splitscreen_by_ep"

.field private static final TAG:Ljava/lang/String; = "FlexibleWindowManager"

.field public static final THREE_SPLIT_PADDING:I = 0xa

.field private static volatile sInstance:Lcom/oplus/flexiblewindow/FlexibleWindowManager;


# instance fields
.field private mHasPocketStudioFeature:Z

.field private mIsFoldDevice:Z

.field private mOAtms:Landroid/app/OplusActivityTaskManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtraConfiguration(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;
    .registers 2

    sget-object v0, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->sInstance:Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->sInstance:Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    invoke-direct {v1}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;-><init>()V

    sput-object v1, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->sInstance:Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->sInstance:Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    return-object v0
.end method

.method private hasForbidScreenScreenFeature()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private isEnterpriseDisableSplitScreen()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isFlexibleActivity(Landroid/content/res/Configuration;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isFlexibleActivitySuitable(Landroid/content/res/Configuration;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static layoutRectCalculate(Ljava/util/List;Landroid/content/Intent;IZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static layoutReplaceRectCalculate(Ljava/util/List;Landroid/content/Intent;IIZ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            "IIZ)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public adjustEndAbsForFlexibleMinimizeIfNeed(Landroid/window/TransitionInfo$Change;)Landroid/graphics/Rect;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 2

    return-void
.end method

.method public calculateFlexibleWindowBounds(Landroid/content/Intent;II)Landroid/os/Bundle;
    .registers 4

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public exitFlexibleEmbeddedTask(I)V
    .registers 2

    return-void
.end method

.method public getPocketStudioTaskRegion(I)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecentEmbeddedTasksForContainer(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public isClickAtPocketStudioArea(III)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public isInFlexibleEmbedded(Landroid/app/TaskInfo;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isInPocketStudio(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isInPocketStudioForStandard(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isMinimizedPocketStudio(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isPocketStudioMultiWindowSupported(Landroid/app/TaskInfo;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPocketStudio(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public notifyEmbeddedTasksChangeFocus(ZI)V
    .registers 3

    return-void
.end method

.method public notifyFlexibleSplitScreenStateChanged(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 4

    return-void
.end method

.method public registerEmbeddedWindowContainerCallback(Lcom/oplus/flexiblewindow/FlexibleWindowManager$IEmbeddedWindowCallback;I)V
    .registers 3

    return-void
.end method

.method public removeEmbeddedContainerTask(II)V
    .registers 3

    return-void
.end method

.method public setEmbeddedContainerTask(II)V
    .registers 3

    return-void
.end method

.method public setExtraBundle(Landroid/app/ActivityOptions;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public setFlexibleFrame(ILandroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method public setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .registers 3

    return-void
.end method

.method public setMinimizedPocketStudio(ZI)V
    .registers 3

    return-void
.end method

.method public startActivityInTask(Landroid/content/Intent;I)V
    .registers 3

    return-void
.end method

.method public startFlexibleWindowForRecentTasks(ILandroid/graphics/Rect;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public startPocketStudio(Landroid/content/Context;Ljava/util/List;[I[IILandroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[I[II",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public startPocketStudio(Landroid/content/Context;Ljava/util/List;[I[ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[I[I",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public unregisterEmbeddedWindowContainerCallback(Lcom/oplus/flexiblewindow/FlexibleWindowManager$IEmbeddedWindowCallback;I)V
    .registers 3

    return-void
.end method
