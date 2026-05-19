.class Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragAndDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerDisplay"
.end annotation


# instance fields
.field public activeDragCount:I

.field public final context:Landroid/content/Context;

.field public final displayId:I

.field public final dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

.field public isHandlingDrag:Z

.field public mHasDrawn:Z

.field public final rootView:Landroid/widget/FrameLayout;

.field public final wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/DragLayout;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->setWindowVisibility(I)V

    return-void
.end method

.method private setWindowVisibility(I)V
    .registers 11

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    int-to-long v2, v0

    int-to-long v4, p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x469bce00  # 19943.0f

    const/4 v7, 0x5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    const-string v2, "Set drop target window visibility: displayId=%d visibility=%d"

    invoke-static {v0, v6, v7, v2, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_46

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    iget-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHasDrawn:Z

    if-nez p1, :cond_48

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    goto :goto_48

    :cond_46
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHasDrawn:Z

    :cond_48
    :goto_48
    return-void
.end method


# virtual methods
.method public onFrameDraw(J)V
    .registers 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHasDrawn:Z

    return-void
.end method
