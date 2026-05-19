.class Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initTypeToOutAnimListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

.field public final synthetic this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMoving()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-boolean p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    return p0
.end method

.method public onAnimationCancel()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    return-void
.end method

.method public onAnimationEnd()V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-object v4, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mViews:[Landroid/view/View;

    array-length v5, v4

    if-ge v1, v5, :cond_38

    aget-object v3, v4, v1

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_1b

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eqz v5, :cond_1b

    goto :goto_35

    :cond_1b
    iget-object v5, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-object v6, v5, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v6, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eq v6, v4, :cond_2b

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXState(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_2b
    iget-object v4, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v5, v5, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mViews:[Landroid/view/View;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXState(Landroid/view/View;I)V

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_38
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget v2, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mChildCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v4, v2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->access$100(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;[Landroid/view/View;I)Z

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v2, v2, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mShortWidgetTagetWidth:I

    invoke-static {v1, v2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->access$200(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;I)V

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    return-void
.end method

.method public onAnimationStart()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    return-void
.end method

.method public onAnimationUpdate(FLandroid/animation/ValueAnimator;)V
    .registers 8

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v1, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mOldDistance:I

    int-to-float v2, v1

    mul-float/2addr p2, v2

    iget v0, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mNewDistance:I

    int-to-float v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, p2

    float-to-int p2, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-object v2, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mViews:[Landroid/view/View;

    array-length v3, v2

    if-ge v0, v3, :cond_78

    aget-object v1, v2, v0

    if-eqz v1, :cond_75

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v4, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mTargetCellX:I

    if-le v0, v4, :cond_3c

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v3, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v3, v1, v0, p1}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectCellLayoutParamsAnimXTypeOut(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;II)I

    move-result v1

    iput v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    goto :goto_6c

    :cond_3c
    iget v1, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mSubscribeAndDividerCount:I

    if-gt v1, v0, :cond_5b

    if-ge v0, v4, :cond_5b

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v1

    if-eqz v1, :cond_5b

    add-int/lit8 v1, v0, -0x1

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v3, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v1

    add-int/2addr v1, v3

    iput v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    goto :goto_6c

    :cond_5b
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v1, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mTargetCellX:I

    if-ge v0, v1, :cond_6c

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v1, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    mul-int/2addr v1, v0

    iput v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    :cond_6c
    :goto_6c
    iget v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_78
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v1, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v2, v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget v0, v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v1, p2, v2, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_a4

    const-string/jumbo p2, "onAnimationUpdate -- mDragModeType:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v0, ",emptyPostionDistance: "

    invoke-static {p2, p0, v0, p1}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat"

    const-string p2, "HotseatPortraitCenterLayoutHelper"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    return-void
.end method

.method public setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printAnimData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    return-void
.end method
