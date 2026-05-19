.class public Lcom/android/launcher/batchdrag/BatchDragViewManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;"
    }
.end annotation


# static fields
.field private static final BATCH_VIBRATION_DURATION:I = 0x1e

.field private static final DROP_IN_DURATION_FADE_BACKGROUND:I = 0x5a

.field public static final GO_BACK_ANIMATION_DURATION:I = 0x15e

.field private static final MAX_ALPHA:I = 0xff

.field private static final STATE_COME_HERE_ANIMATION:I = 0x1

.field private static final STATE_CREATE_FOLDER_ANIM:I = 0x8

.field private static final STATE_END_COME_HERE_ANIMATION:I = 0x4

.field public static final STATE_INIT:I = 0x0

.field private static final STATE_MERGE_FOLDER_ANIM:I = 0x10

.field private static final STATE_TAIL_ANIMATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BatchDragViewManager"


# instance fields
.field private mAnimateState:I

.field private mBatchAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCountRender:Lcom/android/launcher/batchdrag/BatchDragCountRender;

.field private mDragViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderIconGenerating:Z

.field private mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/folder/Folder;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mMotionX:I

.field private mMotionY:I

.field private mReadyForTailAnimator:Landroid/animation/ValueAnimator;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mScreenSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSelectedViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTailAnimation:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempXY:[I

.field private mWorkspace:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTempXY:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mScreenSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mBatchAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mReadyForTailAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-direct {v1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTailAnimation:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    iput-boolean v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderIconGenerating:Z

    iput-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    new-instance p2, Lcom/android/launcher/batchdrag/BatchDragCountRender;

    invoke-direct {p2, p1}, Lcom/android/launcher/batchdrag/BatchDragCountRender;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mCountRender:Lcom/android/launcher/batchdrag/BatchDragCountRender;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/batchdrag/BatchDragViewManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->lambda$onDropCompleted$1()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/batchdrag/BatchDragViewManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher/batchdrag/BatchDragViewManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/batchdrag/BatchDragViewManager;)Lcom/android/launcher/batchdrag/BatchDragView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/android/launcher/batchdrag/BatchDragViewManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderIconGenerating:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/launcher/batchdrag/BatchDragViewManager;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/batchdrag/BatchDragViewManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/batchdrag/BatchDragViewManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionX:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/batchdrag/BatchDragViewManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionY:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/batchdrag/BatchDragViewManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationX:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/launcher/batchdrag/BatchDragViewManager;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationY:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/launcher/batchdrag/BatchDragViewManager;)Lcom/android/launcher3/OplusWorkspace;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/launcher/batchdrag/BatchDragViewManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->startTailAnim()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/launcher/batchdrag/BatchDragViewManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->checkCompactLayout()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/folder/Folder;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->lambda$isSelectedSameFolderAllViews$2(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/BubbleTextView;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->lambda$isSelectedSameFolderAllViews$3(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/BubbleTextView;)Z

    move-result p0

    return p0
.end method

.method private checkCompactLayout()V
    .registers 8

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const-string v1, "BatchDragViewManager"

    const-string v2, "Drag"

    if-nez v0, :cond_16

    const-string/jumbo p0, "onDragStart -- mWorkspace is null!"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mScreenSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3f
    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_49
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v5

    if-nez v5, :cond_49

    iget-object v5, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mScreenSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v4, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    iget-object v5, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v5, v4}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_79
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_93

    const-string v3, "checkCompactLayout -- layouts.size = "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/CellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v5

    if-ne v5, p0, :cond_bb

    const/4 v5, 0x1

    goto :goto_bc

    :cond_bb
    move v5, v2

    :goto_bc
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/launcher3/CellLayout;->fillUpEmptyCell([I[IZZ)V

    goto :goto_a1

    :cond_c0
    return-void
.end method

.method private clearChildLayoutParams(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    :cond_b
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    return-void
.end method

.method private createAnimateViewsToFolder()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v0

    if-nez v0, :cond_1e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBatchDrag -- invalid condition, count = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatchDragViewManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_25
    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6d

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-direct {p0, v2, v0, v0, v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->createBatchDragView(Lcom/android/launcher3/BubbleTextView;ZZZ)Lcom/android/launcher/batchdrag/BatchDragView;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->initiateAnimateViewLocation(Lcom/android/launcher/batchdrag/BatchDragView;Lcom/android/launcher3/BubbleTextView;)V

    iget-object v4, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v4, v3, Lcom/android/launcher3/folder/Folder;

    if-eqz v4, :cond_5b

    check-cast v3, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    if-eqz v4, :cond_6a

    check-cast v3, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/OplusFolder;->prepareGenerateNewFolder(Landroid/view/View;)V

    goto :goto_6a

    :cond_5b
    instance-of v3, v3, Lcom/android/launcher3/Workspace;

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_6a

    invoke-virtual {v3, v2}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_6a
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_6d
    return-void
.end method

.method private createBatchDragView(Lcom/android/launcher3/BubbleTextView;ZZ)Lcom/android/launcher/batchdrag/BatchDragView;
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->createBatchDragView(Lcom/android/launcher3/BubbleTextView;ZZZ)Lcom/android/launcher/batchdrag/BatchDragView;

    move-result-object p0

    return-object p0
.end method

.method private createBatchDragView(Lcom/android/launcher3/BubbleTextView;ZZZ)Lcom/android/launcher/batchdrag/BatchDragView;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->createBatchDragView(Lcom/android/launcher3/BubbleTextView;ZZZZ)Lcom/android/launcher/batchdrag/BatchDragView;

    move-result-object p0

    return-object p0
.end method

.method private createBatchDragView(Lcom/android/launcher3/BubbleTextView;ZZZZ)Lcom/android/launcher/batchdrag/BatchDragView;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->clearFocus()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleY(F)V

    new-instance v3, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v3, v1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    if-eqz p5, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_29

    :cond_25
    invoke-virtual {v3}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_29
    if-nez v4, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_2f
    move-object v7, v4

    iget v4, v3, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v4, v4, 0x2

    iget-object v5, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTempXY:[I

    invoke-virtual {v3, v7, v5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F

    move-result v11

    iget-object v3, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTempXY:[I

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v3, v3, v6

    iget-object v6, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget-object v6, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v6

    new-instance v13, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v6, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v13, v6}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v14}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_64

    iget v6, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionX:I

    sub-int/2addr v6, v5

    iget v5, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionY:I

    sub-int/2addr v5, v3

    goto :goto_70

    :cond_64
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v6, v3, 0x2

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v5, v3, 0x2

    :goto_70
    move v3, v5

    move v15, v6

    new-instance v12, Lcom/android/launcher/batchdrag/BatchDragView;

    iget-object v6, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const v5, 0x3f8ccccd  # 1.1f

    mul-float v10, v11, v5

    const/16 v16, 0x0

    move-object v5, v12

    move v8, v15

    move v9, v3

    move/from16 p3, v3

    move-object v3, v12

    move/from16 v12, v16

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher/batchdrag/BatchDragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;IIFFF)V

    invoke-virtual {v3, v2}, Lcom/android/launcher/batchdrag/BatchDragView;->setBatchHead(Z)V

    invoke-virtual {v3, v1}, Lcom/android/launcher/batchdrag/BatchDragView;->setOriginalView(Landroid/view/View;)V

    if-eqz v2, :cond_a3

    new-instance v2, Landroid/graphics/Point;

    neg-int v5, v4

    invoke-direct {v2, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v2}, Lcom/android/launcher3/dragndrop/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    :cond_a3
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v3, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget v4, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v4

    iput v15, v13, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    iget v4, v14, Landroid/graphics/Rect;->top:I

    sub-int v4, p3, v4

    iput v4, v13, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    instance-of v4, v1, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    if-eqz v4, :cond_c1

    check-cast v1, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    invoke-interface {v1}, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;->getDragSource()Lcom/android/launcher3/DragSource;

    move-result-object v1

    goto :goto_c2

    :cond_c1
    const/4 v1, 0x0

    :goto_c2
    iput-object v1, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iput-object v2, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    iput-object v1, v13, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-eqz p4, :cond_dd

    iget v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionX:I

    iget v0, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionY:I

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher3/dragndrop/DragView;->show(II)V

    goto :goto_e4

    :cond_dd
    iget v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionX:I

    iget v0, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionY:I

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher/batchdrag/BatchDragView;->showWithoutAnimation(II)V

    :goto_e4
    return-object v3
.end method

.method public static synthetic d(Lcom/android/launcher/batchdrag/BatchDragViewManager;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->lambda$startBatchDrag$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private folderItemsGoBack()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/Folder;

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/folder/OplusFolder;

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/OplusFolder;->itemsReturnOnBatchDragCanceled(Ljava/util/List;)V

    goto :goto_13

    :cond_2e
    const-string v0, "folderItemsGoBack: resumed = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag"

    const-string v2, "BatchDragViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_55
    return-void
.end method

.method private getDragViewCount(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)I
    .registers 6

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result p0

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result p0

    iget-object p3, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p3

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    instance-of v0, p4, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_3c

    check-cast p4, Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object v0, p2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getScrollDesPage(I)I

    move-result v0

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object p4

    iget-object p2, p2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p4, v0, p2}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->getCurrentPreviewAndStackedItems(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sget-object p4, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_ALL_PREVIEW_AND_STACKED()I

    move-result p4

    sub-int/2addr p4, p2

    if-ne p3, p0, :cond_3c

    if-ge p3, p4, :cond_3c

    move p3, p4

    :cond_3c
    iget-object p0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getScaleAndLocationForFolder(Landroid/graphics/Rect;[I)F
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aput v0, p2, v1

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/4 v0, 0x1

    aput p1, p2, v0

    return p0
.end method

.method private getSelectedViewList(Lcom/android/launcher3/folder/Folder;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/Folder;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p0, :cond_9

    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private initiateAnimateViewLocation(Lcom/android/launcher/batchdrag/BatchDragView;Lcom/android/launcher3/BubbleTextView;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    check-cast p2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p2}, Lcom/android/launcher3/OplusBubbleTextView;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p2

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    goto :goto_24

    :cond_1f
    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    :goto_24
    iget-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTempRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/2addr p2, v2

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTempRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v2

    add-int/2addr p0, v0

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/dragndrop/DragView;->move(II)V

    return-void
.end method

.method private isCellLayoutHasSelectedView(Lcom/android/launcher3/CellLayout;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result p1

    const/4 v1, 0x0

    move v2, v0

    :goto_c
    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x64

    if-ne v5, v6, :cond_2e

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v4, p1, :cond_2e

    move-object v1, v3

    goto :goto_31

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_31
    :goto_31
    if-eqz v1, :cond_3f

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_3f
    return v0
.end method

.method private isSelectedSameFolderAllViews()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/batchdrag/b;->b:Lcom/android/launcher/batchdrag/b;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/batchdrag/c;->b:Lcom/android/launcher/batchdrag/c;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_3e

    iget-object v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2e

    goto :goto_3e

    :cond_2e
    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/launcher/batchdrag/d;

    invoke-direct {v1, v0}, Lcom/android/launcher/batchdrag/d;-><init>(Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$isSelectedSameFolderAllViews$2(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/folder/Folder;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    instance-of v0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_14

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$isSelectedSameFolderAllViews$3(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/BubbleTextView;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result p0

    if-ne p1, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private synthetic lambda$onDropCompleted$1()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    return-void
.end method

.method private synthetic lambda$startBatchDrag$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updateRectToIfTouchMove()V

    :cond_8
    return-void
.end method

.method private restoreChildLayoutParams(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_d

    return-void

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v0, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_26
    return-void
.end method

.method private selectViewFromConfigChange(Landroid/view/View;)V
    .registers 7

    const-string v0, "BatchDragViewManager"

    const-string v1, "Drag"

    if-nez p1, :cond_d

    const-string/jumbo p0, "selectView, view is null!"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1d

    const-string/jumbo p0, "selectView, tag is null!"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    instance-of v3, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_6f

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, p1, v1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updateSelectedMap(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_6e

    :cond_38
    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v3

    mul-int/2addr v3, v0

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-lt v0, v3, :cond_63

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const p1, 0x7f120534

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p0, p1, v4}, Lcom/android/launcher/Launcher;->showToastMsg(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_6e

    :cond_63
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, p1, v4}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updateSelectedMap(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    :goto_6e
    return-void

    :cond_6f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select view not a shortcut, tag = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startTailAnim()V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTailAnimation:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->setList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTailAnimation:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->startTail()V

    return-void
.end method

.method private traceBatchDragStart()V
    .registers 6

    const-string v0, ", isCompact="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_33

    iget-object v4, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_33
    const-string p0, "Batch_Drag"

    invoke-static {p0, v2, v0}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private updateFolderMap(Lcom/android/launcher3/BubbleTextView;Z)V
    .registers 7

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    const-string v1, "BatchDragViewManager"

    const-string v2, "Drag"

    if-nez v0, :cond_23

    const-string/jumbo p0, "updateFolderMap -- folder is null! view = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_53

    if-eqz p2, :cond_3d

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    :cond_3d
    const-string/jumbo p0, "updateFolderMap. remove view, but not added! info = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :cond_53
    if-eqz p2, :cond_59

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_59
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_67

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    :goto_67
    return-void
.end method

.method private updatePagePreviewListItems()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v1, "BatchDragViewManager"

    const-string v2, "Drag"

    if-nez v0, :cond_f

    const-string/jumbo p0, "updatePagePreviewListItems(),mLauncher == null,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string/jumbo p0, "updatePagePreviewListItems(),mLauncher.getPagePreviewManager(),return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->updatePreviewListItems()V

    return-void
.end method

.method private updateRectToIfTouchMove()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_44

    iget v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionX:I

    iget v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionY:I

    iget v2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationY:I

    sub-int/2addr v1, v2

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/batchdrag/BatchDragView;

    iget v3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    invoke-virtual {v1, v2}, Lcom/android/launcher/batchdrag/BatchDragView;->updateRectTo(Landroid/graphics/Rect;)V

    goto :goto_2f

    :cond_44
    return-void
.end method

.method private updateSelectedMap(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 6

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_a

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updateFolderMap(Lcom/android/launcher3/BubbleTextView;Z)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mScreenSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4a

    if-eqz p3, :cond_30

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mScreenSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateSelectedMap. remove view, but not added! info = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Drag"

    const-string p2, "BatchDragViewManager"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_4a
    if-eqz p3, :cond_50

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_50
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_64

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mScreenSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    :goto_64
    return-void
.end method


# virtual methods
.method public clearSelectedViews(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->selectView(Landroid/view/View;)V

    goto :goto_34

    :cond_44
    return-void
.end method

.method public clearSelectedViews(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mScreenSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher/pagepreview/PagePreviewManager;->setFolderFormBtnEnable(Z)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher/pagepreview/PagePreviewManager;->setRemoveBtnState(Z)V

    iput v2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    const-string v0, "Drag"

    const-string v1, "BatchDragViewManager"

    const-string v2, "clearSelectedViews"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_5a
    return-void
.end method

.method public destroyDragViewsInDragLayer()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "destroyDragViewsInDragLayer  count =  "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag"

    const-string v2, "BatchDragViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/batchdrag/BatchDragView;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    goto :goto_2a

    :cond_48
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->onDragEnd()V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mMotionY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_25

    const/4 v3, 0x3

    if-eq v0, v3, :cond_25

    goto :goto_2d

    :cond_25
    iget v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    if-ne v0, v2, :cond_2d

    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->goBackAnimation()V

    return v1

    :cond_2d
    :goto_2d
    iget v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    if-eq v0, v2, :cond_36

    const/4 v2, 0x2

    if-ne v0, v2, :cond_35

    goto :goto_36

    :cond_35
    return v1

    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTailAnimation:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-virtual {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public generateFolderIcon()V
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "Drag"

    const-string v3, "BatchDragViewManager"

    if-gtz v1, :cond_14

    const-string v0, "generateFolderIcon -- no selected view!"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mBatchAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v0, "generateFolderIcon -- mBatchAnimatorSet is Running!"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iget-object v4, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    iget-object v5, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v1, :cond_49

    const-string v0, "generateFolderIcon -- workspace is in transition!"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_49
    iget v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    if-eqz v1, :cond_60

    const-string v1, "generateFolderIcon -- mAnimateState not INIT. "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_60
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->isSelectedSameFolderAllViews()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_74

    iget-object v0, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const v1, 0x7f12028f

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_74
    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/android/launcher3/AbstractFloatingView;->getAnyView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-eqz v1, :cond_83

    const-string v0, "folder is exit dragLayer!!!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_83
    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1, v5}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v6, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v6

    const/4 v7, 0x0

    if-le v6, v5, :cond_a2

    iget-object v6, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v6, v1}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v6

    goto :goto_a3

    :cond_a2
    move-object v6, v7

    :goto_a3
    const/4 v8, 0x2

    new-array v9, v8, [I

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->isCellLayoutHasSelectedView(Lcom/android/launcher3/CellLayout;)Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_b9

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v6, v9}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getScaleAndLocationForFolder(Landroid/graphics/Rect;[I)F

    move-result v10

    goto :goto_e5

    :cond_b9
    if-eqz v6, :cond_d0

    invoke-direct {v0, v6}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->isCellLayoutHasSelectedView(Lcom/android/launcher3/CellLayout;)Z

    move-result v11

    if-eqz v11, :cond_d0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v9}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getScaleAndLocationForFolder(Landroid/graphics/Rect;[I)F

    move-result v10

    move-object/from16 v20, v6

    move-object v6, v1

    move-object/from16 v1, v20

    goto :goto_e5

    :cond_d0
    invoke-virtual {v1, v9, v5, v5}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v11

    if-nez v11, :cond_e4

    if-eqz v6, :cond_e0

    invoke-virtual {v6, v9, v5, v5}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v11

    if-eqz v11, :cond_e0

    move-object v1, v6

    goto :goto_e4

    :cond_e0
    aput v12, v9, v4

    aput v12, v9, v5

    :cond_e4
    :goto_e4
    move-object v6, v7

    :goto_e5
    const-string v11, "generateFolderIcon - cell = "

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v3, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aget v11, v9, v4

    if-ltz v11, :cond_103

    aget v11, v9, v5

    if-ltz v11, :cond_103

    move v11, v5

    goto :goto_104

    :cond_103
    move v11, v4

    :goto_104
    if-eqz v11, :cond_217

    const/16 v15, -0x64

    move-object v11, v1

    check-cast v11, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v11}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v11

    const/16 v13, -0xc9

    if-ne v11, v13, :cond_130

    iget-object v11, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v11}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_128

    invoke-virtual {v11, v4}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v12

    goto :goto_12d

    :cond_128
    const-string v11, "IntArray is empty !, screenId = -1"

    invoke-static {v2, v3, v11}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_12d
    move/from16 v16, v12

    goto :goto_132

    :cond_130
    move/from16 v16, v11

    :goto_132
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->createAnimateViewsToFolder()V

    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_14e

    iget-object v3, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_14f

    :cond_14e
    move-object v3, v7

    :goto_14f
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v3, :cond_158

    goto :goto_15f

    :cond_158
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    :goto_15f
    invoke-virtual {v11}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v7, :cond_16b

    move-object v7, v3

    goto :goto_173

    :cond_16b
    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_173
    iget-object v11, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v11, v3, v7}, Lcom/android/common/util/FolderNameHelper;->getRecommendFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    iget-object v13, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    aget v17, v9, v4

    aget v18, v9, v5

    move-object v14, v1

    invoke-virtual/range {v13 .. v19}, Lcom/android/launcher/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;IIIILjava/lang/String;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    new-instance v7, Lcom/android/launcher3/folder/OplusPreviewBackground;

    invoke-direct {v7}, Lcom/android/launcher3/folder/OplusPreviewBackground;-><init>()V

    invoke-virtual {v3, v7}, Lcom/android/launcher3/folder/FolderIcon;->setFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V

    if-nez v6, :cond_1ba

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-array v7, v8, [I

    aget v14, v9, v4

    aget v15, v9, v5

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v13, v1

    move-object/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    iget-object v9, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v9

    invoke-virtual {v9, v1, v7}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v10

    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->scale(F)V

    aget v9, v7, v4

    aget v7, v7, v5

    invoke-virtual {v6, v9, v7}, Landroid/graphics/Rect;->offset(II)V

    :cond_1ba
    move-object v7, v2

    check-cast v7, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v7}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v7

    if-ne v7, v8, :cond_1d6

    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    move-object v7, v3

    check-cast v7, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v7, v2, v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->prepareCreateAnimation(II)V

    goto :goto_1d9

    :cond_1d6
    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    :goto_1d9
    instance-of v1, v3, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v1, :cond_1e5

    move-object v1, v3

    check-cast v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-virtual {v1, v2, v6, v10, v4}, Lcom/android/launcher3/folder/OplusFolderIcon;->onDrop(Ljava/util/List;Landroid/graphics/Rect;FZ)V

    :cond_1e5
    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1ef
    :goto_1ef
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v6

    if-gt v6, v5, :cond_1ef

    check-cast v2, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v2, v4, v4}, Lcom/android/launcher3/folder/OplusFolder;->replaceFolderWithFinalItem(ZZ)V

    goto :goto_1ef

    :cond_20a
    iput-boolean v5, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderIconGenerating:Z

    new-instance v1, Lcom/android/launcher/batchdrag/BatchDragViewManager$5;

    invoke-direct {v1, v0, v3}, Lcom/android/launcher/batchdrag/BatchDragViewManager$5;-><init>(Lcom/android/launcher/batchdrag/BatchDragViewManager;Lcom/android/launcher3/folder/FolderIcon;)V

    const-wide/16 v4, 0x230

    invoke-virtual {v3, v1, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_225

    :cond_217
    iput v4, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    iget-object v0, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const v1, 0x7f1201ac

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_225
    return-void
.end method

.method public getAnimateState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    return p0
.end method

.method public getHeadBatchDragView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

    return-object p0
.end method

.method public getIsMoveComplete()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderIconGenerating:Z

    return p0
.end method

.method public getSelectedViewCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSelectedViewList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    return-object p0
.end method

.method public goBackAnimation()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mReadyForTailAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mReadyForTailAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTailAnimation:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-virtual {v1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->endTail()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mBatchAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->folderItemsGoBack()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v2, :cond_c3

    iget-object v4, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v5}, Lcom/android/launcher/batchdrag/BatchDragView;->getOriginalView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/DropTarget$DragObject;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-virtual {v5}, Lcom/android/launcher/batchdrag/BatchDragView;->getRectFrom()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v6, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v6, v6, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v6, :cond_5f

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/OplusDragView;->remove()V

    goto :goto_bf

    :cond_5f
    invoke-direct {v0, v4}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->restoreChildLayoutParams(Landroid/view/View;)V

    iget-object v6, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v6

    if-eqz v6, :cond_96

    invoke-virtual {v6}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v9

    if-eqz v9, :cond_96

    invoke-virtual {v6}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/launcher3/OplusWorkspace;->getScrollForPage(I)I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_81

    const/4 v9, 0x1

    goto :goto_82

    :cond_81
    const/4 v9, -0x1

    :goto_82
    iget v10, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    mul-int/2addr v11, v9

    add-int/2addr v11, v10

    iput v11, v8, Landroid/graphics/Rect;->left:I

    iget v10, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    mul-int/2addr v6, v9

    add-int/2addr v6, v10

    iput v6, v8, Landroid/graphics/Rect;->right:I

    :cond_96
    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    const/high16 v9, 0x3f800000  # 1.0f

    const/high16 v10, 0x3f800000  # 1.0f

    const/high16 v11, 0x3f800000  # 1.0f

    const/16 v13, 0x15e

    sget-object v14, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    sget-object v15, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    new-instance v6, Lcom/android/launcher/batchdrag/BatchDragViewManager$2;

    invoke-direct {v6, v0, v4}, Lcom/android/launcher/batchdrag/BatchDragViewManager$2;-><init>(Lcom/android/launcher/batchdrag/BatchDragViewManager;Lcom/android/launcher3/BubbleTextView;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-object/from16 v16, v4

    invoke-virtual/range {v5 .. v19}, Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_bf
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2c

    :cond_c3
    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mBatchAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mBatchAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher/batchdrag/BatchDragViewManager$3;

    invoke-direct {v2, v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager$3;-><init>(Lcom/android/launcher/batchdrag/BatchDragViewManager;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    iget-object v0, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mBatchAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public isDragging()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mReadyForTailAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTailAnimation:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->isTailViewListEqualsNull()Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isFolderContentSelected(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-nez v1, :cond_9

    return v0

    :cond_9
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-nez p1, :cond_12

    return v0

    :cond_12
    iget-boolean v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderIconGenerating:Z

    if-eqz v1, :cond_17

    return v0

    :cond_17
    invoke-direct {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewList(Lcom/android/launcher3/folder/Folder;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0
.end method

.method public mergeFolder(Lcom/android/launcher/batchdrag/FolderDragObject;Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 27

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v15, p3

    const-string v0, "BatchDragViewManager"

    const-string v1, "Drag"

    if-eqz v11, :cond_247

    if-nez v15, :cond_12

    goto/16 :goto_247

    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v8, :cond_240

    if-nez v9, :cond_26

    goto/16 :goto_240

    :cond_26
    invoke-virtual {v8}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v14

    invoke-virtual {v9}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    if-eqz v14, :cond_239

    if-nez v2, :cond_34

    goto/16 :goto_239

    :cond_34
    iget-object v3, v14, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_43

    const-string/jumbo v2, "mergeFolder -- srcInfo is empty!"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_43
    iget-object v3, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mBatchAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_52

    const-string/jumbo v2, "mergeFolder -- mBatchAnimatorSet is Running!"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_52
    iget-object v3, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v3

    if-eqz v3, :cond_60

    const-string/jumbo v3, "mergeFolder -- workspace is in transition!"

    invoke-static {v1, v0, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    iget v3, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    if-eqz v3, :cond_78

    const-string/jumbo v2, "mergeFolder -- mAnimateState not INIT. "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_78
    iget-object v3, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v4, 0x1

    invoke-static {v14, v3, v4}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeRecommendItems(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/Launcher;Z)V

    iget-object v3, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3, v4}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    const/16 v3, 0x10

    iput v3, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/OplusWorkspace;->setFinalTransitionTransform()V

    iget-object v3, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    iget-object v4, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v3, v4, v12}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v3, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-virtual {v3, v15, v13}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v3, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/OplusWorkspace;->resetTransitionTransform()V

    iget v3, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v10, v4, v3

    iget v3, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v5, v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mergeFolder -- dragViewLocationRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mergeFolder -- destFolderLocationRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v6, v14, v2, v11, v15}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getDragViewCount(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/OplusFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;)I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_100
    if-ge v2, v3, :cond_15d

    iget-object v0, v14, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/OplusFolder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result v0

    xor-int/lit8 v16, v0, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v2, v17

    move/from16 v17, v3

    move/from16 v3, v18

    move-object/from16 v22, v4

    move/from16 v4, v19

    move v11, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->createBatchDragView(Lcom/android/launcher3/BubbleTextView;ZZZZ)Lcom/android/launcher/batchdrag/BatchDragView;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/dragndrop/DragView;->move(II)V

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    move-object/from16 v1, v22

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_154

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_154
    add-int/lit8 v2, v21, 0x1

    move-object v4, v1

    move v5, v11

    move/from16 v3, v17

    move-object/from16 v11, p2

    goto :goto_100

    :cond_15d
    move/from16 v17, v3

    move-object v1, v4

    invoke-virtual {v7, v1}, Lcom/android/launcher/batchdrag/FolderDragObject;->setBatchDragViewList(Ljava/util/List;)V

    iget-object v0, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v10, v0

    check-cast v10, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {v10}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1d2

    invoke-virtual {v10}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1d2

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v14

    iput v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    iput v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr v4, v11

    int-to-float v4, v4

    const/high16 v11, 0x40000000  # 2.0f

    div-float/2addr v4, v11

    sub-int v5, v5, v16

    int-to-float v5, v5

    div-float/2addr v5, v11

    float-to-int v11, v4

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    float-to-int v11, v5

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->invalidate()V

    move v14, v4

    move v0, v5

    goto :goto_1d7

    :cond_1d2
    move-object/from16 v19, v14

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v14, v2

    :goto_1d7
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x5a

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;

    invoke-direct {v3, v6, v8, v9}, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;-><init>(Lcom/android/launcher/batchdrag/BatchDragViewManager;Lcom/android/launcher3/folder/OplusFolder;Lcom/android/launcher3/folder/OplusFolder;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move-object/from16 v7, p3

    move-object v9, v1

    move-object/from16 v11, p2

    move-object/from16 v1, v19

    move-object v2, v15

    move v15, v0

    invoke-virtual/range {v7 .. v15}, Lcom/android/launcher3/folder/OplusFolderIcon;->onDropFolder(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/folder/OplusFolderIcon;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    iget-object v0, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    move/from16 v3, v17

    :goto_204
    if-ge v3, v0, :cond_215

    iget-object v4, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v5}, Lcom/android/launcher3/folder/OplusFolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_204

    :cond_215
    iget-object v0, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/model/OplusModelWriter;->deleteFolderFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->MERGE_FOLDER:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    iput-object v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->mCreateType:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    iget-object v1, v6, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/statistics/LauncherStatistics;->statsGenerateFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void

    :cond_239
    :goto_239
    const-string/jumbo v2, "mergeFolder -- srcFolderInfo or destFolderInfo is null!"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_240
    :goto_240
    const-string/jumbo v2, "mergeFolder -- srcFolder or destFolder is null!"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_247
    :goto_247
    const-string/jumbo v2, "mergeFolder -- srcFolderIcon or destFolderIcon is null!"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDragEnd()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setSecondaryTitle(IZ)V

    return-void
.end method

.method public onDragStart(ILcom/android/launcher3/CellLayout$CellInfo;)V
    .registers 9

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-nez v0, :cond_16

    const-string p0, "Drag"

    const-string p1, "BatchDragViewManager"

    const-string/jumbo p2, "onDragStart -- mWorkspace is null!"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mScreenSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v1, p1, :cond_44

    iget-object v4, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3, v3}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    goto :goto_20

    :cond_44
    iget-object v4, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    const/4 v4, 0x1

    if-eqz p2, :cond_62

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v5, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aput v5, v2, v3

    iget v5, p2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aput v5, v2, v4

    invoke-virtual {v1, v3}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v5

    invoke-virtual {v1, v5, v2, v4, v3}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    goto :goto_20

    :cond_62
    invoke-virtual {v1, v3}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v5

    invoke-virtual {v1, v5, v2, v4, v3}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    goto :goto_20

    :cond_6a
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_16

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setSecondaryTitle(IZ)V

    :cond_16
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updatePagePreviewButtonView()V

    :cond_11
    instance-of v0, p2, Lcom/android/launcher/batchdrag/BatchDragObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    move-object v0, p2

    check-cast v0, Lcom/android/launcher/batchdrag/BatchDragObject;

    iget-object v0, v0, Lcom/android/launcher/batchdrag/BatchDragObject;->batchDragViewList:Ljava/util/List;

    goto :goto_29

    :cond_1c
    instance-of v0, p2, Lcom/android/launcher/batchdrag/FolderDragObject;

    if-eqz v0, :cond_28

    move-object v0, p2

    check-cast v0, Lcom/android/launcher/batchdrag/FolderDragObject;

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/FolderDragObject;->getBatchDragViewList()Ljava/util/List;

    move-result-object v0

    goto :goto_29

    :cond_28
    move-object v0, v1

    :goto_29
    if-eqz v0, :cond_5a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_33
    :goto_33
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v4, v3, Lcom/android/launcher/batchdrag/OplusBatchDragSource;

    if-eqz v4, :cond_50

    check-cast v3, Lcom/android/launcher/batchdrag/OplusBatchDragSource;

    invoke-interface {v3, p1, v2, p3}, Lcom/android/launcher/batchdrag/OplusBatchDragSource;->onDropOneItemCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    :cond_50
    iget-boolean v3, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-eqz v3, :cond_33

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    goto :goto_33

    :cond_5a
    const-string p1, "Drag"

    const-string v0, "BatchDragViewManager"

    const-string/jumbo v2, "onDropCompleted -- batchDragViewList is null"

    invoke-static {p1, v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_88

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_76
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    check-cast v0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/folder/OplusFolder;->onBatchDragCompleted(Z)V

    goto :goto_76

    :cond_88
    const/4 p1, 0x1

    if-eqz p3, :cond_99

    iget-object p3, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x65

    if-ne p3, v0, :cond_95

    iput-boolean p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    :cond_95
    invoke-virtual {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->clearSelectedViews(Z)V

    goto :goto_b7

    :cond_99
    iget-boolean p3, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez p3, :cond_9f

    iput-boolean p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    :cond_9f
    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object p2, p1, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance p3, Landroidx/appcompat/widget/g;

    invoke-direct {p3, p0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher/batchdrag/BatchDragViewManager;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0020

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p2, p3, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_b7
    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mTailAnimation:Lcom/android/launcher/batchdrag/BatchDragTailAnimation;

    invoke-virtual {p0, v1}, Lcom/android/launcher/batchdrag/BatchDragTailAnimation;->setList(Ljava/util/List;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_13

    goto :goto_1b

    :cond_13
    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_1b

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->clearSelectedViews(Z)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public selectView(Landroid/view/View;)V
    .registers 8

    const-string v0, "BatchDragViewManager"

    const-string v1, "Drag"

    if-nez p1, :cond_d

    const-string/jumbo p0, "selectView, view is null!"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget v2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1a

    const-string/jumbo p0, "selectView -- mAnimateState in STATE_CREATE_FOLDER_ANIM. "

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2a

    const-string/jumbo p0, "selectView, tag is null!"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    instance-of v4, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v4, :cond_c6

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    iget-object v0, v2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, v1}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->setSelectedWithAnim(Z)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updateSelectedMap(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_7f

    :cond_47
    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v0

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v4

    mul-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-lt v0, v4, :cond_72

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const v2, 0x7f120534

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v0, v2, v5}, Lcom/android/launcher/Launcher;->showToastMsg(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_7f

    :cond_72
    iget-object v0, v2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, v5}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->setSelectedWithAnim(Z)V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, v3, v5}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updateSelectedMap(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    :goto_7f
    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updatePagePreviewButtonView()V

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher/pagepreview/PagePreviewManager;->refreshIconSelectState(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_b2

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_b2

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/high16 v0, 0x100000

    invoke-static {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    if-nez p1, :cond_b2

    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_b2
    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0, v1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setSecondaryTitle(IZ)V

    return-void

    :cond_c6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "select view not a shortcut, tag = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selectViewIfNessary(Landroid/view/View;Z)V
    .registers 7

    if-eqz p1, :cond_75

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v0, :cond_11

    goto :goto_75

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/Folder;

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_21

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b
    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3b

    :cond_51
    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    if-eqz p2, :cond_72

    invoke-direct {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->selectViewFromConfigChange(Landroid/view/View;)V

    goto :goto_75

    :cond_72
    invoke-virtual {p0, p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->selectView(Landroid/view/View;)V

    :cond_75
    :goto_75
    return-void
.end method

.method public startBatchDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;Lcom/android/launcher3/DragSource;)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v2}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-void

    :cond_1f
    instance-of v2, v1, Lcom/android/launcher3/BubbleTextView;

    const-string v3, "BatchDragViewManager"

    const-string v4, "Drag"

    if-nez v2, :cond_2d

    const-string v0, "batch drag must long click on BubbleTextView!"

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_67

    invoke-static {}, Lcom/android/launcher/UiConfig;->getCols()I

    move-result v2

    invoke-static {}, Lcom/android/launcher/UiConfig;->getRows()I

    move-result v8

    mul-int/2addr v8, v2

    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v8, :cond_64

    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const v2, 0x7f120534

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v1, v2, v7}, Lcom/android/launcher/Launcher;->showToastMsg(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iput-object v5, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-void

    :cond_64
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->selectView(Landroid/view/View;)V

    :cond_67
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v2

    if-nez v2, :cond_83

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBatchDrag -- invalid condition, count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_83
    iget-object v8, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    sub-int/2addr v2, v7

    move-object v8, v5

    :goto_8a
    if-ltz v2, :cond_b9

    iget-object v9, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/BubbleTextView;

    if-nez v2, :cond_98

    move v10, v7

    goto :goto_99

    :cond_98
    move v10, v6

    :goto_99
    if-ne v9, v1, :cond_ad

    iget-object v8, v9, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v8}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForLongClick()V

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/BubbleTextView;

    invoke-direct {v0, v8, v10, v7}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->createBatchDragView(Lcom/android/launcher3/BubbleTextView;ZZ)Lcom/android/launcher/batchdrag/BatchDragView;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    :cond_ad
    iget-object v11, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-direct {v0, v9, v10, v6}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->createBatchDragView(Lcom/android/launcher3/BubbleTextView;ZZ)Lcom/android/launcher/batchdrag/BatchDragView;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b6
    add-int/lit8 v2, v2, -0x1

    goto :goto_8a

    :cond_b9
    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v2, v7}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    if-nez v8, :cond_c1

    return-void

    :cond_c1
    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string/jumbo v9, "startBatchDrag -- drag view created, mDragViewList.size = "

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v3, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher/batchdrag/BatchDragView;

    iput-object v9, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

    if-eqz v9, :cond_119

    if-le v2, v7, :cond_119

    invoke-virtual {v8}, Lcom/android/launcher/batchdrag/BatchDragView;->getRegistrationX()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher/batchdrag/BatchDragView;->setRegistrationX(I)V

    iget-object v9, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v8}, Lcom/android/launcher/batchdrag/BatchDragView;->getRegistrationY()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher/batchdrag/BatchDragView;->setRegistrationY(I)V

    iget-object v9, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

    iget-object v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mCountRender:Lcom/android/launcher/batchdrag/BatchDragCountRender;

    invoke-virtual {v9, v10}, Lcom/android/launcher/batchdrag/BatchDragView;->setBatchCountRender(Lcom/android/launcher/batchdrag/BatchDragCountRender;)V

    new-instance v9, Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;

    invoke-direct {v9}, Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;-><init>()V

    iput v2, v9, Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;->number:I

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/BubbleTextView;

    iget-object v11, v9, Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

    invoke-virtual {v10, v9}, Lcom/android/launcher/batchdrag/BatchDragView;->setDragCountParams(Lcom/android/launcher/batchdrag/BatchDragCountRender$DrawParams;)V

    :cond_119
    iget-object v9, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v9

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9, v1, v15}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v10, v14}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget v10, v14, Landroid/graphics/Rect;->left:I

    iget v11, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v15, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v8}, Lcom/android/launcher/batchdrag/BatchDragView;->getRegistrationX()I

    move-result v10

    iput v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationX:I

    invoke-virtual {v8}, Lcom/android/launcher/batchdrag/BatchDragView;->getRegistrationY()I

    move-result v10

    iput v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationY:I

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v10, v11, :cond_152

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v10

    iput v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationY:I

    goto :goto_158

    :cond_152
    iget v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationY:I

    if-gez v10, :cond_158

    iput v6, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationY:I

    :cond_158
    :goto_158
    iget-object v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v10}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_18c

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    iput v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationX:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    iput v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationY:I

    iget v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationX:I

    invoke-virtual {v8, v10}, Lcom/android/launcher/batchdrag/BatchDragView;->setRegistrationX(I)V

    iget v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationY:I

    invoke-virtual {v8, v10}, Lcom/android/launcher/batchdrag/BatchDragView;->setRegistrationY(I)V

    iget-object v8, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

    if-eqz v8, :cond_18c

    if-le v2, v7, :cond_18c

    iget v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationX:I

    invoke-virtual {v8, v2}, Lcom/android/launcher/batchdrag/BatchDragView;->setRegistrationX(I)V

    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mHeadDragView:Lcom/android/launcher/batchdrag/BatchDragView;

    iget v8, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mRegistrationY:I

    invoke-virtual {v2, v8}, Lcom/android/launcher/batchdrag/BatchDragView;->setRegistrationY(I)V

    :cond_18c
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mBatchAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    iget-object v10, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    :goto_1a3
    if-ge v6, v13, :cond_286

    iget-object v7, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mDragViewList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/android/launcher/batchdrag/BatchDragView;

    const/16 v7, 0x8

    invoke-virtual {v8, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v10}, Lcom/android/launcher/batchdrag/BatchDragView;->getOriginalView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/BubbleTextView;

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v16, v5

    instance-of v5, v11, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    if-eqz v5, :cond_1cd

    move-object v5, v11

    check-cast v5, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    invoke-interface {v5}, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;->getDragSource()Lcom/android/launcher3/DragSource;

    move-result-object v5

    goto :goto_1cf

    :cond_1cd
    move-object/from16 v5, v16

    :goto_1cf
    move/from16 v16, v7

    instance-of v7, v5, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v7, :cond_1f1

    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v7, v11}, Lcom/android/launcher3/folder/OplusFolder;->itemStartBatchDrag(Landroid/view/View;)V

    move-object/from16 v25, v8

    iget-object v8, v7, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v8}, Lcom/android/launcher3/folder/IFolderExt;->isOpenedOrAnimating()Z

    move-result v8

    if-eqz v8, :cond_1e9

    invoke-virtual {v9, v10, v12}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    goto :goto_208

    :cond_1e9
    invoke-virtual {v7}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v7

    invoke-virtual {v9, v7, v12}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    goto :goto_208

    :cond_1f1
    move-object/from16 v25, v8

    instance-of v7, v5, Lcom/android/launcher3/Workspace;

    if-eqz v7, :cond_255

    iget-object v7, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v7, v11}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v7

    if-eqz v7, :cond_202

    invoke-virtual {v7, v11}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    :cond_202
    invoke-direct {v0, v11}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->clearChildLayoutParams(Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {v9, v11, v12}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    :goto_208
    invoke-virtual {v11, v14}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget v7, v14, Landroid/graphics/Rect;->left:I

    iget v8, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v7, v13, -0x1

    if-ne v6, v7, :cond_21a

    const/4 v7, 0x1

    move/from16 v24, v7

    goto :goto_21c

    :cond_21a
    move/from16 v24, v16

    :goto_21c
    const/high16 v7, 0x3f800000  # 1.0f

    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v16, 0x3f800000  # 1.0f

    const/high16 v17, 0x3f800000  # 1.0f

    const/high16 v18, 0x3f800000  # 1.0f

    const/16 v19, 0x1a4

    sget-object v20, Lcom/android/common/config/AnimationConstant;->CURVE_MOVE_EASE:Landroid/view/animation/OplusBezierInterpolator;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v26, 0x0

    move-object v11, v12

    move-object v12, v15

    move/from16 v27, v13

    move v13, v7

    move-object/from16 v28, v14

    move v14, v8

    move-object v8, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move/from16 v22, v23

    move-object/from16 v23, v26

    invoke-virtual/range {v10 .. v24}, Lcom/android/launcher/batchdrag/BatchDragView;->animateView(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27a

    :cond_255
    move/from16 v27, v13

    move-object/from16 v28, v14

    move-object v8, v15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "batch drag view can not support this drag source! source = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", tag = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v3, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_27a
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    move-object v15, v8

    move-object/from16 v8, v25

    move/from16 v13, v27

    move-object/from16 v14, v28

    goto/16 :goto_1a3

    :cond_286
    iput v7, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mAnimateState:I

    iget-object v3, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mFolderSelectedViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_298
    :goto_298
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2cb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/folder/Folder;

    iget-object v6, v5, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2bb

    iget-object v6, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v7

    iget-object v8, v5, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    goto :goto_2bc

    :cond_2bb
    const/4 v9, 0x0

    :goto_2bc
    move-object/from16 v6, p3

    if-ne v5, v6, :cond_2c2

    if-nez v3, :cond_298

    :cond_2c2
    invoke-virtual {v5}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    iget-object v5, v5, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v5, v9}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    goto :goto_298

    :cond_2cb
    iget-object v3, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mBatchAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mBatchAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mReadyForTailAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x1a4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mReadyForTailAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_31a

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mReadyForTailAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v3, v0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher/batchdrag/BatchDragViewManager;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mReadyForTailAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;

    move-object/from16 v4, p2

    invoke-direct {v3, v0, v1, v4}, Lcom/android/launcher/batchdrag/BatchDragViewManager$1;-><init>(Lcom/android/launcher/batchdrag/BatchDragViewManager;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mReadyForTailAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const/16 v2, 0x49

    invoke-static {v1, v2}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;I)V

    sget-object v1, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    iget-object v2, v0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/common/util/SoundPlayerUtils;->playGatherSound(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->traceBatchDragStart()V

    return-void

    nop

    :array_31a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public updatePagePreviewButtonView()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string/jumbo v1, "updatePagePreviewButtonView -- selectedSize = "

    const-string v2, "Drag"

    const-string v3, "BatchDragViewManager"

    invoke-static {v1, v0, v2, v3}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    move v4, v2

    :goto_1d
    invoke-virtual {v1, v4}, Lcom/android/launcher/pagepreview/PagePreviewManager;->setFolderFormBtnEnable(Z)V

    iget-object v1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v4

    if-eqz v4, :cond_34

    if-lez v0, :cond_3a

    move v2, v3

    goto :goto_3a

    :cond_34
    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/common/util/GenericUtils;->isEnableUninstallButton(Lcom/android/launcher/Launcher;)Z

    move-result v2

    :cond_3a
    :goto_3a
    invoke-virtual {v1, v2}, Lcom/android/launcher/pagepreview/PagePreviewManager;->setRemoveBtnState(Z)V

    return-void
.end method

.method public updateSelectedViewListAfterPackageDeleted(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "BatchDragViewManager"

    const-string v2, "Drag"

    if-nez v0, :cond_8f

    if-eqz p2, :cond_8f

    iget-object v0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    if-eqz v0, :cond_8f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_8f

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v6, :cond_23

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_23

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    iget-object v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_59
    const-string/jumbo p1, "updateSelectedViewList , deleteViews size: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mSelectedViewList size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_83

    return-void

    :cond_83
    iget-object p1, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updatePagePreviewButtonView()V

    invoke-direct {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->updatePagePreviewListItems()V

    return-void

    :cond_8f
    :goto_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSelectedViewList , packageName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , userHandle: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , mSelectedViewList : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/batchdrag/BatchDragViewManager;->mSelectedViewList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
