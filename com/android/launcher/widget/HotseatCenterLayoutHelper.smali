.class public abstract Lcom/android/launcher/widget/HotseatCenterLayoutHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;
    }
.end annotation


# static fields
.field public static final ANIMATION_SCALE_DEFAULT:F = 0.8f

.field public static final DEBUG:Z

.field public static final DEFUALT_ANIM_DURATION:I = 0x12c

.field public static final DEFUALT_ANIM_DURATION_LONG:I = 0x12c

.field public static final DELAY_LOAD_DB_DURATION:I = 0xbb8

.field public static final DRAG_MODE_NONE:I = -0x1

.field public static final DRAG_MODE_TO_IN:I = 0x1

.field public static final DRAG_MODE_TO_IN_TO_OUT:I = 0x2

.field public static final DRAG_MODE_TO_OUT:I = 0x3

.field public static final DRAG_MODE_TO_OUT_TO_IN:I = 0x4

.field public static final MAX_DISTANCE_DIFF_POSTION:I = 0x1e

.field public static final MIN_RELAYOUT_DISTANCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HotseatCenterLayoutHelper"


# instance fields
.field public mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

.field public mContext:Landroid/content/Context;

.field public mCurrentNumHotseatIcons:I

.field public mDragModeType:I

.field public mDropTarget:Lcom/android/launcher3/DropTarget$DragObject;

.field public mHotseat:Lcom/android/launcher3/OplusHotseat;

.field public mLauncher:Lcom/android/launcher3/Launcher;

.field public mNeedForceRunOnDragEnd:Z

.field public mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field public mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mNeedForceRunOnDragEnd:Z

    iput-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCurrentNumHotseatIcons:I

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCurrentNumHotseatIcons:I

    iput p0, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    return-void
.end method


