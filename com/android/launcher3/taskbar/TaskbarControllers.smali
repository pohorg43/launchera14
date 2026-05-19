.class public Lcom/android/launcher3/taskbar/TaskbarControllers;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;
    }
.end annotation


# instance fields
.field private mAreAllControllersInitialized:Z

.field private mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPostInitCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

.field public final navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

.field public final rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

.field public final stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

.field public final taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public final taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

.field public final taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

.field public final taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field public final taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

.field public final taskbarEduController:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

.field public final taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

.field public final taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

.field public final taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

.field public final taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

.field public final taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

.field public final taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field public final taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

.field public final taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

.field public uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lcom/android/launcher3/taskbar/NavbarButtonsViewController;Lcom/android/launcher3/taskbar/OplusRotationButtonController;Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;Lcom/android/launcher3/taskbar/OplusTaskbarViewController;Lcom/android/launcher3/taskbar/TaskbarScrimViewController;Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;Lcom/android/launcher3/taskbar/TaskbarKeyguardController;Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;Lcom/android/launcher3/taskbar/TaskbarStashController;Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;Lcom/android/launcher3/taskbar/TaskbarPopupController;Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V
    .registers 22

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    sget-object v2, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    iput-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduController:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9

    const-string v0, "TaskbarControllers:"

    invoke-static {p1, v0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1e

    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v3

    const-string p1, "All taskbar controllers have already been destroyed."

    aput-object p1, p0, v2

    const-string p1, "%s\t%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1e
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s\tmAreAllControllersInitialized=%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    array-length v1, v0

    :goto_36
    const-string v2, "\t"

    if-ge v3, v1, :cond_51

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, p2}, Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_51
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getSharedState()Lcom/android/launcher3/taskbar/TaskbarSharedState;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    return-object p0
.end method

.method public getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V
    .registers 5
    .param p1  # Lcom/android/launcher3/taskbar/TaskbarSharedState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->init()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->init(Lcom/android/launcher3/taskbar/NavbarButtonsViewController;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean v2, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->setupUIVisible:Z

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;Z)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    iget-boolean p1, p1, Lcom/android/launcher3/taskbar/TaskbarSharedState;->allAppsVisible:Z

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    const/16 p1, 0xf

    new-array p1, p1, [Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    aput-object v1, p1, v0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    const/4 v2, 0x2

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    const/4 v2, 0x3

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarScrimViewController:Lcom/android/launcher3/taskbar/TaskbarScrimViewController;

    const/4 v2, 0x4

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    const/4 v2, 0x5

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    const/4 v2, 0x6

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    const/4 v2, 0x7

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    const/16 v2, 0x8

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v2, 0x9

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduController:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

    const/16 v2, 0xa

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/16 v2, 0xb

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    const/16 v2, 0xc

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    const/16 v2, 0xd

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    const/16 v2, 0xe

    aput-object v0, p1, v2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_b5

    :cond_c5
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onConfigurationChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onConfigurationChanged(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->onConfigurationChanged(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->onConfigurationChanged(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->onConfigurationChanged(I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onConfigurationChanged()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->onConfigurationChanged(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/launcher3/taskbar/OplusRotationButtonController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/OplusRotationButtonController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarUnfoldAnimationController:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/OplusTaskbarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/OplusTaskbarViewController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/stashedhandleview/OplusStashedHandleViewController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onDestroy()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onDestroy()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mControllersToLog:[Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;

    return-void
.end method

.method public runAfterInit(Ljava/lang/Runnable;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mAreAllControllersInitialized:Z

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->mPostInitCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    return-void
.end method
