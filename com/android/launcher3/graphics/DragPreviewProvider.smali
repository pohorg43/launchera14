.class public Lcom/android/launcher3/graphics/DragPreviewProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;
    }
.end annotation


# instance fields
.field public final blurSizeOutline:I

.field public generatedDragOutline:Landroid/graphics/Bitmap;

.field private mOutlineGeneratorCallback:Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

.field private final mTempRect:Landroid/graphics/Rect;

.field public final mView:Landroid/view/View;

.field public final previewPadding:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701bd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    iput p1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/graphics/DragPreviewProvider;FLandroid/graphics/Canvas;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/DragPreviewProvider;->lambda$createDrawable$1(FLandroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/graphics/DragPreviewProvider;FLandroid/graphics/Canvas;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/DragPreviewProvider;->lambda$createDrawable$0(FLandroid/graphics/Canvas;)V

    return-void
.end method

.method public static getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_1a

    :cond_16
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_25

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_25
    return-object v0
.end method

.method private synthetic lambda$createDrawable$0(FLandroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method private synthetic lambda$createDrawable$1(FLandroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;F)V

    return-void
.end method


# virtual methods
.method public convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public createDrawable()Landroid/graphics/drawable/Drawable;
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/card/LauncherCardUtil;->dragViewUsesContent(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v2, :cond_1a

    new-instance v0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    iget-object p0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;-><init>(Lcom/android/launcher3/card/LauncherCardView;)V

    return-object v0

    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v3, v2, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v3, :cond_38

    check-cast v2, Lcom/android/launcher3/dragndrop/DraggableView;

    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v2, v3}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_42

    :cond_38
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    :goto_42
    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v4, :cond_54

    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    :cond_54
    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_94

    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_94

    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/common/config/FeatureOption;->isSupportWCG(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_94

    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v4, v4, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v4, :cond_94

    if-eqz v1, :cond_94

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v1, :cond_94

    new-instance v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v2, v4

    add-int/2addr v3, v4

    new-instance v4, Lcom/android/launcher3/graphics/c;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v5}, Lcom/android/launcher3/graphics/c;-><init>(Lcom/android/launcher3/graphics/DragPreviewProvider;FI)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createSoftwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_94
    new-instance v1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    add-int/2addr v2, v4

    add-int/2addr v3, v4

    new-instance v4, Lcom/android/launcher3/graphics/c;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v5}, Lcom/android/launcher3/graphics/c;-><init>(Lcom/android/launcher3/graphics/DragPreviewProvider;FI)V

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public createSoftwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;
    .registers 6

    invoke-static {}, Lcom/android/launcher3/icons/GraphicsUtils;->noteNewBitmapCreated()V

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p2, p0, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {p3, p1}, Lcom/android/launcher3/icons/BitmapRenderer;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method public drawDragView(Landroid/graphics/Canvas;F)V
    .registers 8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v1, :cond_7b

    check-cast v0, Lcom/android/launcher3/dragndrop/DraggableView;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DraggableView;->prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v1

    :try_start_10
    iget-object v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v0, v2}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->blurSizeOutline:I

    div-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, v0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_66

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v2, :cond_60

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object v2, v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_60

    iget-object v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-static {v3}, Lcom/android/launcher3/icons/FastBitmapUtils;->transformHardware2Soft(Lcom/android/launcher3/icons/FastBitmapDrawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_69

    :cond_60
    iget-object p0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_69

    :cond_66
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_69
    .catchall {:try_start_10 .. :try_end_69} :catchall_6f

    :goto_69
    if-eqz v1, :cond_7b

    invoke-interface {v1}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    goto :goto_7b

    :catchall_6f
    move-exception p0

    if-eqz v1, :cond_7a

    :try_start_72
    invoke-interface {v1}, Lcom/android/launcher3/util/SafeCloseable;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_7a

    :catchall_76
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7a
    :goto_7a
    throw p0

    :cond_7b
    :goto_7b
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final generateDragOutline(Landroid/graphics/Bitmap;)V
    .registers 3

    new-instance v0, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;-><init>(Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mOutlineGeneratorCallback:Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/card/LauncherCardUtil;->dragViewUsesContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v2, :cond_20

    instance-of v2, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_27

    :cond_20
    check-cast v1, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v1}, Lcom/android/launcher3/card/IAreaWidget;->getScaleToFit()F

    move-result v1

    div-float/2addr v0, v1

    :cond_27
    const/4 v1, 0x0

    aget v2, p2, v1

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p2, v1

    iget v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v2, v2, 0x2

    iget-object p0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v3, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v3, :cond_50

    mul-int/lit8 v1, v2, 0x2

    goto :goto_56

    :cond_50
    instance-of p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz p0, :cond_55

    goto :goto_56

    :cond_55
    move v1, v2

    :goto_56
    const/4 p0, 0x1

    aget v2, p2, p0

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v3, p1, v4, v2}, Landroidx/constraintlayout/core/motion/b;->a(FFFF)F

    move-result p1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, p0

    return v0
.end method

.method public getScaleAndPosition(Landroid/view/View;[I)F
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_23

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getScaleToFit()F

    move-result v1

    div-float/2addr v0, v1

    :cond_23
    const/4 v1, 0x0

    aget v2, p2, v1

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p2, v1

    iget v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v2, v2, 0x2

    iget-object p0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v3, p0, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v3, :cond_58

    check-cast p0, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->getAreaType()Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    move-result-object p0

    sget-object v3, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->WIDGET:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    if-eq p0, v3, :cond_59

    sget-object v3, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    if-ne p0, v3, :cond_58

    goto :goto_59

    :cond_58
    move v1, v2

    :cond_59
    :goto_59
    const/4 p0, 0x1

    aget v2, p2, p0

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v3, p1, v4, v2}, Landroidx/constraintlayout/core/motion/b;->a(FFFF)F

    move-result p1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, p0

    return v0
.end method