# virtual methods
.method public animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_28

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->HOTSEAT_EXPAND_TRANSITION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$1;-><init>(Lcom/android/launcher/widget/HotseatCenterLayoutHelper;Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;-><init>(Lcom/android/launcher/widget/HotseatCenterLayoutHelper;Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-object v0

    :array_28
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public canCheckErrorState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public checkHotseatHeightAndWidth()V
    .registers 12

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isPortrait()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/OplusDeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/4 v5, 0x1

    if-eqz v0, :cond_3c

    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    goto :goto_3d

    :cond_3c
    move v6, v5

    :goto_3d
    invoke-static {v2, v4, v6}, Lcom/android/launcher3/OplusDeviceProfile;->calculateHotseatCellWidth(III)I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_4a

    goto :goto_54

    :cond_4a
    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    :goto_54
    invoke-static {v3, v4, v5}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v3

    sget-boolean v4, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->DEBUG:Z

    const-string v5, " isPortrait: "

    const-string v6, "HotseatCenterLayoutHelper"

    const-string v7, "Hotseat"

    if-eqz v4, :cond_b9

    const-string v8, "checkHotseatHeightAndWidth -- mDragModeType = "

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v10, " CellWidth: "

    invoke-static {v8, v9, v5, v0, v10}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    iget-object v9, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " CellHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cw: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " FixedCellWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v9}, Lcom/android/launcher3/OplusHotseat;->getFixedCellWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " FixedCellHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v9}, Lcom/android/launcher3/OplusHotseat;->getFixedCellHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b9
    iget-object v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v8}, Lcom/android/launcher3/OplusHotseat;->getFixedCellWidth()I

    move-result v8

    if-ne v8, v2, :cond_d9

    iget-object v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v8

    if-ne v8, v2, :cond_d9

    iget-object v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v8}, Lcom/android/launcher3/OplusHotseat;->getFixedCellHeight()I

    move-result v8

    if-ne v8, v3, :cond_d9

    iget-object v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v8

    if-eq v8, v3, :cond_fd

    :cond_d9
    if-eqz v4, :cond_f8

    const-string v4, "checkHotseatHeightAndWidth: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " setCellDimensions: true"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f8
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/CellLayout;->setCellDimensions(II)V

    :cond_fd
    invoke-virtual {p0, v1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCommonPadding(Landroid/graphics/Rect;)V

    return-void
.end method

.method public checkHotseatItemDataAndUpdateDB()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseat/expand/FoldedScreenExpandHelper;->updateBgDataExpandItemInFoldedScreen(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ShortcutAndWidgetContainer;)V

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_77

    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_21
    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_54

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_51

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_51

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-nez v4, :cond_51

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_4e

    goto :goto_51

    :cond_4e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkHotseatItemDataAndUpdateDB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hotseat"

    const-string v4, "HotseatCenterLayoutHelper"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    const/16 v2, -0x65

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/model/OplusModelWriter;->moveItemsInDatabase(Ljava/util/ArrayList;II)V

    :cond_77
    :goto_77
    return-void
.end method

.method public getEmptyCellXYInShortcutsAndWidgets(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I
    .registers 11

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4b

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_48

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isPortrait()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v7, v5, v6}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectCellLayoutParamsWillCellX(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)I

    move-result v5

    if-ltz v5, :cond_48

    if-ge v5, v1, :cond_48

    aput-boolean v8, v2, v5

    goto :goto_48

    :cond_32
    iget v5, v6, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v5

    div-int/2addr v6, v5

    if-ge v6, v1, :cond_48

    aput-boolean v8, v2, v6

    :cond_48
    :goto_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_4b
    :goto_4b
    if-ge v3, v1, :cond_56

    aget-boolean p0, v2, v3

    if-nez p0, :cond_53

    move v0, v3

    goto :goto_56

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_56
    :goto_56
    return v0
.end method

.method public getNumHotseatIcons()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    return p0
.end method

.method public getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;
    .registers 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    new-array p0, p0, [Landroid/view/View;

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-object p0
.end method

.method public abstract initDragState(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public isDragViewOfHotseat(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 2

    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p1, -0x65

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isPointInSelfOverHotseat(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->shouldUseHotseatAsDropLayout(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0
.end method

.method public isPortrait()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->hasVerticalHotseat()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract onDragEnd(Z)V
.end method

.method public abstract onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)Z
.end method

.method public abstract onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z
.end method

.method public printAnimData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V
    .registers 3

    sget-boolean v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->DEBUG:Z

    if-eqz v0, :cond_28

    if-nez p1, :cond_7

    goto :goto_28

    :cond_7
    const-string/jumbo v0, "type: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " animObject- data: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HotseatCenterLayoutHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public printDBHotseatData()V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    new-instance v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$3;

    invoke-direct {v1, p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$3;-><init>(Lcom/android/launcher/widget/HotseatCenterLayoutHelper;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void
.end method

.method public printGridOccupancy(Lcom/android/launcher3/util/GridOccupancy;)V
    .registers 3

    sget-boolean v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->DEBUG:Z

    if-eqz v0, :cond_28

    if-nez p1, :cond_7

    goto :goto_28

    :cond_7
    const-string/jumbo v0, "type: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " occupied: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/util/GridOccupancy;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HotseatCenterLayoutHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;)V
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V

    return-void
.end method

.method public printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V
    .registers 10

    sget-boolean v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->DEBUG:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_176

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_176

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_176

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_172

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v2, :cond_172

    if-eqz v3, :cond_172

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_172

    const-string v4, " printHotseatDataState - type: "

    invoke-static {p2, v4}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " i: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pos:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") info:  title: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " container: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " id:  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " screenId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " cellXY: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " info hashcode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " childView.hashCode: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mShortcutsAndWidgets: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hotseat X: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " Y: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " shortWidgetContainer X: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " child X: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " child Y: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " hotseat alpha: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " v: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mShortcutsAndWidgets alpha: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " child alpha: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellLayoutLayoutParams: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hotseat"

    const-string v3, "HotseatCenterLayoutHelper"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_172
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    :cond_176
    :goto_176
    return-void
.end method

.method public printHotseatDataState([Landroid/view/View;)V
    .registers 9

    sget-boolean v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->DEBUG:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_65

    array-length v0, p1

    if-nez v0, :cond_b

    goto :goto_65

    :cond_b
    const/4 v0, 0x0

    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_65

    aget-object v1, p1, v0

    if-eqz v1, :cond_62

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v2, :cond_62

    if-eqz v1, :cond_62

    const-string/jumbo v3, "type: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    const-string v5, " i: "

    const-string v6, " pos:("

    invoke-static {v3, v4, v5, v0, v6}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") info: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hotseat"

    const-string v3, "HotseatCenterLayoutHelper"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_65
    :goto_65
    return-void
.end method

.method public abstract resetLayout()V
.end method

.method public updateCellXState(Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, 0xca

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->getComparedExpandViewTagAndBgdataItemInfo(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput p2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_4e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCellXState,targetPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", child:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Hotseat_expand"

    const-string v2, "HotseatCenterLayoutHelper"

    invoke-static {v1, v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectCellLayoutParamsx(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/CellLayout$LayoutParams;)I

    move-result p0

    iput p0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result p2

    add-int/2addr p2, p0

    iput p2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iput p2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    iget p0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    return-void
.end method

.method public updateCellXYState(Landroid/view/View;I)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, 0xca

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->getComparedExpandViewTagAndBgdataItemInfo(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    const-string v2, "HotseatCenterLayoutHelper"

    const-string v3, "Hotseat_expand"

    if-eqz p1, :cond_4b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCellXYState,targetPos:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", child:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusHotseat;->isHotseatUpdatingExpandWithOutAnim()Z

    move-result p1

    if-eqz p1, :cond_66

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_66

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p1

    if-nez p1, :cond_66

    const-string/jumbo p0, "no need updateCellXYState for update expand item without anim"

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_66
    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isPortrait()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_8b

    iput p2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput p2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {p1, v1}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectCellLayoutParamsx(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/CellLayout$LayoutParams;)I

    move-result p1

    iput p1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    iget p1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    goto :goto_a2

    :cond_8b
    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput p2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result p1

    iget p2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    mul-int/2addr p1, p2

    iput p1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->animY:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :goto_a2
    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v2

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v3

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateCellYState(Landroid/view/View;I)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCellYState,targetPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", child:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hotseat_expand"

    const-string v3, "HotseatCenterLayoutHelper"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iput p2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput p2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result p0

    iget p2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    mul-int/2addr p0, p2

    iput p0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iput p0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->animY:I

    iput p2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    return-void
.end method

.method public updateCommonPadding(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public updateGridSize()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_14

    :cond_e
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_14
    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateGridSize([Landroid/view/View;IZ)Z

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    const-string v0, " currentStandardModeNumHotseatIcons: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hotseat"

    const-string v1, "HotseatCenterLayoutHelper currentStandardModeNumHotseatIcons - updateGridSize"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract updateGridSize([Landroid/view/View;IZ)Z
.end method

.method public updateScreenId(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_13

    iget p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCurrentNumHotseatIcons:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto/16 :goto_8e

    :cond_13
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result p0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v1

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isNormalItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_51

    if-eqz v1, :cond_49

    add-int/2addr v0, p0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    add-int/2addr v0, p0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_6a

    :cond_49
    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/lit8 p0, p0, 0x1

    sub-int/2addr v0, p0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_6a

    :cond_51
    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_6a

    :cond_56
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_6a

    :cond_66
    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :goto_6a
    const-string/jumbo p0, "updateScreenState, info.screenId: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " info.cellY: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " info.cellX: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const-string v0, "Hotseat"

    const-string v1, "HotseatCenterLayoutHelper"

    invoke-static {p0, p1, v0, v1}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :goto_8e
    return-void
.end method

.method public updateScreenState(I)V
    .registers 4

    if-lez p1, :cond_33

    iput p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCurrentNumHotseatIcons:I

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCurrentNumHotseatIcons:I

    iput v0, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    const/4 p1, 0x0

    :goto_f
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_33

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDropTarget:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v1, :cond_2d

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eq v0, v1, :cond_30

    :cond_2d
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateScreenId(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_30
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_33
    return-void
.end method
