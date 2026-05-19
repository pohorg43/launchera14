.class public Lcom/android/launcher3/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public animX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public animY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public dropped:Z

.field public isHotseatChild:Z

.field public isHotseatExpandDivider:Z

.field public isHotseatExpandItem:Z

.field public isHotseatSubscribeDivider:Z

.field public isHotseatSubscribeItem:Z

.field public isLockedToGrid:Z

.field public lastCellX:I

.field public lastCellY:I

.field public reorderToCellX:I

.field public reorderToCellY:I

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .registers 7

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandDivider:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandItem:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeItem:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeDivider:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandDivider:Z

    iput-boolean p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandItem:Z

    iput-boolean p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeItem:Z

    iput-boolean p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeDivider:Z

    iput-boolean p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandDivider:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandItem:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeItem:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeDivider:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandDivider:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandItem:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeItem:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeDivider:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public setCellXY(Landroid/graphics/Point;)V
    .registers 3

    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    return-void
.end method

.method public setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 14
    .param p9  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean p5, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz p5, :cond_e5

    iget p5, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_f

    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_11

    :cond_f
    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    :goto_11
    if-eqz v1, :cond_16

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_18

    :cond_16
    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_18
    if-eqz p3, :cond_1d

    sub-int/2addr p4, v2

    sub-int v2, p4, p5

    :cond_1d
    add-int/lit8 p3, p5, -0x1

    iget p4, p8, Landroid/graphics/Point;->x:I

    mul-int/2addr p3, p4

    add-int/lit8 p4, v0, -0x1

    iget v3, p8, Landroid/graphics/Point;->y:I

    mul-int/2addr p4, v3

    mul-int/2addr p5, p1

    add-int/2addr p5, p3

    int-to-float p3, p5

    div-float/2addr p3, p6

    mul-int/2addr v0, p2

    add-int/2addr v0, p4

    int-to-float p4, v0

    div-float/2addr p4, p7

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p3, p5

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, p5

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p3, p4

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p3, p4

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-boolean p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandDivider:Z

    if-nez p3, :cond_4f

    iget-boolean p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeDivider:Z

    if-eqz p3, :cond_55

    :cond_4f
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p3

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_55
    iget-boolean p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    if-eqz p3, :cond_b3

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerCount()I

    move-result p3

    iget-boolean p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeItem:Z

    if-nez p4, :cond_9f

    iget-boolean p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatSubscribeDivider:Z

    if-eqz p4, :cond_66

    goto :goto_9f

    :cond_66
    iget-boolean p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandItem:Z

    if-eqz p4, :cond_7c

    sub-int/2addr v2, p3

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    mul-int/2addr p1, v2

    add-int/2addr p1, p4

    iget p4, p8, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p4

    add-int/2addr v2, p1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    mul-int/2addr p1, p3

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    goto :goto_a9

    :cond_7c
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result p3

    if-eqz p3, :cond_94

    add-int/lit8 v2, v2, -0x1

    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    mul-int/2addr p1, v2

    add-int/2addr p1, p3

    iget p3, p8, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p3

    add-int/2addr v2, p1

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    goto :goto_a9

    :cond_94
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    mul-int/2addr p1, v2

    add-int/2addr p1, p3

    iget p3, p8, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p3

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    goto :goto_a9

    :cond_9f
    :goto_9f
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    mul-int/2addr p1, v2

    add-int/2addr p1, p3

    iget p3, p8, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p3

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    :goto_a9
    iget p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatLayoutParamsInject;->getHotseatIconVisiblePaddingHor()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    goto :goto_bd

    :cond_b3
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    mul-int/2addr p1, v2

    add-int/2addr p1, p3

    iget p3, p8, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p3

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    :goto_bd
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    iget p1, p8, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    if-eqz p9, :cond_e5

    iget p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget p2, p9, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget p1, p9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p4, p9, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    add-int/2addr p2, p3

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p3, p9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_e5
    return-void
.end method

.method public setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 18
    .param p7  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v7, 0x3f800000  # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->animX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->animY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandDivider:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatExpandItem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isHotseatChild:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x8

    aput-object p0, v0, v1

    const-string/jumbo p0, "{cellX:%d,cellY:%d,x:%d,y:%d,animX:%d,animY:%d,isHotseatExpandDivider=%b,isHotseatExpandItem=%b,isHotseatChild=%b}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSpanXY(II)V
    .registers 3

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method
