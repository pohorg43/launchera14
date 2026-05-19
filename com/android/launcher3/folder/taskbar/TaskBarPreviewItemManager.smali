.class public final Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;
.super Lcom/android/launcher3/folder/PreviewItemManager;
.source ""


# instance fields
.field private final icon:Lcom/android/launcher3/folder/OplusFolderIcon;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 3

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->icon:Lcom/android/launcher3/folder/OplusFolderIcon;

    const-string p1, "TaskBarPreviewItemManager"

    iput-object p1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->tag:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->setDrawable$lambda$2(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;)V

    return-void
.end method

.method private static final setDrawable$lambda$2(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_4d

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4d

    instance-of v1, v0, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    if-eqz v1, :cond_15

    invoke-static {v0}, Lcom/android/launcher3/icons/FastBitmapUtils;->newIconFromFancyDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    goto :goto_34

    :cond_15
    iget-object v1, p1, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->icon:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "icon.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->icon:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "icon.context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarAppIconActualSize(Landroid/content/Context;)I

    move-result p1

    const/4 v2, 0x1

    invoke-static {v1, v0, p1, v2}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_34
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-static {p1}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4d
    return-void
.end method

.method private final setItemIconAlpha(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    instance-of p0, p1, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    if-eqz p0, :cond_22

    check-cast p1, Lcom/oplus/fancyicon/fancydrawable/IconFancyDrawable;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_14

    :cond_11
    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->setRootAlpha(I)V

    :goto_14
    invoke-virtual {p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->getController()Lcom/oplus/fancyicon/BaseRendererController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    goto :goto_25

    :cond_22
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public computePreviewDrawingParamsColor(I)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c3f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mForceRecompute:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    iget v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    int-to-float v3, v0

    cmpg-float v1, v1, v3

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    if-ne v1, p1, :cond_2c

    iget v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    if-eq v1, v3, :cond_8c

    :cond_2c
    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mPrevTopPadding:I

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v5

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v3

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget v7, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mTotalWidth:I

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.folder.taskbar.TaskBarFolderIconLayoutRule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule;

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mIcon.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    iget-object v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule;->init(Landroid/content/Context;IFZ)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    :cond_8c
    return-void
.end method

.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 9

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    invoke-virtual {p0, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->getFinalIconParams(Lcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p0

    const-string p1, "getFinalIconParams(params)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c3f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    iget v2, v1, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    if-eqz v2, :cond_53

    instance-of v2, v1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule;

    if-eqz v2, :cond_53

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.folder.taskbar.TaskBarFolderIconLayoutRule"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule;

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mIcon.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v3, v0

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconLayoutRule;->init(Landroid/content/Context;IFZ)V

    :cond_53
    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p0

    const-string p1, "mIcon.mPreviewLayoutRule…dex, curNumItems, params)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->draw(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .registers 7

    const-string p2, "canvas"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p2

    iget v0, p2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v0, v0

    iget v1, p2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.OplusClippedFolderIconLayoutRule"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v3, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->drawParams(Landroid/graphics/Canvas;Ljava/util/ArrayList;FLjava/lang/Boolean;)V

    iget v0, p2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v0, v0

    neg-float v0, v0

    iget p2, p2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float p2, p2

    neg-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->getPreviewStyleBoundOffset()F

    move-result p0

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public bridge synthetic drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Ljava/lang/Boolean;)V
    .registers 4

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Z)V

    return-void
.end method

.method public drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Z)V
    .registers 6

    const-string p3, "canvas"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "params"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p3, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget p3, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_56

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->icon:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    if-eqz v1, :cond_32

    check-cast v0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->isArrowBgDrawing()Z

    :cond_38
    iget v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIntrinsicIconSize:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/16 p3, 0xff

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->setItemIconAlpha(Landroid/graphics/drawable/Drawable;I)V

    :cond_56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getIcon()Lcom/android/launcher3/folder/OplusFolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->icon:Lcom/android/launcher3/folder/OplusFolderIcon;

    return-object p0
.end method

.method public getNewIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    if-eqz v1, :cond_62

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v4, v2, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    if-nez v2, :cond_62

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_62

    iget-object v2, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    new-instance v3, Lcom/android/launcher/FancyIconKey;

    sget-object v4, Lcom/android/launcher/FancyIconKey$AppLocationType;->TASKBAR_FOLDER:Lcom/android/launcher/FancyIconKey$AppLocationType;

    invoke-direct {v3, p1, v4}, Lcom/android/launcher/FancyIconKey;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/FancyIconKey$AppLocationType;)V

    iget-object v4, v2, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v4, v3}, Lcom/android/launcher3/icons/IIconCacheExt;->getFancyIcon(Lcom/android/launcher/FancyIconKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_50

    iget-object v3, p0, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->tag:Ljava/lang/String;

    const-string v4, "getNewIcon()  drawable is null."

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIconSize:I

    invoke-interface {v2, v1, v3, v3}, Lcom/android/launcher3/icons/IIconCacheExt;->loadFancyIconCacheForTaskBarFolderIcon(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_57

    :cond_50
    iget-object v1, p0, Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;->tag:Ljava/lang/String;

    const-string v2, "getNewIcon()  cache hit!!!"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_57
    if-nez v3, :cond_6f

    if-eqz p1, :cond_6e

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    goto :goto_6e

    :cond_62
    if-eqz p1, :cond_6e

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz p1, :cond_6e

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    :cond_6e
    :goto_6e
    move-object v3, v0

    :cond_6f
    return-object v3
.end method

.method public isForbidDrawPageItems()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    goto :goto_f

    :cond_e
    move-object p0, v1

    :goto_f
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->getNeedDrawOpeningBg()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_19
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final recreateFirstPage()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager;->mFirstPageParams:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->buildParamsForPage(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    sget-object p2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p3, Lcom/android/launcher/widget/b;

    invoke-direct {p3, p1, p0}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/folder/taskbar/TaskBarPreviewItemManager;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
