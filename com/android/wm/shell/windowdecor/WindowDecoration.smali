.class public abstract Lcom/android/wm/shell/windowdecor/WindowDecoration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;,
        Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;,
        Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;,
        Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field public mCaptionContainerSurface:Landroid/view/SurfaceControl;

.field private final mCaptionInsetsRect:Landroid/graphics/Rect;

.field private mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

.field public final mContext:Landroid/content/Context;

.field public mDecorWindowContext:Landroid/content/Context;

.field public mDecorationContainerSurface:Landroid/view/SurfaceControl;

.field public mDisplay:Landroid/view/Display;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mLayoutResId:I

.field private final mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field private final mOwner:Landroid/os/Binder;

.field public final mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTaskSurface:Landroid/view/SurfaceControl;

.field private final mTmpColor:[F

.field private mViewHost:Landroid/view/SurfaceControlViewHost;

.field public final mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/window/WindowContainerTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 16

    sget-object v6, Lcom/android/wm/shell/windowdecor/r;->a:Lcom/android/wm/shell/windowdecor/r;

    sget-object v7, Lcom/android/wm/shell/windowdecor/p;->a:Lcom/android/wm/shell/windowdecor/p;

    sget-object v8, Lcom/android/wm/shell/windowdecor/s;->a:Lcom/android/wm/shell/windowdecor/s;

    new-instance v9, Lcom/android/wm/shell/windowdecor/WindowDecoration$2;

    invoke-direct {v9}, Lcom/android/wm/shell/windowdecor/WindowDecoration$2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/windowdecor/WindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/view/SurfaceControl;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/window/WindowContainerTransaction;",
            ">;",
            "Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$1;-><init>(Lcom/android/wm/shell/windowdecor/WindowDecoration;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOwner:Landroid/os/Binder;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;

    iput-object p9, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

    iget p3, p4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->getConfigurationWithOverrides(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->lambda$addWindow$0(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private static synthetic lambda$addWindow$0(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static loadDimension(Landroid/content/res/Resources;I)F
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public static loadDimensionPixelSize(Landroid/content/res/Resources;I)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private obtainDisplayOrRegisterListener()Z
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    const/4 p0, 0x0

    return p0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIII)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;
    .registers 22

    move-object v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Builder;

    const-string v2, " of Task="

    move-object v3, p2

    invoke-static {p2, v2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    move v4, p1

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move/from16 v4, p5

    int-to-float v4, v4

    move/from16 v5, p6

    int-to-float v5, v5

    move-object v6, p3

    invoke-virtual {p3, v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual {v4, v1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    move/from16 v5, p9

    int-to-float v5, v5

    invoke-virtual {v4, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    move/from16 v5, p10

    int-to-float v5, v5

    invoke-virtual {v4, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/4 v8, 0x2

    const/16 v9, 0x8

    const/4 v10, -0x2

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v5, "Additional window of Task="

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    new-instance v5, Landroid/view/WindowlessWindowManager;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-direct {v5, v6, v1, v3}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-interface {v3, v6, v7, v5}, Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;->create(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)Landroid/view/SurfaceControlViewHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v5

    new-instance v6, Lcom/android/quickstep/f1;

    invoke-direct {v6, v3, v2, v4}, Lcom/android/quickstep/f1;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    move-object v2, p4

    invoke-virtual {p4, v5, v6}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/SurfaceControlViewHost$SurfacePackage;Ljava/lang/Runnable;)Z

    new-instance v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-direct {v2, v1, v3, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;-><init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControlViewHost;Ljava/util/function/Supplier;)V

    return-object v2
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->releaseViews()V

    return-void
.end method

.method public getConfigurationWithOverrides(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;
    .registers 2

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public abstract relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public relayout(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/View;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/window/WindowContainerTransaction;",
            "TT;",
            "Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {p6 .. p6}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->reset()V

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v7, :cond_1b

    iput-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_1b
    iget v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mLayoutResId:I

    iget v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    iput v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mLayoutResId:I

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v10, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v10, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->releaseViews()V

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_30
    if-nez v4, :cond_3d

    if-eqz v8, :cond_35

    goto :goto_3d

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layoutResId and rootView can\'t both be invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_3d
    iput-object v4, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v9}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->getConfigurationWithOverrides(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;

    move-result-object v4

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    iget v8, v4, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v9, 0x0

    if-ne v6, v8, :cond_5c

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    if-eqz v6, :cond_5c

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v6, v8, :cond_5c

    iget v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mLayoutResId:I

    if-eq v7, v6, :cond_80

    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->releaseViews()V

    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->obtainDisplayOrRegisterListener()Z

    move-result v6

    if-nez v6, :cond_68

    iput-object v9, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    return-void

    :cond_68
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v6

    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    if-eqz v7, :cond_80

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    :cond_80
    iget-object v6, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v6, :cond_92

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    :cond_92
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    const/4 v10, 0x1

    if-nez v8, :cond_e7

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceControl$Builder;

    const-string v11, "Decor container of Task="

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v11}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    iput-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    const/16 v12, 0x4e20

    invoke-virtual {v8, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_e7
    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    iget v11, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v12, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-virtual {v2, v8, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    if-nez v8, :cond_127

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceControl$Builder;

    const-string v11, "Caption container of Task="

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v11}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    iput-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    :cond_127
    iget v8, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    invoke-static {v6, v8}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v8, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v8, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v8, :cond_172

    iget-object v8, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v8, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    invoke-interface {v8, v11}, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;->setTaskFocusState(Z)V

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v13

    iget v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    add-int/2addr v8, v11

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v15, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOwner:Landroid/os/Binder;

    const/16 v17, 0x0

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v18

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    move-object/from16 v14, p4

    move-object/from16 v16, v7

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Landroid/window/WindowContainerTransaction;->addInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;IILandroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    goto :goto_177

    :cond_172
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v7}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_177
    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    invoke-static {v6, v7}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimension(Landroid/content/res/Resources;I)F

    move-result v6

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v7

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    const/4 v11, 0x0

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x437f0000  # 255.0f

    div-float/2addr v14, v15

    aput v14, v8, v11

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v15

    aput v11, v8, v10

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    const/4 v10, 0x2

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v15

    aput v7, v8, v10

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v10, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v11, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-virtual {v2, v8, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v10, v6}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTmpColor:[F

    invoke-virtual {v6, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v8, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v8, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v10, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-virtual {v6, v7, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1f6

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1f6
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    if-nez v3, :cond_209

    new-instance v3, Landroid/view/WindowlessWindowManager;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    invoke-direct {v3, v6, v7, v9}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    :cond_209
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    invoke-virtual {v3, v4}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v14, 0x2

    const/16 v15, 0x8

    const/16 v16, -0x2

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v4, "Caption of Task="

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v4, :cond_255

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    invoke-interface {v4, v6, v7, v8}, Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;->create(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)Landroid/view/SurfaceControlViewHost;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    if-eqz v1, :cond_24d

    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    :cond_24d
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v1, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_265

    :cond_255
    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    if-eqz v1, :cond_260

    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    :cond_260
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :goto_265
    return-void
.end method

.method public releaseViews()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_a
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionWindowManager:Landroid/view/WindowlessWindowManager;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_21

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v4

    :goto_22
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_2c

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    goto :goto_2d

    :cond_2c
    move v3, v2

    :goto_2d
    if-eqz v3, :cond_32

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_32
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mWindowContainerTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/window/WindowContainerTransaction;->removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
