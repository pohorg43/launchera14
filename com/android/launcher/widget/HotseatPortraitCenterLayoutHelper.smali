.class public Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;
.super Lcom/android/launcher/widget/HotseatCenterLayoutHelper;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HotseatPortraitCenterLayoutHelper"


# instance fields
.field private isDragingExpandChange:Z

.field private isFinishToInToOut:Z

.field private isFinishToOut:Z

.field private isStartAnim:Z

.field private lastToInTargCellx:I

.field public mCommonBottom:I

.field public mCommonTop:I

.field private mDragViewVisualCenter:[F

.field private mHasDragOverHotseat:Z

.field private mIsDragging:Z

.field private mOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

.field private mPreNumHotseatIcons:I

.field private mTabletTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

.field private mTmpOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

.field private mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

.field private mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

.field private mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

.field private mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

.field private mWillEndDrag:Z

.field private needRemoveView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->lastToInTargCellx:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToInToOut:Z

    iput-boolean p2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToOut:Z

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isDragingExpandChange:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->needRemoveView:Landroid/view/View;

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isStartAnim:Z

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mHasDragOverHotseat:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mDragViewVisualCenter:[F

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initGridOccupancyArray()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->lambda$tabletAnimateExpandRemoveAlpha$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;[Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateViewCellXIncrease([Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;[Landroid/view/View;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateShortcutsAndWidgetsWidthAndHotSeatPadding(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->needRemoveView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isStartAnim:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->checkHotseatCountBeyond(I)V

    return-void
.end method

.method private buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;
    .registers 21

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIIIZ)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object v0

    return-object v0
.end method

.method private buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIIIZ)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;
    .registers 11

    new-instance p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setChildCount(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setOriginalView([Landroid/view/View;)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setViews([Landroid/view/View;)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setTargetCellX(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setDragObject(Lcom/android/launcher3/DropTarget$DragObject;)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setSreenWidth(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p7}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setNewDistance(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p8}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setOldDistance(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p10}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setUpdateDB(Z)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p9}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setShortWidgetTagetWidth(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->build()Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p0

    return-object p0
.end method

.method private checkHotseatCountBeyond(I)V
    .registers 4

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getHotseatItemAndDiverMaxCount()I

    move-result v0

    if-le p1, v0, :cond_34

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->needRemoveView:Landroid/view/View;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_34

    invoke-direct {p0, v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getOriginalMaxCellxViews([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkHotseatCountBeyond: ChildCount Error："

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HotseatPortraitCenterLayoutHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method private checkSameSizeButNoIncrease(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getMaxCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lt p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private commonAnimPositionCallBacks()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$1;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private dealHappenSameView(Landroid/view/View;[Z)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_6
    array-length v3, p2

    if-ge v1, v3, :cond_12

    aget-boolean v3, p2, v1

    if-eqz v3, :cond_f

    add-int/lit8 v2, v2, 0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v2, v1, :cond_1b

    return-void

    :cond_1b
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v0

    :goto_28
    if-eqz v1, :cond_7e

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ltz v1, :cond_9d

    const/4 v3, -0x1

    move v4, v0

    :goto_36
    array-length v5, p2

    if-ge v4, v5, :cond_42

    aget-boolean v5, p2, v4

    if-nez v5, :cond_3f

    move v3, v4

    goto :goto_42

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_42
    :goto_42
    iget-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v2

    if-eq v3, p2, :cond_4f

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    goto :goto_9d

    :cond_4f
    :goto_4f
    iget-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_9d

    iget-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7b

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v2, :cond_68

    goto :goto_7b

    :cond_68
    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-le v2, v1, :cond_72

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    goto :goto_7b

    :cond_72
    if-ne v2, v1, :cond_7b

    if-eq p1, p2, :cond_7b

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    :cond_7b
    :goto_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_7e
    :goto_7e
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_9d

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9a

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez p2, :cond_97

    goto :goto_9a

    :cond_97
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    :cond_9a
    :goto_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    :cond_9d
    :goto_9d
    return-void
.end method

.method private getChildeViewByCellx(I[Landroid/view/View;)Landroid/view/View;
    .registers 5

    const/4 p0, 0x0

    :goto_1
    array-length v0, p2

    if-ge p0, v0, :cond_16

    aget-object v0, p2, p0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v1, p1, :cond_13

    return-object v0

    :cond_13
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildeViewByCellxFilterDragobject(I[Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)Landroid/view/View;
    .registers 7

    const/4 p0, 0x0

    :goto_1
    array-length v0, p2

    if-ge p0, v0, :cond_1a

    aget-object v0, p2, p0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v2, p1, :cond_17

    iget-object v2, p3, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eq v2, v1, :cond_17

    return-object v0

    :cond_17
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMaxCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I
    .registers 4

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p0, v1, :cond_1c

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v0, v1, :cond_19

    move v0, v1

    :cond_19
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_1c
    return v0
.end method

.method private getOriginalMaxCellxViews([Landroid/view/View;)Landroid/view/View;
    .registers 8

    array-length p0, p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_1a

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_14

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-le v5, v0, :cond_17

    :cond_14
    iget v0, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    move-object v1, v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1a
    return-object v1
.end method

.method private getTargetCellxAndCanMergeFold(Lcom/android/launcher3/ShortcutAndWidgetContainer;ILcom/android/launcher3/DropTarget$DragObject;)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/ShortcutAndWidgetContainer;",
            "I",
            "Lcom/android/launcher3/DropTarget$DragObject;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getMaxDistanceForFolderCreation()F

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getDragViewVisualCenterX(Lcom/android/launcher3/DropTarget$DragObject;)F

    move-result p3

    new-array v1, p2, [F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1d
    const/4 v6, 0x1

    if-ge v5, p2, :cond_a3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v7

    if-eqz v7, :cond_82

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-lt v8, p2, :cond_35

    goto :goto_9f

    :cond_35
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v8

    if-eqz v8, :cond_5e

    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/lit8 v9, v3, -0x1

    if-lt v8, v9, :cond_5e

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getX()F

    move-result v9

    iget v10, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v10, v6

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v6

    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v6

    mul-int/2addr v6, v10

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v10

    add-int/2addr v10, v6

    div-int/lit8 v10, v10, 0x2

    int-to-float v6, v10

    add-float/2addr v9, v6

    aput v9, v1, v8

    goto :goto_76

    :cond_5e
    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getX()F

    move-result v9

    iget v10, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v6

    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v6

    mul-int/2addr v6, v10

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v9, v6

    aput v9, v1, v8

    :goto_76
    iget v6, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v6, v1, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    :cond_82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getX()F

    move-result v7

    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v6

    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v6

    mul-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v7, v6

    aput v7, v1, v5

    aget v6, v1, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1d

    :cond_a3
    move p0, v4

    :goto_a4
    if-ge v4, p2, :cond_b8

    aget p1, v1, v4

    add-float/2addr p1, v0

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_b5

    aget p1, v1, v4

    sub-float/2addr p1, v0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_b5

    move p0, v6

    :cond_b5
    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    :cond_b8
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    new-instance p2, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private getViewsOrderByCellX([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;
    .registers 8

    invoke-direct {p0, p3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getMaxCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result p3

    new-array v0, p2, [Landroid/view/View;

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-gt v1, p3, :cond_19

    invoke-direct {p0, v1, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getChildeViewByCellx(I[Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_16

    if-ge v2, p2, :cond_16

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    return-object v0
.end method

.method private getViewsOrderByCellXWithoutDragObject([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/DropTarget$DragObject;)[Landroid/view/View;
    .registers 8

    invoke-direct {p0, p3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getMaxCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result p3

    new-array p2, p2, [Landroid/view/View;

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-gt v0, p3, :cond_17

    invoke-direct {p0, v0, p1, p4}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getChildeViewByCellxFilterDragobject(I[Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_14

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    return-object p2
.end method

.method private initGridOccupancyArray()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    iget v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mPreNumHotseatIcons:I

    if-ne v1, v0, :cond_f

    return-void

    :cond_f
    iput v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mPreNumHotseatIcons:I

    new-array v1, v0, [Lcom/android/launcher3/util/GridOccupancy;

    iput-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    new-array v1, v0, [Lcom/android/launcher3/util/GridOccupancy;

    iput-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTmpOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_33

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    new-instance v3, Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTmpOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    new-instance v3, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_1a

    :cond_33
    return-void
.end method

.method private initTabletTypeToInAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTabletTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTabletTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private initTypeToInAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$7;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$7;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private initTypeToInToOutAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$5;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$5;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private initTypeToOutAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private initTypeToOutToInAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$4;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$4;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private synthetic lambda$tabletAnimateExpandRemoveAlpha$0(Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L  # 0.5

    cmpl-double p1, v1, v3

    if-lez p1, :cond_25

    iget-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isStartAnim:Z

    if-nez p1, :cond_25

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isStartAnim:Z

    iget-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTabletTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    :cond_25
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->needRemoveView:Landroid/view/View;

    if-eqz p1, :cond_3e

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->needRemoveView:Landroid/view/View;

    const v1, 0x3f4ccccd  # 0.8f

    const v2, 0x3e4ccccc  # 0.19999999f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->needRemoveView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_3e
    return-void
.end method

.method private resetShortCutsLayoutWidthTypeToInToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 15

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_15

    return v1

    :cond_15
    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v2, v3}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x1e

    const/4 v5, 0x0

    if-ge v2, v4, :cond_2a

    return v5

    :cond_2a
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v2

    new-array v6, v2, [Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getMaxCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result v7

    const/4 v8, -0x1

    move v9, v5

    move v10, v8

    :goto_41
    if-gt v9, v7, :cond_57

    invoke-direct {p0, v9, v4}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getChildeViewByCellx(I[Landroid/view/View;)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_4e

    if-ge v9, v2, :cond_54

    aput-object v12, v6, v9

    goto :goto_54

    :cond_4e
    if-ge v9, v2, :cond_53

    const/4 v10, 0x0

    aput-object v10, v6, v9

    :cond_53
    move v10, v9

    :cond_54
    :goto_54
    add-int/lit8 v9, v9, 0x1

    goto :goto_41

    :cond_57
    add-int/lit8 v2, v3, -0x1

    if-ne v7, v2, :cond_5c

    move v10, v3

    :cond_5c
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExceptExpandItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result v2

    if-le v10, v2, :cond_6b

    return v5

    :cond_6b
    if-ne v10, v8, :cond_6e

    return v5

    :cond_6e
    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initTypeToInToOutAnimListener()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_af

    const-string/jumbo v2, "resetShortCutsLayoutWidthTypeToInToOut -- mDragModeType"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v7, " targetWidth: "

    const-string v8, " ShortcutAndWidgetContainerWidth: "

    invoke-static {v2, v5, v7, v11, v8}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "getCellWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "childCount: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Hotseat"

    const-string v7, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v5, v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v2

    if-eqz v2, :cond_b7

    iput-boolean v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToInToOut:Z

    :cond_b7
    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int v8, v2, v5

    sub-int v2, v8, v11

    const/4 v5, 0x2

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int v0, v8, v0

    div-int/2addr v0, v5

    iput v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    move-object v2, p0

    move-object v5, v6

    move v6, v10

    move-object v7, p1

    move v10, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iput v0, p1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mSubscribeAndDividerCount:I

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    return v1
.end method

.method private resetShortCutsLayoutWidthTypeToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 15

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToOut:Z

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToOut:Z

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_19

    return v2

    :cond_19
    iget-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-eqz v0, :cond_1e

    return v2

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ne v4, v2, :cond_27

    return v2

    :cond_27
    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v3, v4}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectHotseatTargetWidthTypeToOut(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v12

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v5, 0x1e

    if-ge v3, v5, :cond_3b

    return v1

    :cond_3b
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v6, v1

    :goto_48
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_72

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6f

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eq v8, v9, :cond_6f

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v9, v7, v8}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectCellLayoutParamsWillCellX(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :cond_72
    move v6, v1

    move v7, v6

    :goto_74
    if-ge v6, v4, :cond_84

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_81

    move v7, v6

    :cond_81
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    :cond_84
    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v6

    new-array v8, v6, [Landroid/view/View;

    move v9, v1

    :goto_8b
    if-gt v9, v7, :cond_a8

    if-le v6, v9, :cond_a5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    aput-object v10, v8, v9

    :cond_a5
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    :cond_a8
    const/4 v6, -0x1

    move v9, v1

    move v7, v6

    :goto_ab
    if-ge v9, v4, :cond_bd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-nez v10, :cond_ba

    move v7, v9

    :cond_ba
    add-int/lit8 v9, v9, 0x1

    goto :goto_ab

    :cond_bd
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v3

    if-eqz v3, :cond_cc

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExceptExpandItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result v3

    if-le v7, v3, :cond_cc

    return v1

    :cond_cc
    if-ne v7, v6, :cond_cf

    return v1

    :cond_cf
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_114

    const-string/jumbo v1, "resetShortCutsLayoutWidthTypeToOut -- mDragModeType:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v6, ",targetCellX:"

    const-string v9, ",targetWidth:"

    invoke-static {v1, v3, v6, v7, v9}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ShortcutAndWidgetContainerWidth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",getCellWidth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",childCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Hotseat"

    const-string v6, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v1, v7, v3, v6}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_114
    invoke-virtual {p0, v8}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initTypeToOutAnimListener()V

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    sub-int v9, v1, v3

    sub-int v1, v9, v12

    div-int/lit8 v10, v1, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int v0, v9, v0

    div-int/lit8 v11, v0, 0x2

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    move-object v3, p0

    move-object v6, v8

    move-object v8, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iput v0, p1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mSubscribeAndDividerCount:I

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p1

    if-eqz p1, :cond_153

    iput-boolean v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToOut:Z

    :cond_153
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    return v2
.end method

.method private resetShortCutsLayoutWidthTypeToOutToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 14

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_26

    :cond_21
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v2, v3}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x1e

    const/4 v5, 0x0

    if-ge v2, v4, :cond_41

    return v5

    :cond_41
    const-string/jumbo v2, "resetShortCutsLayoutWidthTypeToOutToIn -- mDragModeType"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    add-int/lit8 v2, v3, -0x1

    invoke-direct {p0, v0, v2, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getTargetCellxAndCanMergeFold(Lcom/android/launcher3/ShortcutAndWidgetContainer;ILcom/android/launcher3/DropTarget$DragObject;)Landroid/util/Pair;

    move-result-object v2

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_72

    iget-boolean v7, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-nez v7, :cond_72

    return v5

    :cond_72
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExceptExpandItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result v2

    if-lt v7, v2, :cond_89

    return v5

    :cond_89
    const/4 v2, -0x1

    if-ne v7, v2, :cond_8d

    return v5

    :cond_8d
    invoke-direct {p0, v6, v3, v0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getViewsOrderByCellXWithoutDragObject([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/DropTarget$DragObject;)[Landroid/view/View;

    move-result-object v5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_cb

    const-string/jumbo v2, "resetShortCutsLayoutWidthTypeToOutToIn -- mDragModeType:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v9, ",targetWidth: "

    const-string v10, ",ShortcutAndWidgetContainerWidth: "

    invoke-static {v2, v8, v9, v11, v10}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",getCellWidth: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",childCount: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cb
    invoke-virtual {p0, v5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initTypeToOutToInAnimListener()V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    sub-int v8, v2, v4

    sub-int v2, v8, v11

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v10, v0, 0x2

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    move-object v2, p0

    move-object v4, v6

    move v6, v7

    move-object v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mSubscribeAndDividerCount:I

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v2, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_112

    iget-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-eqz p1, :cond_10c

    goto :goto_112

    :cond_10c
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    goto :goto_117

    :cond_112
    :goto_112
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :goto_117
    return v1
.end method

.method private resetShortcutsLayoutWidthTypeToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 15

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    const-string/jumbo v5, "resetShortCutsLayoutWidthTypeToIn -- mDragModeType:"

    const-string v6, "HotseatPortraitCenterLayoutHelper"

    const-string v7, "Hotseat"

    if-eqz v4, :cond_33

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v9, ",childCount="

    const-string v10, " numShownHotseatIcons: "

    invoke-static {v4, v8, v9, v3, v10}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v4, v2, v7, v6}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_33
    const/4 v12, 0x0

    if-ne v2, v3, :cond_37

    return v12

    :cond_37
    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v4, v3}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectHotseatTargetWidthTypeToIn(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v11

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v8, ",targetWidth:"

    const-string v9, " ShortcutAndWidgetContainerWidth:"

    invoke-static {v4, v5, v8, v11, v9}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",getCellWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",childCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v6, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    const/16 v4, 0x1e

    if-nez v3, :cond_8b

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    sub-int/2addr p1, v11

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v4, :cond_86

    invoke-direct {p0, v11}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateShortcutsAndWidgetsWidthAndHotSeatPadding(I)V

    :cond_86
    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    return v1

    :cond_8b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v4, :cond_97

    return v12

    :cond_97
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0, v0, v3, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getTargetCellxAndCanMergeFold(Lcom/android/launcher3/ShortcutAndWidgetContainer;ILcom/android/launcher3/DropTarget$DragObject;)Landroid/util/Pair;

    move-result-object v5

    iget-object v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v8}, Lcom/android/launcher3/hotseat/HotseatDragController;->isOutOfNormalAreaSpace(Lcom/android/launcher3/OplusHotseat;)Z

    move-result v8

    if-eqz v8, :cond_b0

    const-string p0, "hotseat normal area out of space"

    invoke-static {v7, v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_b0
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_ca

    iget-boolean v6, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-nez v6, :cond_ca

    invoke-direct {p0, v4, v3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_c9

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_c9
    return v12

    :cond_ca
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v5

    if-eqz v5, :cond_e1

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v5}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExceptExpandItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result v5

    if-le v6, v5, :cond_e1

    return v12

    :cond_e1
    const/4 v5, -0x1

    if-ne v6, v5, :cond_e5

    return v12

    :cond_e5
    invoke-direct {p0, v4, v2, v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getViewsOrderByCellX([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initTypeToInAnimListener()V

    invoke-virtual {p0, v5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v7, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    sub-int v8, v2, v7

    sub-int v2, v8, v11

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v10, v0, 0x2

    iput v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mSubscribeAndDividerCount:I

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v2, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_135

    iget-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-eqz p1, :cond_127

    goto :goto_135

    :cond_127
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p1

    if-eqz p1, :cond_12f

    iput-boolean v12, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToInToOut:Z

    :cond_12f
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    goto :goto_13a

    :cond_135
    :goto_135
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :goto_13a
    return v1
.end method

.method private resetTabletShortcutsLayoutWidthTypeToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 17

    move-object v10, p0

    move-object/from16 v11, p1

    iget-object v0, v10, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTabletTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v12, 0x1

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v10, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->needRemoveView:Landroid/view/View;

    if-eqz v0, :cond_13

    return v12

    :cond_13
    iget-object v0, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getHotseatItemAndDiverMaxCount()I

    move-result v1

    iget-object v2, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v1, v12

    const/4 v13, 0x0

    if-le v2, v1, :cond_25

    move v2, v12

    goto :goto_26

    :cond_25
    move v2, v13

    :goto_26
    iget-object v3, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v12, :cond_39

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetShortcutsLayoutWidthTypeToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    return v0

    :cond_39
    if-nez v2, :cond_40

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetShortcutsLayoutWidthTypeToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    return v0

    :cond_40
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v2

    const-string/jumbo v3, "resetTabletShortcutsLayoutWidthTypeToIn -- mDragModeType"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " numShownHotseatIcons: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, v1, :cond_6c

    return v13

    :cond_6c
    iget-object v4, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v4, v1}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectHotseatTargetWidthTypeToIn(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v9

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v6, " targetWidth: "

    const-string v7, " ShortcutAndWidgetContainerWidth: "

    invoke-static {v3, v4, v6, v9, v7}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "getCellWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "childCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_ba

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_b5

    invoke-direct {p0, v9}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateShortcutsAndWidgetsWidthAndHotSeatPadding(I)V

    :cond_b5
    const/4 v0, 0x0

    invoke-direct {p0, v0, v12}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    return v12

    :cond_ba
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v14

    invoke-virtual {p0, v14}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0, v0, v1, v11}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getTargetCellxAndCanMergeFold(Lcom/android/launcher3/ShortcutAndWidgetContainer;ILcom/android/launcher3/DropTarget$DragObject;)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatDragController;->isOutOfNormalAreaSpace(Lcom/android/launcher3/OplusHotseat;)Z

    move-result v4

    if-eqz v4, :cond_d5

    const-string v0, "Hotseat"

    const-string v1, "hotseat normal area out of space"

    invoke-static {v0, v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_d5
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f3

    iget-boolean v4, v10, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-nez v4, :cond_f3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v14, v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_f2

    iget-object v0, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_f2
    return v13

    :cond_f3
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandDividerView()Z

    move-result v3

    if-eqz v3, :cond_10a

    iget-object v3, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v3}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->getExceptExpandItemCount(Lcom/android/launcher3/OplusHotseat;)I

    move-result v3

    if-le v4, v3, :cond_10a

    return v13

    :cond_10a
    iget v3, v10, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->lastToInTargCellx:I

    if-ne v3, v4, :cond_10f

    return v13

    :cond_10f
    iput v4, v10, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->lastToInTargCellx:I

    const/4 v3, -0x1

    if-ne v4, v3, :cond_115

    return v13

    :cond_115
    invoke-direct {p0, v14, v2, v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getViewsOrderByCellX([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initTabletTypeToInAnimListener()V

    invoke-virtual {p0, v3}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    iget-object v2, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v5, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int v6, v2, v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v8, v0, 0x2

    iput v12, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    move-object v0, p0

    move-object v2, v14

    move-object/from16 v5, p1

    move v7, v8

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object v0

    iget-object v1, v10, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mSubscribeAndDividerCount:I

    iput-boolean v12, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    iget-object v1, v10, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTabletTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v1, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-boolean v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_168

    iget-boolean v0, v10, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-eqz v0, :cond_158

    goto :goto_168

    :cond_158
    invoke-direct {p0, v14}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getOriginalMaxCellxViews([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_160

    iput-object v0, v10, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->needRemoveView:Landroid/view/View;

    :cond_160
    iput-boolean v12, v10, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isDragingExpandChange:Z

    iput-boolean v13, v10, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToInToOut:Z

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->tabletAnimateExpandRemoveAlpha()V

    goto :goto_16d

    :cond_168
    :goto_168
    iget-object v0, v10, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTabletTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :goto_16d
    return v12
.end method

.method private tabletAnimateExpandRemoveAlpha()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/keyguardservice/b;

    invoke-direct {v1, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$2;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_2c
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private updateGridSize([Landroid/view/View;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;IZ)Z

    move-result p0

    return p0
.end method

.method private updateShortcutsAndWidgetsWidthAndHotSeatPadding(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v0

    add-int/2addr v4, p1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method private updateViewCellXIncrease([Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    aget-object v1, p1, v0

    if-eqz v1, :cond_b

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method


# virtual methods
.method public animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_f

    iget v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    if-ne v1, v2, :cond_f

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_f
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTabletTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-ne p1, v1, :cond_19

    iget v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    if-ne v1, v2, :cond_19

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_19
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-ne p1, v1, :cond_24

    iget v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_24

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_24
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-ne p1, v1, :cond_2f

    iget p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2f

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_2f
    return-object v0
.end method

.method public canCheckErrorState()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isMoving()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public checkCellXAndPos()Z
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_f
    iget-object v4, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v4, v3}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v5

    new-array v6, v5, [Z

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "checkCellXAndPos"

    invoke-virtual {v0, v1, v9}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V

    move-object v9, v7

    move v7, v2

    :goto_28
    const-string v10, "Hotseat_expand"

    const-string v11, "HotseatPortraitCenterLayoutHelper"

    if-ge v2, v3, :cond_cb

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_c3

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v15, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v15, v12, v14}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectCellLayoutParamsWillCellX(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)I

    move-result v15

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v16

    if-eqz v16, :cond_7f

    move/from16 v16, v4

    iget v4, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    if-nez v4, :cond_81

    if-nez v4, :cond_81

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result v4

    if-eqz v4, :cond_81

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkCellXAndPos return,willCellx:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",cellLayoutLayoutParams:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",info:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v11, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c5

    :cond_7f
    move/from16 v16, v4

    :cond_81
    if-ltz v15, :cond_bf

    if-lt v15, v5, :cond_86

    goto :goto_bf

    :cond_86
    iget v4, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v15, v4, :cond_8e

    iget v4, v13, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-eq v15, v4, :cond_b6

    :cond_8e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCellXAndPos-willCellx: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , cellLayoutLayoutParams : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " , info: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12, v15}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    const/4 v7, 0x1

    :cond_b6
    aget-boolean v4, v6, v15

    if-eqz v4, :cond_bb

    move-object v9, v12

    :cond_bb
    const/4 v4, 0x1

    aput-boolean v4, v6, v15

    goto :goto_c5

    :cond_bf
    :goto_bf
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c5

    :cond_c3
    move/from16 v16, v4

    :goto_c5
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v16

    goto/16 :goto_28

    :cond_cb
    move/from16 v16, v4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10c

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_d5
    if-ge v2, v5, :cond_10a

    aget-boolean v12, v6, v2

    if-nez v12, :cond_107

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_107

    const/4 v12, 0x1

    aput-boolean v12, v6, v2

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v0, v12, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkCellXAndPos lpError: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    :cond_107
    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    :cond_10a
    const/4 v2, 0x1

    goto :goto_10d

    :cond_10c
    const/4 v2, 0x0

    :goto_10d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_113
    if-ge v8, v5, :cond_122

    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v12, v6, v8

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_113

    :cond_122
    const-string v5, "checkCellXAndPos -- isHappenNoEquals : "

    const-string v8, " sameView is null: "

    invoke-static {v5, v7, v8}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v9, :cond_12e

    const/4 v8, 0x1

    goto :goto_12f

    :cond_12e
    const/4 v8, 0x0

    :goto_12f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " getChildCount: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "posState: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Hotseat"

    invoke-static {v5, v11, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_1d8

    invoke-static {v1, v9}, Lcom/android/launcher3/hotseat/HotseatDragController;->rectifySameView(Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_182

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_182

    sget-object v4, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getExpandUpdatingFlag()Z

    move-result v4

    if-eqz v4, :cond_182

    const-string v0, "expand sameView no need deal:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_182
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_1d8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_1d8

    const-string v8, "checkCellXAndPos -- isHappenNoEquals :title: "

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " container: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " id:  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "screenId: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " XY: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " happenLpError: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v11, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d8
    if-nez v7, :cond_1e0

    if-nez v9, :cond_1e0

    if-nez v2, :cond_1e0

    const/4 v0, 0x0

    return v0

    :cond_1e0
    iget-object v2, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const-string v4, "checkCellXAndPos - dealHappenSameView - start."

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V

    invoke-direct {v0, v9, v6}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->dealHappenSameView(Landroid/view/View;[Z)V

    iget-object v2, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const-string v4, "checkCellXAndPos - dealHappenSameView - end."

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    iget-object v1, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v4, v16, 0x2

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    iget-object v2, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v3, v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget v4, v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    return v0
.end method

.method public checkSize(ZZ)Z
    .registers 16

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v2, v3}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x1e

    const-string v5, " childCount: "

    const-string v6, " targetWidth: "

    const-string v7, "HotseatPortraitCenterLayoutHelper"

    const-string v8, "Hotseat"

    if-ge v2, v4, :cond_75

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->checkSameSizeButNoIncrease(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Z

    move-result p1

    if-eqz p1, :cond_4b

    const-string p1, " NoIncrease ShortcutAndWidgetContainer Width: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3, v8, v7}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    move p1, v1

    goto :goto_75

    :cond_4b
    const-string p0, " Increase ShortcutAndWidgetContainer Width: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, v7, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result p0

    if-eqz p0, :cond_74

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->updateExpandItemWhenDragEnd()V

    :cond_74
    return v1

    :cond_75
    :goto_75
    const-string v2, " checkSize : ShortcutAndWidgetContainer Width: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " needAnim: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v2

    invoke-direct {p0, v4, v2, v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getViewsOrderByCellX([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->commonAnimPositionCallBacks()V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    sub-int v8, v2, v6

    sub-int v2, v8, v11

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v10, v0, 0x2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getEmptyCellXYInShortcutsAndWidgets(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move v12, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIIIZ)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iput v0, p2, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mSubscribeAndDividerCount:I

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v0, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    if-eqz p1, :cond_f6

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDragController;->noNeedAnimForDragFromHotseatToExpandArea()Z

    move-result p1

    if-nez p1, :cond_f6

    sget-object p1, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getAddedDividerForDragInFlag()Z

    move-result p1

    if-nez p1, :cond_f6

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    goto :goto_fb

    :cond_f6
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :goto_fb
    sget-object p0, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseat/HotseatDividerHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setAddedDividerForDragInFlag(Z)V

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDragController;->resetDragFromHotseatToUnNormalAreaItem()V

    const/4 p0, 0x1

    return p0
.end method

.method public dealErrorState(ZZ)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->checkCellXAndPos()Z

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->checkSize(ZZ)Z

    move-result p1

    if-eqz p2, :cond_e

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->checkHotseatItemDataAndUpdateDB()V

    :cond_e
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->startExpandStateErrorCheck()V

    return-void
.end method

.method public finishAnimation()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1d

    :cond_18
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTabletTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_36

    :cond_31
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTabletTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_4f

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_4f

    :cond_4a
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public getDragViewVisualCenterX(Lcom/android/launcher3/DropTarget$DragObject;)F
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mDragViewVisualCenter:[F

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/OplusWorkspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mDragViewVisualCenter:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result p0

    add-float/2addr p0, p1

    return p0
.end method

.method public initDragState(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    if-eqz p1, :cond_16

    const-string v0, "initDragState: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mHasDragOverHotseat:Z

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDropTarget:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->checkHotseatHeightAndWidth()V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;)V

    return-void
.end method

.method public isDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    return p0
.end method

.method public isDragingExpandChange()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isDragingExpandChange:Z

    return p0
.end method

.method public isFinishDragToInToOut()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToInToOut:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToOut:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isMoving()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    const-string v2, "HotseatPortraitCenterLayoutHelper"

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "mTypeToInAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_13
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTabletTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p0, "mTabletTypeToInAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_23
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string p0, "mTypeToInToOutAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_33
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string p0, "mTypeToOutAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_43
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_53

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_53

    const-string p0, "mTypeToOutToInAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_53
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz p0, :cond_63

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result p0

    if-eqz p0, :cond_63

    const-string p0, "mCheckSizeAnimCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_63
    const/4 p0, 0x0

    return p0
.end method

.method public onDragEnd(Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isMoving()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    iput-boolean v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mNeedForceRunOnDragEnd:Z

    const-string p0, "HotseatPortraitCenterLayoutHelper"

    const-string/jumbo p1, "onDragEnd -- return"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mNeedForceRunOnDragEnd:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-boolean v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mHasDragOverHotseat:Z

    if-nez v3, :cond_23

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    return-void

    :cond_23
    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mHasDragOverHotseat:Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->addDividerAndUpdateExpandItemWhenDragEnd()V

    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printDBHotseatData()V

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->dealErrorState(ZZ)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    iput-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDropTarget:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v3

    if-eqz v3, :cond_4c

    iput p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->lastToInTargCellx:I

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isDragingExpandChange:Z

    iput-object v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->needRemoveView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToInToOut:Z

    iput-boolean v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isFinishToOut:Z

    :cond_4c
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 5

    const-string v0, "Drag"

    const-string v1, "HotseatPortraitCenterLayoutHelper"

    const-string/jumbo v2, "onDragEnter"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 5

    const-string v0, "Drag"

    const-string v1, "HotseatPortraitCenterLayoutHelper"

    const-string/jumbo v2, "onDragExit"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isPointInSelfOverHotseat(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isDragViewOfHotseat(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-nez v1, :cond_26

    if-nez v0, :cond_26

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->lastToInTargCellx:I

    :cond_22
    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetShortCutsLayoutWidthTypeToInToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z

    goto :goto_2d

    :cond_26
    if-eqz v1, :cond_2d

    if-nez v0, :cond_2d

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetShortCutsLayoutWidthTypeToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 8

    const-string v0, "Drag"

    const-string v1, "HotseatPortraitCenterLayoutHelper"

    const-string/jumbo v2, "onDragOver"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mHasDragOverHotseat:Z

    iput-boolean v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isDragViewOfHotseat(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getDragViewVisualCenterX(Lcom/android/launcher3/DropTarget$DragObject;)F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v5, v4}, Lcom/android/launcher3/hotseat/HotseatDragController;->isDragOverExpandArea(Lcom/android/launcher3/OplusHotseat;F)Z

    move-result v5

    if-nez v5, :cond_2d

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v5, v4}, Lcom/android/launcher3/hotseat/HotseatDragController;->isDragOverSubscribeArea(Lcom/android/launcher3/OplusHotseat;F)Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_2d
    const-string p0, "can not drag to hotseat expand or subscribe area"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_33
    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string p0, "launcher layout locked,no need response drag over"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_45
    if-nez v3, :cond_57

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTabletAdaptive()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetTabletShortcutsLayoutWidthTypeToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0

    :cond_52
    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetShortcutsLayoutWidthTypeToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0

    :cond_57
    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetShortCutsLayoutWidthTypeToOutToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0
.end method

.method public resetLayout()V
    .registers 3

    const-string v0, "HotseatPortraitCenterLayoutHelper"

    const-string/jumbo v1, "resetLayout"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initGridOccupancyArray()V

    return-void
.end method

.method public updateCommonPadding(Landroid/graphics/Rect;)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_61

    const-string/jumbo v0, "updateCommonPadding -- mDragModeType: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCommonTop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCommonBottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rect.top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rect.bottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getPaddingTop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getPaddingBottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat"

    const-string v2, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    return-void
.end method

.method public updateGridSize([Landroid/view/View;IZ)Z
    .registers 15

    const/4 v0, 0x0

    if-nez p3, :cond_e

    iget-object p3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p3

    if-eq p3, p2, :cond_d

    if-nez p2, :cond_e

    :cond_d
    return v0

    :cond_e
    const-string/jumbo p3, "updateGridSize - mHotseat.getCountX(): "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " countX: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    array-length v1, p3

    const/4 v2, 0x1

    if-lt p2, v1, :cond_40

    new-instance p3, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {p3, p2, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v1, p2, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    goto :goto_52

    :cond_40
    add-int/lit8 v1, p2, -0x1

    aget-object p3, p3, v1

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTmpOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    aget-object v1, v3, v1

    if-eqz p3, :cond_4d

    invoke-virtual {p3}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    :cond_4d
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    :cond_52
    :goto_52
    if-eqz p1, :cond_8e

    :goto_54
    array-length v3, p1

    if-ge v0, v3, :cond_8e

    aget-object v3, p1, v0

    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-eqz p3, :cond_7d

    iget v4, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v8, 0x1

    move-object v3, p3

    move v5, v10

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_7d
    if-eqz v1, :cond_8b

    iget v4, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v8, 0x1

    move-object v3, v1

    move v5, v10

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_8e
    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printGridOccupancy(Lcom/android/launcher3/util/GridOccupancy;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printGridOccupancy(Lcom/android/launcher3/util/GridOccupancy;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateScreenState(I)V

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/android/launcher3/OplusHotseat;->updateGridSizeWithoutRequestLayout(IILcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/util/GridOccupancy;)V

    return v2
.end method
