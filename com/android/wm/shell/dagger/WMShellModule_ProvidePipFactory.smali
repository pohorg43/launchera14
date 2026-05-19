.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final contextProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final displayControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private final displayInsetsControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final oneHandedControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final phonePipMenuControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            ">;"
        }
    .end annotation
.end field

.field private final pipAnimationControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private final pipAppOpsListenerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipAppOpsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final pipBoundsAlgorithmProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final pipBoundsStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;"
        }
    .end annotation
.end field

.field private final pipDisplayLayoutStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            ">;"
        }
    .end annotation
.end field

.field private final pipKeepClearAlgorithmProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final pipMediaControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final pipMotionHelperProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final pipParamsChangedForwarderProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            ">;"
        }
    .end annotation
.end field

.field private final pipSizeSpecHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final pipTabletopControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TabletopModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final pipTaskOrganizerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private final pipTouchHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final pipTransitionControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field private final pipTransitionStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            ">;"
        }
    .end annotation
.end field

.field private final shellCommandHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final shellControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellController;",
            ">;"
        }
    .end annotation
.end field

.field private final shellInitProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;"
        }
    .end annotation
.end field

.field private final taskStackListenerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final windowManagerShellWrapperProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipAppOpsListener;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TabletopModeController;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->contextProvider:Lg4/a;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellInitProvider:Lg4/a;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellCommandHandlerProvider:Lg4/a;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellControllerProvider:Lg4/a;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->displayControllerProvider:Lg4/a;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipAnimationControllerProvider:Lg4/a;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipAppOpsListenerProvider:Lg4/a;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipBoundsAlgorithmProvider:Lg4/a;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipKeepClearAlgorithmProvider:Lg4/a;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipBoundsStateProvider:Lg4/a;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipSizeSpecHandlerProvider:Lg4/a;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipDisplayLayoutStateProvider:Lg4/a;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipMotionHelperProvider:Lg4/a;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipMediaControllerProvider:Lg4/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->phonePipMenuControllerProvider:Lg4/a;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTaskOrganizerProvider:Lg4/a;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTransitionStateProvider:Lg4/a;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTouchHandlerProvider:Lg4/a;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTransitionControllerProvider:Lg4/a;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->windowManagerShellWrapperProvider:Lg4/a;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->taskStackListenerProvider:Lg4/a;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipParamsChangedForwarderProvider:Lg4/a;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->displayInsetsControllerProvider:Lg4/a;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTabletopControllerProvider:Lg4/a;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->oneHandedControllerProvider:Lg4/a;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->mainExecutorProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;
    .registers 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipAppOpsListener;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/TabletopModeController;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    new-instance v27, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;

    move-object/from16 v0, v27

    invoke-direct/range {v0 .. v26}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v27
.end method

.method public static providePip(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            "Lcom/android/wm/shell/pip/PipAppOpsListener;",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            "Lcom/android/wm/shell/pip/PipDisplayLayoutState;",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/TabletopModeController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation

    invoke-static/range {p0 .. p25}, Lcom/android/wm/shell/dagger/WMShellModule;->providePip(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->contextProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellInitProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellCommandHandlerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->shellControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->displayControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipAnimationControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipAppOpsListenerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/pip/PipAppOpsListener;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipBoundsAlgorithmProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipKeepClearAlgorithmProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipBoundsStateProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipSizeSpecHandlerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipDisplayLayoutStateProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipMotionHelperProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipMediaControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/wm/shell/pip/PipMediaController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->phonePipMenuControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTaskOrganizerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTransitionStateProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/wm/shell/pip/PipTransitionState;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTouchHandlerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTransitionControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->windowManagerShellWrapperProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/wm/shell/WindowManagerShellWrapper;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->taskStackListenerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipParamsChangedForwarderProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->displayInsetsControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->pipTabletopControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/wm/shell/common/TabletopModeController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->oneHandedControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->mainExecutorProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v27}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->providePip(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
