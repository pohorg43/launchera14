.class Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initTabletTypeToInAnimListener()V
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

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMoving()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-boolean p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    return p0
.end method

.method public onAnimationCancel()V
    .registers 1

    return-void
.end method

.method public onAnimationEnd()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-static {v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->access$500(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_c
    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-virtual {v3}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v3

    if-ge v1, v3, :cond_3a

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v4, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mTargetCellX:I

    if-eq v1, v4, :cond_37

    iget-object v3, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mViews:[Landroid/view/View;

    array-length v4, v3

    if-ge v2, v4, :cond_37

    aget-object v3, v3, v2

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_30

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eqz v4, :cond_30

    goto :goto_37

    :cond_30
    iget-object v4, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-virtual {v4, v3, v1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXState(Landroid/view/View;I)V

    :cond_35
    add-int/lit8 v2, v2, 0x1

    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_3a
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v2, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->access$600(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;I)V

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-object v4, v2, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mViews:[Landroid/view/View;

    iget v2, v2, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mChildCount:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;IZ)Z

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v2, v2, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mShortWidgetTagetWidth:I

    invoke-static {v1, v2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->access$200(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;I)V

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    return-void
.end method

.method public onAnimationStart()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    return-void
.end method

.method public onAnimationUpdate(FLandroid/animation/ValueAnimator;)V
    .registers 8

    iget-object p2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-static {p2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->access$500(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)Z

    move-result p2

    if-nez p2, :cond_9

    return-void

    :cond_9
    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v1, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mOldDistance:I

    int-to-float v1, v1

    mul-float/2addr p2, v1

    iget v0, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mNewDistance:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    float-to-int p2, v0

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v0, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    :goto_24
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-object v2, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mViews:[Landroid/view/View;

    array-length v3, v2

    if-ge v0, v3, :cond_b7

    aget-object v1, v2, v0

    if-eqz v1, :cond_b3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget v4, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mTargetCellX:I

    if-lt v0, v4, :cond_80

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-static {v3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->access$300(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v1

    if-eqz v1, :cond_62

    add-int/lit8 v1, v0, -0x2

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v3, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    iput v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    goto :goto_aa

    :cond_62
    add-int/lit8 v1, v0, -0x1

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v3, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v1

    add-int/2addr v1, v3

    iput v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    goto :goto_aa

    :cond_75
    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v3, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v3, v1, v0, p1}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->injectCellLayoutParamsAnimXTypeIn(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;II)I

    move-result v1

    iput v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    goto :goto_aa

    :cond_80
    iget v1, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mSubscribeAndDividerCount:I

    if-gt v1, v0, :cond_9f

    if-ge v0, v4, :cond_9f

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v1

    if-eqz v1, :cond_9f

    add-int/lit8 v1, v0, -0x1

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v3, v3, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v1

    add-int/2addr v1, v3

    iput v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    goto :goto_aa

    :cond_9f
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v1, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    mul-int/2addr v1, v0

    iput v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    :goto_aa
    iget v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    :cond_b3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_24

    :cond_b7
    iget v0, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mOldDistance:I

    iget v1, v1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mNewDistance:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_cc

    iget-object p2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object p2, p2, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_d7

    :cond_cc
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget-object v1, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v2, v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget v0, v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v1, p2, v2, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_d7
    iget-object p2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;->mIsMoving:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_f9

    const-string p2, "TabletTypeToIn onAnimationUpdate -- mDragModeType:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    iget p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v0, ",emptyPostionDistance:"

    invoke-static {p2, p0, v0, p1}, Landroidx/fragment/app/d;->a(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat"

    const-string p2, "HotseatPortraitCenterLayoutHelper"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f9
    return-void
.end method

.method public setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->mAnimObjectData:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$6;->this$0:Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printAnimData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    return-void
.end method
