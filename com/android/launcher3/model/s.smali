.class public final synthetic Lcom/android/launcher3/model/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/overlay/ShelfService;)V
    .registers 4

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .registers 4

    const/16 v0, 0x1d

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntArray;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusStandardLoaderTask;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 4

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V
    .registers 4

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .registers 4

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/BubbleTextView;)V
    .registers 4

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V
    .registers 4

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragView;Ljava/lang/Runnable;)V
    .registers 4

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V
    .registers 4

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/touch/BaseSwipeDetector;Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V
    .registers 4

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/RecentsViewStateController;Lcom/android/launcher3/LauncherState;)V
    .registers 4

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/launcher3/LauncherState;)V
    .registers 4

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/Executors$SimpleThreadFactory;Ljava/lang/Runnable;)V
    .registers 4

    const/16 v0, 0x12

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;Landroid/content/Context;)V
    .registers 4

    const/16 v0, 0x13

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetHost;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/util/SparseIntArray;)V
    .registers 4

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/DigitalWellBeingToast;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 4

    const/16 v0, 0x16

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;Landroid/content/LocusId;)V
    .registers 4

    const/16 v0, 0x18

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V
    .registers 4

    const/16 v0, 0x17

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;)V
    .registers 4

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Landroid/view/SurfaceControl;)V
    .registers 4

    const/16 v0, 0x1b

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .registers 4

    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/launcher3/model/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/model/s;->a:I

    packed-switch v0, :pswitch_data_170

    goto/16 :goto_163

    :pswitch_7  #0x1c
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginActionManager;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/plugins/PluginInstance;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/plugins/PluginActionManager;->a(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;)V

    return-void

    :pswitch_13  #0x1b
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->a(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Landroid/view/SurfaceControl;)V

    return-void

    :pswitch_1f  #0x1a
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void

    :pswitch_2b  #0x19
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/TaskView;->i(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_37  #0x18
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/LocusId;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->w(Lcom/android/quickstep/views/RecentsView;Landroid/content/LocusId;)V

    return-void

    :pswitch_43  #0x17
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->Q(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V

    return-void

    :pswitch_4f  #0x16
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->a(Lcom/android/quickstep/views/DigitalWellBeingToast;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :pswitch_5b  #0x15
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/overlay/ShelfService;

    invoke-static {v0, p0}, Lcom/android/overlay/ShelfService;->c(Landroid/content/Context;Lcom/android/overlay/ShelfService;)V

    return-void

    :pswitch_67  #0x14
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-static {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->d(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/util/SparseIntArray;)V

    return-void

    :pswitch_73  #0x13
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->a(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;Landroid/content/Context;)V

    return-void

    :pswitch_7f  #0x12
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;->a(Lcom/android/launcher3/util/Executors$SimpleThreadFactory;Ljava/lang/Runnable;)V

    return-void

    :pswitch_8b  #0x11
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherState;

    invoke-static {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->d(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/launcher3/LauncherState;)V

    return-void

    :pswitch_97  #0x10
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherState;

    invoke-static {v0, p0}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->b(Lcom/android/launcher3/uioverrides/RecentsViewStateController;Lcom/android/launcher3/LauncherState;)V

    return-void

    :pswitch_a3  #0xf
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/touch/BaseSwipeDetector;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    invoke-static {v0, p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->a(Lcom/android/launcher3/touch/BaseSwipeDetector;Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V

    return-void

    :pswitch_af  #0xe
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherState;

    invoke-static {v0, p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->b(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V

    return-void

    :pswitch_bb  #0xd
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->e(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-void

    :pswitch_c7  #0xc
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarDragView;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarDragView;->g(Lcom/android/launcher3/taskbar/TaskbarDragView;Ljava/lang/Runnable;)V

    return-void

    :pswitch_d3  #0xb
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->m(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V

    return-void

    :pswitch_df  #0xa
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->g(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/BubbleTextView;)V

    return-void

    :pswitch_eb  #0x9
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks$mOnSubscribeDataChangeListener$1;->a(Lcom/android/launcher3/taskbar/OplusTaskbarModelCallbacks;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :pswitch_f7  #0x8
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->d(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V

    return-void

    :pswitch_103  #0x7
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->d(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    return-void

    :pswitch_10f  #0x6
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/launcher3/popup/PopupPopulator;->d(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V

    return-void

    :pswitch_11b  #0x5
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/OplusStandardLoaderTask;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusStandardLoaderTask;->c(Lcom/android/launcher3/model/OplusStandardLoaderTask;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void

    :pswitch_127  #0x4
    iget-object v0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/IntSet;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->s(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntSet;)V

    return-void

    :pswitch_133  #0x3
    iget-object v0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/IntArray;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->f(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/IntArray;)V

    return-void

    :pswitch_13f  #0x2
    iget-object v0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/ModelWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherModel$CallbackTask;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/ModelWriter;->b(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void

    :pswitch_14b  #0x1
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/ModelWriter;->m(Lcom/android/launcher3/widget/LauncherAppWidgetHost;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void

    :pswitch_157  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/LauncherModel$CallbackTask;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->b(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_163
    iget-object v0, p0, Lcom/android/launcher3/model/s;->b:Ljava/lang/Object;

    check-cast v0, Landroid/window/OplusStartingWindowExtendedInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/s;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->a(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V

    return-void

    nop

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_157  #00000000
        :pswitch_14b  #00000001
        :pswitch_13f  #00000002
        :pswitch_133  #00000003
        :pswitch_127  #00000004
        :pswitch_11b  #00000005
        :pswitch_10f  #00000006
        :pswitch_103  #00000007
        :pswitch_f7  #00000008
        :pswitch_eb  #00000009
        :pswitch_df  #0000000a
        :pswitch_d3  #0000000b
        :pswitch_c7  #0000000c
        :pswitch_bb  #0000000d
        :pswitch_af  #0000000e
        :pswitch_a3  #0000000f
        :pswitch_97  #00000010
        :pswitch_8b  #00000011
        :pswitch_7f  #00000012
        :pswitch_73  #00000013
        :pswitch_67  #00000014
        :pswitch_5b  #00000015
        :pswitch_4f  #00000016
        :pswitch_43  #00000017
        :pswitch_37  #00000018
        :pswitch_2b  #00000019
        :pswitch_1f  #0000001a
        :pswitch_13  #0000001b
        :pswitch_7  #0000001c
    .end packed-switch
.end method
