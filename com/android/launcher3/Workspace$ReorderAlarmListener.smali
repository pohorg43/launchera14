.class Lcom/android/launcher3/Workspace$ReorderAlarmListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReorderAlarmListener"
.end annotation


# instance fields
.field public final child:Landroid/view/View;

.field public final dragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field public final dragViewCenter:[F

.field public final minSpanX:I

.field public final minSpanY:I

.field public final spanX:I

.field public final spanY:I

.field public final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V
    .registers 9

    iput-object p1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragViewCenter:[F

    iput p3, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iput p4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iput p5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    iput p6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    iput-object p8, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iput-object p7, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v1, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-static {v2, v1}, Lcom/android/launcher3/hotseat/HotseatDragController;->abnormalAreaShouldNotReorderAlarm(FLcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v0, "Hotseat_expand"

    const-string v1, "Launcher.Workspace"

    const-string v2, "hotseat abnormal area should not reorder alarm,return"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    iget-object v1, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    instance-of v2, v1, Lcom/android/launcher3/OplusCellLayout;

    const/4 v4, 0x1

    if-eqz v2, :cond_46

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v5, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher3/OplusCellLayout;->saveLastAppChildIfNeeded(Lcom/android/launcher3/DropTarget$DragObject;Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v5, v2, v3

    aget v2, v2, v4

    invoke-virtual {v1, v3, v5, v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->recordPixelXY(ZFF)V

    :cond_46
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v5, v2, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v5, v5, v3

    float-to-int v5, v5

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayoutUntilOnDrop:Lcom/android/launcher3/CellLayout;

    invoke-static {v2}, Lcom/android/launcher3/hotseat/HotseatDragController;->shouldRectifyDragViewVisualCenterX(Lcom/android/launcher3/CellLayout;)Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v2

    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getDividerViewWidth()I

    move-result v6

    sub-int/2addr v2, v6

    add-int/2addr v2, v5

    goto :goto_6a

    :cond_69
    move v2, v5

    :goto_6a
    iget-object v12, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v5, v12, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v5, v5, v4

    float-to-int v7, v5

    iget v8, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v9, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget-object v10, v12, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v11, v12, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v5, v12

    move v6, v2

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v5

    iput-object v5, v12, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v15, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v13, v15, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v5, v13, v3

    iput v5, v15, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    aget v5, v13, v4

    iput v5, v15, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    iget-object v5, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    instance-of v5, v5, Lcom/android/launcher/batchdrag/BatchDragObject;

    if-eqz v5, :cond_98

    const/16 v5, 0x8

    move/from16 v16, v5

    goto :goto_9a

    :cond_98
    move/from16 v16, v4

    :goto_9a
    iget-object v5, v15, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v6, v15, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v6, v6, v4

    float-to-int v7, v6

    iget v8, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v9, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget v10, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    iget v11, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    iget-object v12, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    move v6, v2

    move-object v14, v1

    move-object v2, v15

    move/from16 v15, v16

    invoke-virtual/range {v5 .. v15}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v5

    iput-object v5, v2, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v5, v2, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v6, v5, v3

    const/16 v7, 0x64

    const/4 v8, 0x5

    if-ltz v6, :cond_f8

    aget v5, v5, v4

    if-gez v5, :cond_c6

    goto :goto_f8

    :cond_c6
    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_f1

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq v2, v8, :cond_d8

    if-ne v2, v7, :cond_f1

    :cond_d8
    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_f1

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->updateBackgroundForDrag(Z)V

    :cond_f1
    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    goto :goto_135

    :cond_f8
    :goto_f8
    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_135

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq v2, v8, :cond_111

    if-ne v2, v7, :cond_135

    :cond_111
    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isDragInLauncher(Lcom/android/launcher3/Workspace;)Z

    move-result v2

    if-eqz v2, :cond_135

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->updateBackgroundForDrag(Z)V

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    instance-of v5, v2, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v5, :cond_135

    check-cast v2, Lcom/android/launcher3/OplusCellLayout;

    iget v5, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    iget v6, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    invoke-virtual {v2, v5, v6}, Lcom/android/launcher3/OplusCellLayout;->setDragViewCellSpan(II)V

    :cond_135
    :goto_135
    aget v2, v1, v3

    iget v5, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    if-ne v2, v5, :cond_13f

    aget v2, v1, v4

    iget v5, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    :cond_13f
    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v5, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v6, v2, v3

    aget v7, v2, v4

    aget v8, v1, v3

    aget v9, v1, v4

    iget-object v10, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method
