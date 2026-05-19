.class public Lcom/android/quickstep/TouchInteractionService$TISBinder;
.super Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TouchInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TISBinder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/TouchInteractionService;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/TouchInteractionService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;-><init>(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method private executeForTaskbarManager(Ljava/lang/Runnable;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/r;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/r;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantAvailable$2(ZZ)V

    return-void
.end method

.method public static synthetic h(Lcom/android/quickstep/TouchInteractionService$TISBinder;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onSystemUiStateChanged$5(I)V

    return-void
.end method

.method public static synthetic i(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$iconPaperZoomOut$4(F)V

    return-void
.end method

.method public static synthetic j(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onNavButtonsDarkIntensityChanged$11(F)V

    return-void
.end method

.method public static synthetic k(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Landroid/os/Bundle;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onInitialize$0(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantAvailable$1(Z)V

    return-void
.end method

.method private synthetic lambda$disable$9(IIIZ)V
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarManager;->disableNavBarElements(IIIZ)V

    return-void
.end method

.method private synthetic lambda$executeForTaskbarManager$12(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$iconPaperZoomOut$4(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->access$300(Lcom/android/quickstep/TouchInteractionService;F)V

    return-void
.end method

.method private synthetic lambda$onActiveNavBarRegionChanges$6(Landroid/graphics/Region;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setDeferredGestureRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method private synthetic lambda$onAssistantAvailable$1(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->onLongPressHomeEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onAssistantAvailable$2(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object v0, v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setAssistantAvailable(Z)V

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p1, p1, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->notifyUpdateRegionForAssistantAndOneHanded()V

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->access$400(Lcom/android/quickstep/TouchInteractionService;)V

    iget-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p1, p1, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    if-eqz p1, :cond_21

    new-instance p1, Lcom/android/common/util/q;

    invoke-direct {p1, p0, p2}, Lcom/android/common/util/q;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Z)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/lang/Runnable;)V

    :cond_21
    return-void
.end method

.method private synthetic lambda$onAssistantVisibilityChanged$3(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object v0, v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setAssistantVisibility(F)V

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->access$400(Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method

.method private synthetic lambda$onInitialize$0(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Landroid/os/Bundle;)V
    .registers 24

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInitialize() in main thread this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "TouchInteractionService"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v1}, Lcom/android/quickstep/TouchInteractionService;->access$500(Lcom/android/quickstep/TouchInteractionService;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string/jumbo v0, "onInitialize() service destroyed"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/quickstep/SystemUiProxy;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/android/quickstep/SystemUiProxy;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;)V

    iget-object v2, v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    const/4 v2, 0x1

    if-eqz p1, :cond_54

    move v3, v2

    goto :goto_55

    :cond_54
    const/4 v3, 0x2

    :goto_55
    invoke-virtual {v1, v3}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->setState(I)V

    move-object/from16 v1, p10

    invoke-super {p0, v1}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->onInitialize(Landroid/os/Bundle;)V

    iget-object v0, v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/TouchInteractionService;->preloadOverview(Z)V

    return-void
.end method

.method private synthetic lambda$onNavButtonsDarkIntensityChanged$11(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->onNavButtonsDarkIntensityChanged(F)V

    return-void
.end method

.method private synthetic lambda$onRotationProposal$8(IZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->onRotationProposal(IZ)V

    return-void
.end method

.method private static synthetic lambda$onSplitScreenSecondaryBoundsChanged$7(Lcom/android/launcher3/util/WindowBounds;)V
    .registers 2

    sget-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/SplitScreenBounds;->setSecondaryWindowBounds(Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method

.method private synthetic lambda$onSystemBarAttributesChanged$10(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->onSystemBarAttributesChanged(II)V

    return-void
.end method

.method private synthetic lambda$onSystemUiStateChanged$5(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object v0, v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object v1, v1, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setSystemUiFlags(I)V

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TouchInteractionService;->onSystemUiFlagsChanged(I)V

    return-void
.end method

.method private static synthetic lambda$setSwipeUpProxy$13(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic m(Lcom/android/quickstep/TouchInteractionService$TISBinder;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onSystemBarAttributesChanged$10(II)V

    return-void
.end method

.method public static synthetic n(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$setSwipeUpProxy$13(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/android/quickstep/TouchInteractionService$TISBinder;IIIZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$disable$9(IIIZ)V

    return-void
.end method

.method public static synthetic p(Lcom/android/quickstep/TouchInteractionService$TISBinder;Landroid/graphics/Region;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onActiveNavBarRegionChanges$6(Landroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/quickstep/TouchInteractionService$TISBinder;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$executeForTaskbarManager$12(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/util/WindowBounds;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onSplitScreenSecondaryBoundsChanged$7(Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onAssistantVisibilityChanged$3(F)V

    return-void
.end method

.method public static synthetic t(Lcom/android/quickstep/TouchInteractionService$TISBinder;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onRotationProposal$8(IZ)V

    return-void
.end method


# virtual methods
.method public disable(IIIZ)V
    .registers 12

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object v0, v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/android/quickstep/r2;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/r2;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;IIIZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    return-object p0
.end method

.method public getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->access$200(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    return-object p0
.end method

.method public getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    return-object p0
.end method

.method public iconPaperZoomOut(F)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/q2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/q2;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;FI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .registers 5
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object v0, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActiveNavBarRegionChanges: region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "TouchInteractionService"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/s;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/s;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Landroid/graphics/Region;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssistantAvailable(ZZ)V
    .registers 6
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string/jumbo v0, "onAssistantAvailable: available = "

    const-string v1, "QuickStep"

    const-string v2, "TouchInteractionService"

    invoke-static {v0, p1, v1, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/i1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/i1;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .registers 5
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAssistantVisibilityChanged: visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "TouchInteractionService"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/q2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/quickstep/q2;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;FI)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackAction(ZIIZZ)V
    .registers 6
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    return-void
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .registers 16
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "QuickStep"

    const-string v1, "TouchInteractionService"

    const-string/jumbo v2, "onInitialize()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra_sysui_proxy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v3

    const-string v0, "extra_shell_pip"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/pip/IPip$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/pip/IPip;

    move-result-object v4

    const-string v0, "extra_shell_split_screen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreen;

    move-result-object v5

    const-string v0, "extra_shell_one_handed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/IOneHanded$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/onehanded/IOneHanded;

    move-result-object v6

    const-string v0, "extra_shell_shell_transitions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/transition/IShellTransitions;

    move-result-object v7

    const-string v0, "extra_shell_starting_window"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/IStartingWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/startingsurface/IStartingWindow;

    move-result-object v8

    const-string/jumbo v0, "unlock_animation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    move-result-object v10

    const-string v0, "extra_shell_recent_tasks"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/recents/IRecentTasks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/recents/IRecentTasks;

    move-result-object v9

    const-string v0, "extra_shell_back_animation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/back/IBackAnimation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/back/IBackAnimation;

    move-result-object v11

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v13, Lcom/android/quickstep/s2;

    move-object v1, v13

    move-object v2, p0

    move-object v12, p1

    invoke-direct/range {v1 .. v12}, Lcom/android/quickstep/s2;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Landroid/os/Bundle;)V

    invoke-virtual {v0, v13}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->access$002(Z)Z

    return-void
.end method

.method public onNavButtonsDarkIntensityChanged(F)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNavButtonsDarkIntensityChanged---->darkIntensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object v0, v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    if-eqz v0, :cond_26

    new-instance v0, Lcom/android/quickstep/q2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/quickstep/q2;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;FI)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/lang/Runnable;)V

    :cond_26
    return-void
.end method

.method public onOplusSystemBarAttributesChanged(IIILjava/lang/String;)V
    .registers 7

    const-string/jumbo p0, "onOplusSystemBarAttributesChanged,displayId:"

    const-string v0, ",behavior:"

    const-string v1, ",appearance:"

    invoke-static {p0, p1, v0, p2, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",packageName:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TouchInteractionService"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .registers 5
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    if-eqz p1, :cond_c

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object v0, v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addCommand(I)V

    :cond_c
    invoke-super {p0, p1, p2}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->onOverviewHidden(ZZ)V

    return-void
.end method

.method public onOverviewShown(Z)V
    .registers 6
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOverviewShown(), triggeredFromAltTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "TouchInteractionService"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    sget-object v3, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->STUDY_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {v1, v3}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->CHILD_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_3d
    const-string p0, "in study mode and child mode, do not go to recent"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_43
    if-eqz p1, :cond_59

    const-string/jumbo p1, "recentapps"

    invoke-static {p1}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->scheduleShowRecentsNextFocus(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/BaseActivityInterface;)V

    goto :goto_61

    :cond_59
    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addCommand(I)V

    :goto_61
    return-void
.end method

.method public onOverviewToggle()V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "Main"

    const-string/jumbo v1, "onOverviewToggle"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "TouchInteractionService"

    const-string/jumbo v2, "onOverviewToggle()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->interceptOnOverviewToggle()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object v0, v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    const-string/jumbo v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addCommand(I)V

    return-void
.end method

.method public onRotationProposal(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object v0, v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/quickstep/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/q;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;IZ)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v0, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/t;

    invoke-direct {v1, v0}, Lcom/android/quickstep/t;-><init>(Lcom/android/quickstep/util/ProxyScreenStatusProvider;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSplitScreenSecondaryBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->applySplitScreenSecondaryBoundsChangedByOplus(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Lcom/android/launcher3/util/WindowBounds;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lcom/android/quickstep/h0;

    invoke-direct {p2, p0}, Lcom/android/quickstep/h0;-><init>(Lcom/android/launcher3/util/WindowBounds;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSystemBarAttributesChanged(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object v0, v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/launcher/sellmode/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher/sellmode/a;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;II)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->executeForTaskbarManager(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public onSystemUiStateChanged(I)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/proxy/OplusAbsOverviewProxyImpl;->interceptOnSystemUiStateChanged(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/core/content/res/c;

    invoke-direct {v1, p0, p1}, Landroidx/core/content/res/c;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTip(II)V
    .registers 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    return-void
.end method

.method public registerDragScrollConsumer(Lcom/android/quickstep/InputConsumer;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    return-void
.end method

.method public setGestureBlockedTaskId(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->setGestureBlockingTaskId(I)V

    return-void
.end method

.method public setSwipeUpProxy(Ljava/util/function/Function;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/quickstep/GestureState;",
            "Lcom/android/quickstep/AnimatedFloat;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    if-eqz p1, :cond_5

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/android/launcher3/widget/picker/h;->c:Lcom/android/launcher3/widget/picker/h;

    :goto_7
    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->access$102(Lcom/android/quickstep/TouchInteractionService;Ljava/util/function/Function;)Ljava/util/function/Function;

    return-void
.end method

.method public unRegisterDragScrollConsumer()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder;->this$0:Lcom/android/quickstep/TouchInteractionService;

    sget-object v0, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    return-void
.end method
