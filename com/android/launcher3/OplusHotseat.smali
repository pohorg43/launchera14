.class public Lcom/android/launcher3/OplusHotseat;
.super Lcom/android/launcher3/Hotseat;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/SystemWindowInsettable;
.implements Lcom/android/launcher/IPropertyAnimation;
.implements Lcom/android/launcher3/IUpdatableCellLayout;
.implements Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;
.implements Lcom/android/launcher3/taskbar/filemanager/FileManagerStateListenHelper$FileManagerVisibilityChangeListener;
.implements Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;
    }
.end annotation


# static fields
.field public static final CHECK_REPLACE_FOLDER_FINAL_ITEM_HAPPEN_DELAY_TIME:I = 0x32

.field private static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "OplusHotseat"


# instance fields
.field private mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

.field private mBackgroundVisible:Z

.field private mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

.field private mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

.field private mItemUpdateHelper:Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPendingCheckSizeTask:Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mReplaceIconsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mStashedHandlerHiddenListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskBarIconAlignCallBack:Ljava/lang/Runnable;

.field private mVisibleForTaskbarIconAlign:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/OplusHotseat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/OplusHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/OplusHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat;->mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat;->mReplaceIconsMap:Ljava/util/HashMap;

    new-instance p2, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    invoke-direct {p2}, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat;->mItemUpdateHelper:Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/OplusHotseat;->mVisibleForTaskbarIconAlign:Z

    iput-boolean p2, p0, Lcom/android/launcher3/OplusHotseat;->mBackgroundVisible:Z

    new-instance p3, Lcom/android/common/util/m;

    invoke-direct {p3, p0}, Lcom/android/common/util/m;-><init>(Lcom/android/launcher3/OplusHotseat;)V

    iput-object p3, p0, Lcom/android/launcher3/OplusHotseat;->mStashedHandlerHiddenListener:Ljava/util/function/Consumer;

    iget-object p3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result p1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->getItemInfoKeyForCheckSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/OplusHotseat;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mReplaceIconsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Runnable;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->initUpdateSizeRunable(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    return-object p0
.end method

.method private addDragListener(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_11
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/OplusHotseat;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/OplusHotseat;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->lambda$setVisibleForTaskbarIconAlign$2(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/launcher3/OplusHotseat;->lambda$animateChildToPosition$1(Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getItemInfoKeyForCheckSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handlerDragOverEvent(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 4

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    if-eqz v0, :cond_a

    const v0, 0x7f080628

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_a
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setForceDarkAllowed(Z)V

    :cond_14
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->setDockerBackground()V

    :cond_1d
    new-instance v0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    return-void
.end method

.method private initUpdateSizeRunable(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Runnable;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->getItemInfoKeyForCheckSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/OplusHotseat$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/OplusHotseat$2;-><init>(Lcom/android/launcher3/OplusHotseat;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mReplaceIconsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private initViewAddAndRemoveListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    new-instance v1, Lcom/android/launcher3/OplusHotseat$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/OplusHotseat$1;-><init>(Lcom/android/launcher3/OplusHotseat;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private static synthetic lambda$animateChildToPosition$1(Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 12

    invoke-virtual {p10}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/Float;

    invoke-virtual {p10}, Ljava/lang/Float;->floatValue()F

    move-result p10

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p10

    int-to-float p1, p1

    mul-float/2addr p1, v0

    int-to-float p2, p2

    mul-float/2addr p2, p10

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    int-to-float p1, p3

    mul-float/2addr p1, v0

    int-to-float p2, p4

    mul-float/2addr p2, p10

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    int-to-float p1, p5

    mul-float/2addr p1, v0

    int-to-float p2, p6

    mul-float/2addr p2, p10

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float p1, p7

    mul-float/2addr v0, p1

    int-to-float p1, p8

    mul-float/2addr p10, p1

    add-float/2addr p10, v0

    float-to-int p1, p10

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p9}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    :cond_19
    return-void
.end method

.method private synthetic lambda$setVisibleForTaskbarIconAlign$2(Z)V
    .registers 4

    const-string/jumbo v0, "setVisibleForTaskbarIconAlign, mTaskBarIconAlignCallBack run, visible = "

    const-string v1, ", lastVisible = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/OplusHotseat;->mVisibleForTaskbarIconAlign:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusHotseat"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher3/OplusHotseat;->mVisibleForTaskbarIconAlign:Z

    if-eqz p1, :cond_2b

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    return-void
.end method

.method public static needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z
    .registers 1

    instance-of p0, p0, Lcom/android/launcher3/OplusHotseat;

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->canShowHotseatCenterMode()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private removeDragListener(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_11
    return-void
.end method

.method private updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout$LayoutParams;II)V
    .registers 6

    if-eqz p1, :cond_b

    iput p4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p5, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto :goto_f

    :cond_b
    iput p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput p5, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    :goto_f
    iput p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    iput p5, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    return-void
.end method


# virtual methods
.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .registers 30

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_114

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v14, v0, v1}, Lcom/android/launcher3/CellLayout$LayoutParams;->updateSpanXY(II)V

    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_59

    iget v0, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    move/from16 v4, p2

    if-ne v0, v4, :cond_46

    iget v0, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    move/from16 v5, p3

    if-ne v0, v5, :cond_48

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object v3, v14

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/OplusHotseat;->updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout$LayoutParams;II)V

    return v13

    :cond_46
    move/from16 v5, p3

    :cond_48
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_59
    move/from16 v4, p2

    move/from16 v5, p3

    :goto_5d
    iget v9, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget v11, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz p7, :cond_98

    if-eqz p6, :cond_6c

    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_6e

    :cond_6c
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    :goto_6e
    iget v1, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v8, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v13, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v8

    move/from16 v20, v13

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget v1, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v21, 0x1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, v1

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    const/4 v0, 0x1

    goto :goto_99

    :cond_98
    move v0, v13

    :goto_99
    iput-boolean v0, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object v3, v14

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/OplusHotseat;->updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout$LayoutParams;II)V

    invoke-virtual {v7, v15}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget v0, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget v1, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v9, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iput v11, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iput v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v9, v0, :cond_c9

    if-ne v11, v1, :cond_c9

    if-ne v12, v2, :cond_c9

    if-ne v10, v3, :cond_c9

    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    return v4

    :cond_c9
    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_116

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    move/from16 v7, p4

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v7, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->GRID_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v7, v14, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/android/launcher3/e1;

    move-object v7, v13

    move-object v8, v14

    move/from16 v16, v10

    move v10, v0

    move v0, v12

    move v12, v1

    move-object v1, v13

    move v13, v0

    move-object v0, v14

    move v14, v2

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v3

    move-object/from16 v17, p1

    invoke-direct/range {v7 .. v17}, Lcom/android/launcher3/e1;-><init>(Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;)V

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    new-instance v3, Lcom/android/launcher3/OplusHotseat$3;

    invoke-direct {v3, v6, v0, v2, v1}, Lcom/android/launcher3/OplusHotseat$3;-><init>(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;I)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v0, p5

    int-to-long v0, v0

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    return v4

    :cond_114
    const/4 v0, 0x0

    return v0

    :array_116
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public canReceivePointerEvents()Z
    .registers 2

    invoke-super {p0}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public cancelAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

    :cond_a
    return-void
.end method

.method public cancelHotseatExpandAnimate()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->cancelHotseatExpandAnimate()V

    :cond_7
    return-void
.end method

.method public finishAnimation()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->finishAnimation()V

    :cond_7
    return-void
.end method

.method public getCellXFromOrder(I)I
    .registers 7

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_6f

    :cond_11
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result p0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v1

    const-string v2, "getCellXFromOrder,rank:"

    const-string v3, ",normalItemCount:"

    const-string v4, ",subscribeAndDividerCount:"

    invoke-static {v2, p1, v3, v0, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isSupportDockerExpandScreen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Taskbar"

    const-string v4, "OplusHotseat"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5a

    if-gt p0, p1, :cond_5a

    add-int v2, v0, p0

    if-ge p1, v2, :cond_5a

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v2, p1

    add-int/2addr v2, p0

    return v2

    :cond_5a
    if-nez v1, :cond_62

    if-ge p1, v0, :cond_62

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    return v0

    :cond_62
    return p1

    :cond_63
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    return p0

    :cond_6f
    :goto_6f
    invoke-super {p0, p1}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result p0

    return p0
.end method

.method public getCellYFromOrder(I)I
    .registers 3

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result p0

    return p0

    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    iget-boolean p0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz p0, :cond_1b

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    return v0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public getDragViewVisualCenterX(Lcom/android/launcher3/DropTarget$DragObject;)F
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->getDragViewVisualCenterX(Lcom/android/launcher3/DropTarget$DragObject;)F

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getFirstExpandItem(I)Landroid/view/View;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getFirstExpandItem(Lcom/android/launcher3/ShortcutAndWidgetContainer;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getFixedCellHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    return p0
.end method

.method public getFixedCellWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    return p0
.end method

.method public getUnusedHorizontalSpace()I
    .registers 5

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v3

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v2, v0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p0

    sub-int/2addr v1, v2

    return v1
.end method

.method public hasVerticalHotseat()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    return p0
.end method

.method public injectOnMeasureLog1(II)V
    .registers 6

    const-string v0, "Hotseat - onMeasure, cw = "

    const-string v1, " , ch = "

    const-string v2, " , mFixedCellWidth = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mFixedCellHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mCellWidth = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mCellHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    const-string p2, "Hotseat"

    const-string v0, "OplusHotseat"

    invoke-static {p1, p0, p2, v0}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public injectOnMeasureLog2(II)V
    .registers 7

    const-string v0, "Hotseat - onMeasure, mFixedCellWidth = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mFixedCellHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mCellWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mCellHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    const-string v2, " , childWidthSize = "

    const-string v3, " , childHeightSize = "

    invoke-static {v0, v1, v2, p1, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , mCountX = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , mCountY = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , padding = ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " )  , curLauncherMode , "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat"

    const-string p2, "OplusHotseat"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isDragging()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isDragging()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isDragingUpdateExpandData()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isDragingUpdateExpandData()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isFinishDragToInToOut()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isFinishDragToInToOut()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isHotseatExpandAnimating()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isHotseatExpandAnimating()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isHotseatUpdatingExpandWithOutAnim()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isHotseatUpdatingExpandWithOutAnim()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isMoving()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isMoving()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/launcher3/OplusHotseat;->initViewAddAndRemoveListener()V

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mStashedHandlerHiddenListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController;->addStashedHandlerHiddenListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mStashedHandlerHiddenListener:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController;->removeStashedHandlerHiddenListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDragEnd()V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->onDragEnd()V

    :cond_e
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->removeDragListener(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDragController;->resetDragFromHotseatToUnNormalAreaItem()V

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->addDragListener(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    invoke-virtual {v0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->initDragState(Lcom/android/launcher3/DropTarget$DragObject;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_1d
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/CellLayout;->onDragExit()V

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_11
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->handlerDragOverEvent(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDraw(Landroid/graphics/Canvas;)V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->updateDockerBgIfNecessary()V

    :cond_e
    return-void
.end method

.method public onFileManagerVisibilityChange(Ljava/lang/String;I)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v0, 0x8

    const-string v2, "fileManager visibility change"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {p2, p1, p0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerIconSwitchUtils;->openOrCloseFileManagerCallBack(Ljava/lang/Integer;Ljava/lang/String;Lcom/android/launcher3/ShortcutAndWidgetContainer;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_2e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p0

    const/high16 v0, 0x1000000

    or-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 13

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/Hotseat;->onLayout(ZIIII)V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getUnusedHorizontalSpace()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr p1, v0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getUnusedHorizontalSpace()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p3, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-boolean p3, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-nez p3, :cond_85

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int p3, p2, p1

    add-int v0, p2, p1

    move p1, p3

    :cond_85
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, v1, v0, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 23

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-super/range {p0 .. p2}, Lcom/android/launcher3/Hotseat;->onMeasure(II)V

    return-void

    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_3d

    :cond_30
    iget-object v4, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_3d
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v5

    if-nez v5, :cond_44

    goto :goto_48

    :cond_44
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    :goto_48
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v5

    sub-int v5, v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v6

    sub-int v6, v4, v7

    iget-object v7, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v7, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    sget-object v8, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v8}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v8

    if-eqz v8, :cond_7c

    iget-object v7, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v7}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->getFoldScreenNumShownHotseatIcons()I

    move-result v7

    :cond_7c
    iget-object v8, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    iget-object v9, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/OplusDeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v8

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    const/4 v10, 0x1

    if-ltz v9, :cond_91

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    if-gez v9, :cond_da

    :cond_91
    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v11, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v11

    sub-int v9, v3, v9

    iget v11, v8, Landroid/graphics/Rect;->top:I

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    sub-int v11, v4, v11

    iget-object v12, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    iget-boolean v13, v0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-nez v13, :cond_a9

    move v13, v7

    goto :goto_aa

    :cond_a9
    move v13, v10

    :goto_aa
    invoke-static {v9, v12, v13}, Lcom/android/launcher3/OplusDeviceProfile;->calculateHotseatCellWidth(III)I

    move-result v15

    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-boolean v12, v0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-nez v12, :cond_b7

    move v7, v10

    :cond_b7
    invoke-static {v11, v9, v7}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v7

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    if-ne v15, v9, :cond_c3

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    if-eq v7, v9, :cond_da

    :cond_c3
    iput v15, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iput v7, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v11, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v12, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    move/from16 v16, v7

    move/from16 v17, v9

    move/from16 v18, v11

    move-object/from16 v19, v12

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    :cond_da
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isMoving()Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_ea

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isDragging()Z

    move-result v7

    if-eqz v7, :cond_e8

    goto :goto_ea

    :cond_e8
    move v7, v9

    goto :goto_eb

    :cond_ea
    :goto_ea
    move v7, v10

    :goto_eb
    const-string v11, "OplusHotseat"

    const/high16 v12, 0x40000000  # 2.0f

    if-eqz v7, :cond_172

    iget-object v7, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v7

    if-nez v7, :cond_172

    iget-boolean v7, v0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v7, :cond_10d

    iget v7, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v0, v7, v10, v8, v13}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_11c

    :cond_10d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    iget v10, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v13

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v10, v13, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_11c
    iget v7, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v7, :cond_127

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v8, :cond_127

    move v5, v7

    move v6, v8

    goto :goto_130

    :cond_127
    if-eqz v1, :cond_12b

    if-nez v2, :cond_130

    :cond_12b
    const-string v1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-static {v11, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_130
    :goto_130
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v5, :cond_155

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v5, :cond_155

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_158

    :cond_155
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_158
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v1

    if-eqz v1, :cond_1f2

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_16b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->setDockerBackground()V

    goto/16 :goto_1f2

    :cond_16b
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_1f2

    :cond_172
    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v9

    if-nez v9, :cond_181

    if-nez v7, :cond_181

    goto :goto_182

    :cond_181
    move v10, v7

    :goto_182
    iget-boolean v7, v0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v7, :cond_19b

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int v6, v10, v5

    sub-int v5, v4, v6

    div-int/lit8 v5, v5, 0x2

    iget v7, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v9, v7, v8

    sub-int v9, v3, v9

    invoke-virtual {v0, v7, v5, v8, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    move v5, v9

    goto :goto_1b5

    :cond_19b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    move-result v7

    if-nez v7, :cond_1b5

    invoke-static {v0, v10}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v5

    sub-int v6, v3, v5

    div-int/lit8 v6, v6, 0x2

    iget v7, v8, Landroid/graphics/Rect;->top:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v9, v7, v8

    sub-int v9, v4, v9

    invoke-virtual {v0, v6, v7, v6, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    move v6, v9

    :cond_1b5
    :goto_1b5
    iget v7, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v7, :cond_1c0

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v8, :cond_1c0

    move v5, v7

    move v6, v8

    goto :goto_1ca

    :cond_1c0
    if-eqz v1, :cond_1c4

    if-nez v2, :cond_1ca

    :cond_1c4
    const-string/jumbo v1, "user catch RuntimeException CellLayout cannot have UNSPECIFIED dimensions"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ca
    :goto_1ca
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v5, :cond_1ef

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v5, :cond_1ef

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_1f2

    :cond_1ef
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :cond_1f2
    :goto_1f2
    iget-object v1, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRealTimeShownHotseatIcons:I

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result v2

    if-eq v1, v2, :cond_218

    iget-object v1, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_218

    iget-object v1, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getNormalItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRealTimeShownHotseatIcons:I

    :cond_218
    return-void
.end method

.method public onOpenCloseComplete(Z)V
    .registers 4

    const-string/jumbo v0, "onOpenCloseComplete open: "

    const-string v1, "OplusHotseat"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p1, :cond_16

    const/4 p1, 0x0

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateAllAppsBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/views/ActivityContext;)V

    :cond_16
    return-void
.end method

.method public onOpenCloseStart(Z)V
    .registers 4

    const-string/jumbo v0, "onOpenCloseStart open: "

    const-string v1, "OplusHotseat"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->updateAllAppsBtnCheckedOrUnCheckedState(ZLcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method public onSubscribeItemStateChange(Ljava/lang/String;Z)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSubscribeItemStateChange,settingsKey:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",enable:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Taskbar"

    const-string v1, "OplusHotseat"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeSwitchHelper;->onSubscribeItemStateChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/Hotseat;->onVisibilityAggregated(Z)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->checkExpandGuidState(Z)V

    :cond_c
    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 7

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "OplusHotseat"

    const-string/jumbo v1, "onWallpaperBrightnessChanged"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->setDockerBackground()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_55

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_52

    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v4, :cond_38

    goto :goto_52

    :cond_38
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_47

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_52

    :cond_47
    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_52

    check-cast v2, Lcom/android/launcher3/hotseat/HotseatDividerView;

    invoke-virtual {v2}, Lcom/android/launcher3/hotseat/HotseatDividerView;->updateDividerBg()V

    :cond_52
    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_55
    return-void
.end method

.method public rebindHotseatForFoldStateChange()V
    .registers 3

    const-string v0, "OplusHotseat"

    const-string/jumbo v1, "rebindHotseatForFoldStateChange"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->updateNumShownHotseatIconsIfNecessary(Lcom/android/launcher3/OplusDeviceProfile;)V

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->rectifyItemCellXIfNecessary(Lcom/android/launcher3/model/BgDataModel;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_2b

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->initWallpaper()V

    :cond_2b
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/OplusLauncherModel;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusLauncherModel;->startBindHotseatForFoldStateChange([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public requireAnimate()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public resetLayout(Z)V
    .registers 6

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->resetLayout()V

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->revertFixedWidthAndHeight()V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->removeAllViewsInLayout()V

    iput-boolean p1, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->updateNumShownHotseatIcons()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mHasVerticalHotseat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , numShownHotseatIcons = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    const-string/jumbo v3, "resetLayout"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_4a

    iget p1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    goto :goto_4f

    :cond_4a
    iget p1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    :goto_4f
    return-void
.end method

.method public revertFixedWidthAndHeight()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    return-void
.end method

.method public runOnceOnUpdateAnimatorEnd(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->runOnceOnUpdateAnimatorEnd(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public runTaskBarIconAlignCallBackIfNeed()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mTaskBarIconAlignCallBack:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mTaskBarIconAlignCallBack:Ljava/lang/Runnable;

    :cond_a
    return-void
.end method

.method public setAlpha(F)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p0, :cond_1c

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1c
    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->shouldPrintAlphaLog(FF)Z

    move-result p0

    if-eqz p0, :cond_45

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result p0

    if-eqz p0, :cond_45

    const-string/jumbo p0, "setAlpha "

    const-string v1, "; oldAlpha = "

    const-string v2, "; caller = "

    invoke-static {p0, p1, v1, v0, v2}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusHotseat"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method public setAnimAlpha(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public setAnimScaleX(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    :cond_9
    return-void
.end method

.method public setAnimScaleY(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_9
    return-void
.end method

.method public setAnimTransX(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_9
    return-void
.end method

.method public setAnimTransY(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_9
    return-void
.end method

.method public setAnimVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public setBackgroundVisible(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/OplusHotseat;->mBackgroundVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/launcher3/OplusHotseat;->mBackgroundVisible:Z

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_12

    return-void

    :cond_12
    if-eqz p1, :cond_17

    const/16 p1, 0xff

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setDockerBackground()V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getHotseatBgDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/OplusHotseat;->mBackgroundVisible:Z

    if-eqz v1, :cond_d

    const/16 v1, 0xff

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher/LauncherSimpleModeHelper;->sSimpleModeLoadDelayFlag:Z

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    const-string p0, "OplusHotseat"

    const-string/jumbo p1, "simple mode changing keep hot seat invisible"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setVisibleForTaskbarIconAlign(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/OplusHotseat;->mVisibleForTaskbarIconAlign:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isSkipUpdateTaskbarIconAlign()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/android/common/util/q;

    invoke-direct {v0, p0, p1}, Lcom/android/common/util/q;-><init>(Lcom/android/launcher3/OplusHotseat;Z)V

    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mTaskBarIconAlignCallBack:Ljava/lang/Runnable;

    return-void

    :cond_19
    const-string/jumbo v0, "setVisibleForTaskbarIconAlign, visible = "

    const-string v1, ", lastVisible = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/OplusHotseat;->mVisibleForTaskbarIconAlign:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusHotseat"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher3/OplusHotseat;->mVisibleForTaskbarIconAlign:Z

    if-eqz p1, :cond_44

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    :goto_45
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 16

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, -0x1

    const-string v4, "OplusHotseat"

    if-eqz v2, :cond_36

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_2c

    :cond_25
    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_2c
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_149

    :cond_36
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v2

    iget v3, v1, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v5

    const v6, 0x7f07098e

    const/4 v7, 0x1

    if-eqz v5, :cond_d8

    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/common/config/ScreenInfo;->getRealNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v5

    iget-object v8, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07098f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07098d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const-string/jumbo v10, "setWindowInsets"

    const-string v11, ",windowInsets.bottom:"

    invoke-static {v10, v11}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    const-string v12, ",hotseatMarginBottomPx"

    const-string v13, ",hasNavigationBar: "

    invoke-static {v10, v11, v12, v3, v13}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v11, ",marginBottomWithNav:"

    const-string v12, ",realNavigationBarHeight"

    invoke-static {v10, v2, v11, v6, v12}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",marginBottomWithGestureNav:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_cd

    sget-object v9, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v9}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v9}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v9

    iget-object v10, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarStashedHeight(Landroid/content/Context;)I

    move-result v10

    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v3

    if-eqz v2, :cond_c6

    move v5, v6

    goto :goto_cb

    :cond_c6
    if-eqz v9, :cond_c9

    goto :goto_cb

    :cond_c9
    add-int v5, v10, v8

    :goto_cb
    add-int/2addr v11, v5

    goto :goto_e8

    :cond_cd
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    if-eqz v2, :cond_d3

    goto :goto_d5

    :cond_d3
    add-int v6, v5, v9

    :goto_d5
    add-int v11, v8, v6

    goto :goto_e8

    :cond_d8
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_e6

    iget-object v2, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_e6
    add-int v11, v5, v3

    :goto_e8
    iget-object v2, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v7}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v2

    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_fd

    iget-boolean v3, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v3, :cond_fa

    if-eqz v11, :cond_fc

    :cond_fa
    if-ge v11, v2, :cond_fd

    :cond_fc
    move v11, v2

    :cond_fd
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_11b

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v2

    if-eqz v2, :cond_11b

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v11, v2

    :cond_11b
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v2, :cond_147

    sget-object v2, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v3

    if-eqz v3, :cond_147

    invoke-virtual {v2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_147

    iget-object v5, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v5}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomSearchHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v11, v2

    const-string v2, "bottomMargin = "

    const-string v5, "BottomSearchManager"

    invoke-static {v2, v11, v4, v5}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    instance-of v2, v3, Lcom/android/launcher3/SystemWindowInsettable;

    if-eqz v2, :cond_147

    check-cast v3, Lcom/android/launcher3/SystemWindowInsettable;

    invoke-interface {v3, p1}, Lcom/android/launcher3/SystemWindowInsettable;->setWindowInsets(Landroid/graphics/Rect;)V

    :cond_147
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_149
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_15c

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->updateScreenInfo()V

    :cond_15c
    invoke-virtual {v1}, Lcom/android/launcher3/OplusDeviceProfile;->getHotseatLayoutPaddingWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_19d

    const-string v2, "Hotseat - setWindowInsets, lp.bottomMargin  = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , windowInsets = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , padding = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , curLauncherMode , "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",lp.height:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const-string v3, "Hotseat"

    invoke-static {v2, p1, v3, v4}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_19d
    iget p1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startAnimationForDeletePanel(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_32

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/launcher/uninstall/HotseatAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

    invoke-virtual {v0}, Lcom/android/launcher/uninstall/HotseatAnimation;->cancel()V

    :cond_24
    new-instance v0, Lcom/android/launcher/uninstall/HotseatAnimation;

    iget-object v1, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher/uninstall/HotseatAnimation;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/uninstall/HotseatAnimation;->start(ZZ)V

    :cond_32
    :goto_32
    return-void
.end method

.method public startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateCellLayoutItemColor()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mItemUpdateHelper:Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;->updateCellLayoutItemColor(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public updateCountXForItemAdded()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    const-string/jumbo v0, "updateCountXForItemAdded,mCountX:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseat"

    invoke-static {v0, p0, v1, v2}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDockerBgIfNecessary()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-eqz v1, :cond_12

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->setDockerBackground()V

    goto :goto_1a

    :cond_12
    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public updateGridSize(II)V
    .registers 10

    const-string/jumbo v0, "updateGridSize,x:"

    const-string v1, ",y:"

    invoke-static {v0, p1, v1, p2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    const-string v2, "OplusHotseat"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    new-instance p1, Lcom/android/launcher3/util/GridOccupancy;

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    return-void
.end method

.method public updateGridSize([Landroid/view/View;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->updateGridSize([Landroid/view/View;I)V

    :cond_7
    return-void
.end method

.method public updateGridSizeWithoutRequestLayout(IILcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/util/GridOccupancy;)V
    .registers 11

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    sget-boolean v0, Lcom/android/launcher3/OplusHotseat;->DEBUG:Z

    const-string v1, "OplusHotseat"

    if-eqz v0, :cond_26

    const-string v2, "mCountX: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCountY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    const-string v4, " x: "

    const-string v5, " y: "

    invoke-static {v2, v3, v4, p1, v5}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v2, p2, v1}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_26
    if-eqz v0, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    if-eqz p1, :cond_43

    const-string/jumbo p1, "mOccupied: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p2}, Lcom/android/launcher3/util/GridOccupancy;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    if-eqz v0, :cond_60

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    if-eqz p1, :cond_60

    const-string/jumbo p1, "mTmpOccupied: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p2}, Lcom/android/launcher3/util/GridOccupancy;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    iput-object p3, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iput-object p4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    return-void
.end method

.method public updateHotseatDataState()V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->resetLayout()V

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    invoke-virtual {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->dealErrorState()V

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->updateGridSize()V

    :cond_18
    return-void
.end method

.method public updateHotseatLauoutIfNeeded()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_58

    if-eqz v0, :cond_58

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_58

    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_26

    return-void

    :cond_26
    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_58

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_55

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    const-string/jumbo v2, "updateHotseatLauoutIfNeeded childWidthSize: "

    const-string v3, " ,mIconVisiableSizePx: "

    invoke-static {v2, v1, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    const-string v4, "OplusHotseat"

    invoke-static {v2, v3, v4}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-lez v1, :cond_58

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    if-ge v1, v0, :cond_58

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_58

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_58
    :goto_58
    return-void
.end method

.method public updateItemCellXState(Landroid/view/View;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->updateItemCellXState(Landroid/view/View;I)V

    :cond_7
    return-void
.end method

.method public updateSizeAfterDeleteView(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mPendingCheckSizeTask:Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;

    if-nez v0, :cond_11

    new-instance v0, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;-><init>(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/OplusHotseat$1;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mPendingCheckSizeTask:Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;

    goto :goto_13

    :cond_11
    iput-boolean p1, v0, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;->mNeedUpdateDb:Z

    :goto_13
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mPendingCheckSizeTask:Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat$PendingCheckSizeTask;->start(Landroid/os/Handler;)V

    goto :goto_30

    :cond_2b
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->checkSize(Z)V

    :cond_30
    :goto_30
    return-void
.end method
