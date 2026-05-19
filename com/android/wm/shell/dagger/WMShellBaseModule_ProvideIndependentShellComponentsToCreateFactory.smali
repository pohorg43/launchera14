.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final activityEmbeddingOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bubblesOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;>;"
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

.field private final displayImeControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayImeController;",
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

.field private final dragAndDropControllerOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final freeformComponentsProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/freeform/FreeformComponents;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fullscreenTaskListenerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private final hideDisplayCutoutControllerOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final oneHandedControllerOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final overriddenCreateTriggerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pipOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pipTouchHandlerOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final protoLogControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/ProtoLogController;",
            ">;"
        }
    .end annotation
.end field

.field private final recentTasksOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final recentsTransitionHandlerOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final shellTaskOrganizerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private final splitScreenOptionalProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final startingWindowProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionsProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;"
        }
    .end annotation
.end field

.field private final unfoldAnimationControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldAnimationController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final unfoldTransitionHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldAnimationController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/freeform/FreeformComponents;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ProtoLogController;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->displayControllerProvider:Lg4/a;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->displayImeControllerProvider:Lg4/a;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->displayInsetsControllerProvider:Lg4/a;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->dragAndDropControllerOptionalProvider:Lg4/a;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->shellTaskOrganizerProvider:Lg4/a;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->bubblesOptionalProvider:Lg4/a;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->splitScreenOptionalProvider:Lg4/a;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->pipOptionalProvider:Lg4/a;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->pipTouchHandlerOptionalProvider:Lg4/a;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->fullscreenTaskListenerProvider:Lg4/a;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->unfoldAnimationControllerProvider:Lg4/a;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->unfoldTransitionHandlerProvider:Lg4/a;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->freeformComponentsProvider:Lg4/a;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->recentTasksOptionalProvider:Lg4/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->recentsTransitionHandlerOptionalProvider:Lg4/a;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->oneHandedControllerOptionalProvider:Lg4/a;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->hideDisplayCutoutControllerOptionalProvider:Lg4/a;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->activityEmbeddingOptionalProvider:Lg4/a;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->transitionsProvider:Lg4/a;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->startingWindowProvider:Lg4/a;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->protoLogControllerProvider:Lg4/a;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->overriddenCreateTriggerProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldAnimationController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/freeform/FreeformComponents;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;>;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;",
            ">;>;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/ProtoLogController;",
            ">;",
            "Lg4/a<",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;"
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

    new-instance v23, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v22}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v23
.end method

.method public static provideIndependentShellComponentsToCreate(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/startingsurface/StartingWindowController;Lcom/android/wm/shell/ProtoLogController;Ljava/util/Optional;)Ljava/lang/Object;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldAnimationController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/freeform/FreeformComponents;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;",
            ">;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
            "Lcom/android/wm/shell/ProtoLogController;",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static/range {p0 .. p21}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideIndependentShellComponentsToCreate(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/startingsurface/StartingWindowController;Lcom/android/wm/shell/ProtoLogController;Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->displayControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->displayImeControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->displayInsetsControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->dragAndDropControllerOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->shellTaskOrganizerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->bubblesOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->splitScreenOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->pipOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->pipTouchHandlerOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->fullscreenTaskListenerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->unfoldAnimationControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->unfoldTransitionHandlerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->freeformComponentsProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->recentTasksOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->recentsTransitionHandlerOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->oneHandedControllerOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->hideDisplayCutoutControllerOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->activityEmbeddingOptionalProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->transitionsProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->startingWindowProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget-object v1, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->protoLogControllerProvider:Lg4/a;

    invoke-interface {v1}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/wm/shell/ProtoLogController;

    iget-object v0, v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->overriddenCreateTriggerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/Optional;

    invoke-static/range {v2 .. v23}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->provideIndependentShellComponentsToCreate(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/startingsurface/StartingWindowController;Lcom/android/wm/shell/ProtoLogController;Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
