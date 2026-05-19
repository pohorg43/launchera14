.class public final Lcom/android/launcher3/folder/big/stacked/StackedDrawable;
.super Lcom/oplus/icons/OplusFastBitmapDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/stacked/StackedDrawable$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStackedDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackedDrawable.kt\ncom/android/launcher3/folder/big/stacked/StackedDrawable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1#2:113\n1855#3,2:114\n*S KotlinDebug\n*F\n+ 1 StackedDrawable.kt\ncom/android/launcher3/folder/big/stacked/StackedDrawable\n*L\n67#1:114,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/stacked/StackedDrawable$Companion;

.field public static final MAX_ALPHA:I = 0xff


# instance fields
.field private mConvertDrawable:Landroid/graphics/drawable/Drawable;

.field private mHolderDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewItemsPram:Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

.field private mStackedAlpha:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/stacked/StackedDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->Companion:Lcom/android/launcher3/folder/big/stacked/StackedDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;Lcom/android/launcher3/icons/BitmapInfo;)V
    .registers 11

    const-string/jumbo v0, "previewItemsPram"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/oplus/icons/OplusFastBitmapDrawable;-><init>(Lcom/android/launcher3/icons/BitmapInfo;)V

    const/16 p2, 0xff

    iput p2, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mStackedAlpha:I

    iput-object p1, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mPreviewItemsPram:Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p1

    if-eqz p1, :cond_6c

    sget-object p1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_6c

    sget-object p2, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v0, "it.resources.getDrawable…wable.bf_holder_drawable)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mPreviewItemsPram:Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->getMStackedWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mPreviewItemsPram:Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->getMStackedHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_50

    return-void

    :cond_50
    new-instance p2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-direct {p2, p1}, Lcom/oplus/icons/OplusFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mPreviewItemsPram:Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->getMStackedWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mPreviewItemsPram:Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->getMStackedHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mHolderDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6c
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;Lcom/android/launcher3/icons/BitmapInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    sget-object p2, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    const-string p3, "LOW_RES_INFO"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;-><init>(Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;Lcom/android/launcher3/icons/BitmapInfo;)V

    return-void
.end method

.method private final drawPlaceHolderDrawable(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mHolderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    iget v1, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mStackedAlpha:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->setItemAlphaDiff(Landroid/graphics/drawable/Drawable;I)V

    if-eqz p1, :cond_15

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_15
    return-void
.end method

.method private final drawStacked(Landroid/graphics/Canvas;)V
    .registers 6

    if-eqz p1, :cond_4c

    iget-object v0, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mPreviewItemsPram:Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/stacked/BFPreviewItemDrawingParams;->getCurrentStackedParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v3, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-boolean v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    if-nez v2, :cond_45

    iget-object v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_39

    const-string v3, "drawable"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mStackedAlpha:I

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->setItemAlphaDiff(Landroid/graphics/drawable/Drawable;I)V

    :cond_39
    iget-object v1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_41

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_48

    :cond_41
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->drawPlaceHolderDrawable(Landroid/graphics/Canvas;)V

    goto :goto_48

    :cond_45
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->drawPlaceHolderDrawable(Landroid/graphics/Canvas;)V

    :goto_48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    :cond_4c
    return-void
.end method

.method private final setItemAlphaDiff(Landroid/graphics/drawable/Drawable;I)V
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

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    goto :goto_38

    :cond_22
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    instance-of p0, p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz p0, :cond_38

    check-cast p1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {p1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_38

    invoke-virtual {p1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_9
    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_16
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->drawStacked(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mConvertDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_27

    iget v1, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mStackedAlpha:I

    rsub-int v1, v1, 0xff

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->setItemAlphaDiff(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_27
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2c
    return-void
.end method

.method public final getMConvertDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mConvertDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setAlpha(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/icons/OplusFastBitmapDrawable;->setAlpha(I)V

    iput p1, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mStackedAlpha:I

    return-void
.end method

.method public final setMConvertDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->mConvertDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
