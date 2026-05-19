.class public Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;
.super Lcom/android/launcher3/widget/PendingItemDragHelper;
.source ""


# static fields
.field private static TAG:Ljava/lang/String; = "PendingSearchItemDragHelper"


# instance fields
.field private mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

.field private mEstimatedCellSize:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/PendingAddItemInfo;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    :cond_13
    return-void
.end method


# virtual methods
.method public startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;->TAG:Ljava/lang/String;

    const-string v5, "mAddInfo:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v4, :cond_f3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/OplusWorkspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;->mEstimatedCellSize:[I

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    check-cast v4, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/PendingSearchAddItemInfo;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-static {v3}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v5

    new-instance v7, Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/4 v6, 0x3

    invoke-virtual {v5, v4, v6}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v7}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v5, v5

    int-to-float v8, v4

    div-float v16, v5, v8

    new-instance v13, Landroid/graphics/Point;

    iget v5, v0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v8, v5, 0x2

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v13, v8, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    iget v8, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f071118

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v9

    iput v10, v1, Landroid/graphics/Rect;->left:I

    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v9

    iput v10, v1, Landroid/graphics/Rect;->right:I

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;->mEstimatedCellSize:[I

    const/4 v9, 0x0

    aget v10, v1, v9

    sub-int/2addr v10, v8

    div-int/lit8 v10, v10, 0x2

    iput v10, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v8

    iput v10, v14, Landroid/graphics/Rect;->right:I

    const/4 v10, 0x1

    aget v1, v1, v10

    sub-int/2addr v1, v8

    iget v10, v5, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    sub-int/2addr v1, v10

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    iput v1, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v8

    iput v1, v14, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9}, Lcom/android/launcher3/dragndrop/DraggableView;->ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;

    move-result-object v8

    iget v1, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    sub-int v9, v1, v4

    iget v1, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v6, v6, 0x2

    sub-int v10, v1, v6

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v6

    iget-object v12, v0, Lcom/android/launcher3/dragndrop/PendingSearchItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object/from16 v11, p5

    move/from16 v15, v16

    move-object/from16 v17, p6

    invoke-virtual/range {v6 .. v17}, Lcom/android/launcher3/dragndrop/OplusDragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f3
    return-void
.end method
