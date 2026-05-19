.class public Lcom/android/wm/shell/draganddrop/DragAndDropController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Landroid/view/View$OnDragListener;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;,
        Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;,
        Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
        ">;",
        "Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;",
        "Landroid/view/View$OnDragListener;",
        "Landroid/content/ComponentCallbacks2;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayDropTargets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;

    const-string v0, "DragAndDropController"

    sput-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    invoke-direct {p1, p6}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    iput-object p7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    iput-object p8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/draganddrop/DragAndDropController;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->lambda$onConfigurationChanged$3(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->isReadyToHandleDrag()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->lambda$onInit$0()V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->lambda$handleDrop$2(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/draganddrop/DragAndDropController;
    .registers 18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$bool;->config_enableShellDragDrop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/draganddrop/DragAndDropController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method private createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDragAndDropImpl;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->lambda$onDrag$1(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0
.end method

.method private getMimeTypes(Landroid/content/ClipDescription;)Ljava/lang/String;
    .registers 4

    const-string p0, ""

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    if-lez v0, :cond_11

    const-string v1, ", "

    invoke-static {p0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_11
    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_23
    return-object p0
.end method

.method private handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iget v1, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-object v1, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    new-instance v2, Lcom/android/wm/shell/draganddrop/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/wm/shell/draganddrop/a;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/wm/shell/draganddrop/DragLayout;->drop(Landroid/view/DragEvent;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private isReadyToHandleDrag()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    iget-boolean v2, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHasDrawn:Z

    if-eqz v2, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return v0
.end method

.method private synthetic lambda$handleDrop$2(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .registers 3

    iget v0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-nez v0, :cond_8

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$3(Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/draganddrop/DragLayout;->onConfigChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method private synthetic lambda$onDrag$1(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .registers 3

    iget v0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-nez v0, :cond_8

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$onInit$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    return-void
.end method

.method private notifyDragStarted()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;

    invoke-interface {v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;->onDragStarted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->access$000(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    return-void
.end method


# virtual methods
.method public addDisplayDropTarget(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/DragLayout;)V
    .registers 13
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;-><init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/DragLayout;)V

    invoke-virtual {p0, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public addListener(Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/draganddrop/DragAndDropController;->TAG:Ljava/lang/String;

    const-string v2, " listeners="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .annotation runtime Lcom/android/wm/shell/common/annotations/ExternalMainThread;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 16

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    int-to-long v2, p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x3c018a92

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    const-string v2, "Display added: %d"

    invoke-static {v0, v4, v5, v2, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    if-eqz p1, :cond_1c

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x7f6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/view/WindowManager;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/16 v11, 0x7f6

    const v12, 0x1000008

    const/4 v13, -0x3

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v5, -0x7fffffb0

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v4, 0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v1, "ShellDropTarget"

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lcom/android/wm/shell/R$layout;->global_drop_target:I

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v9, Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v9, v0, v1, v3}, Lcom/android/wm/shell/draganddrop/DragLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/launcher3/icons/IconProvider;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Lcom/android/wm/shell/draganddrop/DragLayout;->getExtImpl()Lcom/android/wm/shell/draganddrop/DragLayoutExt;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->setDragRootViewWhenCreate(Landroid/widget/FrameLayout;)V

    :try_start_80
    invoke-interface {v7, v8, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v4, p0

    move v5, p1

    move-object v6, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->addDisplayDropTarget(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/DragLayout;)V

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_8c
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_80 .. :try_end_8c} :catch_8d

    goto :goto_a3

    :catch_8d
    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add view for display id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a3
    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 10

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    if-eqz v0, :cond_19

    int-to-long v0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x7a9bec7a

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v0, "Display changed: %d"

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    if-nez p1, :cond_24

    return-void

    :cond_24
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    if-eqz v0, :cond_19

    int-to-long v0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x526a63b2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v0, "Display removed: %d"

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    if-nez v0, :cond_24

    return-void

    :cond_24
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_56

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v9

    float-to-double v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getOffsetX()F

    move-result v11

    float-to-double v11, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getOffsetY()F

    move-result v13

    float-to-double v13, v13

    sget-object v15, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v7, 0x3

    aput-object v2, v3, v7

    const/4 v2, 0x4

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v3, v2

    const v2, 0x6efee556

    const/16 v7, 0x2a8

    const-string v8, "Drag event: action=%s x=%f y=%f xOffset=%f yOffset=%f"

    invoke-static {v15, v2, v7, v8, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_56
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v7

    if-nez v3, :cond_6d

    return v6

    :cond_6d
    iget-object v8, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v8, v1}, Lcom/android/wm/shell/draganddrop/DragLayout;->isInPocketStudioMode(Landroid/view/DragEvent;)Z

    move-result v8

    if-eqz v8, :cond_76

    return v6

    :cond_76
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v8

    if-ne v8, v5, :cond_d4

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    if-lez v8, :cond_a0

    const-string v8, "application/vnd.android.activity"

    invoke-virtual {v7, v8}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9e

    const-string v8, "application/vnd.android.shortcut"

    invoke-virtual {v7, v8}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9e

    const-string v8, "application/vnd.android.task"

    invoke-virtual {v7, v8}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a0

    :cond_9e
    move v8, v5

    goto :goto_a1

    :cond_a0
    move v8, v6

    :goto_a1
    iput-boolean v8, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    sget-boolean v9, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    if-eqz v9, :cond_d4

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v0, v7}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->getMimeTypes(Landroid/content/ClipDescription;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v12, 0x1667e8e0

    const/4 v13, 0x7

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v14, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v14, v5

    aput-object v7, v14, v4

    const-string v4, "Clip description: handlingDrag=%b itemCount=%d mimeTypes=%s"

    invoke-static {v11, v12, v13, v4, v14}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d4
    iget-boolean v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-nez v4, :cond_d9

    return v6

    :cond_d9
    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v4, v1}, Lcom/android/wm/shell/draganddrop/DragLayout;->onDragEnterOrExited(Landroid/view/DragEvent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_164

    goto/16 :goto_162

    :pswitch_e7  #0x6
    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/draganddrop/DragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    goto/16 :goto_162

    :pswitch_ef  #0x5
    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragLayout;->show()V

    goto :goto_162

    :pswitch_f5  #0x4
    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/DragLayout;->hasDropped()Z

    move-result v2

    if-eqz v2, :cond_103

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->logDrop()V

    goto :goto_112

    :cond_103
    iget v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    new-instance v4, Lcom/android/wm/shell/draganddrop/a;

    invoke-direct {v4, v0, v3, v5}, Lcom/android/wm/shell/draganddrop/a;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    invoke-virtual {v2, v1, v4}, Lcom/android/wm/shell/draganddrop/DragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    :goto_112
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->logEnd()V

    goto :goto_162

    :pswitch_118  #0x3
    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/draganddrop/DragLayout;->update(Landroid/view/DragEvent;)V

    invoke-direct {v0, v1, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v0

    return v0

    :pswitch_122  #0x2
    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DragLayout;->update(Landroid/view/DragEvent;)V

    goto :goto_162

    :pswitch_128  #0x1
    iget v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-eqz v4, :cond_134

    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected drag start during an active drag"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_134
    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v4, v1}, Lcom/android/wm/shell/draganddrop/DragLayout;->notifyDragAction(Landroid/view/DragEvent;)V

    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    invoke-virtual {v4}, Lcom/android/wm/shell/draganddrop/DragLayout;->getExtImpl()Lcom/android/wm/shell/draganddrop/DragLayoutExt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->needInterceptDrag()Z

    move-result v4

    if-eqz v4, :cond_146

    return v6

    :cond_146
    iget-object v4, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    invoke-virtual {v4, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->logStart(Landroid/view/DragEvent;)Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    iget v7, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    add-int/2addr v7, v5

    iput v7, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-object v7, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    iget-object v8, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v8, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    invoke-virtual {v7, v2, v1, v4}, Lcom/android/wm/shell/draganddrop/DragLayout;->prepare(Lcom/android/wm/shell/common/DisplayLayout;Landroid/view/DragEvent;Lcom/android/internal/logging/InstanceId;)V

    invoke-direct {v0, v3, v6}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyDragStarted()V

    :goto_162
    return v5

    nop

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_128  #00000001
        :pswitch_122  #00000002
        :pswitch_118  #00000003
        :pswitch_f5  #00000004
        :pswitch_ef  #00000005
        :pswitch_e7  #00000006
    .end packed-switch
.end method

.method public onInit()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    new-instance v1, Lcom/android/launcher3/q1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/q1;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    const-string v2, "extra_shell_drag_and_drop"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance v1, Lcom/android/launcher/badge/k;

    invoke-direct {v1, p0}, Lcom/android/launcher/badge/k;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 1
    .annotation runtime Lcom/android/wm/shell/common/annotations/ExternalMainThread;
    .end annotation

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2
    .annotation runtime Lcom/android/wm/shell/common/annotations/ExternalMainThread;
    .end annotation

    return-void
.end method

.method public removeListener(Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSplitScreenController(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    return-void
.end method
