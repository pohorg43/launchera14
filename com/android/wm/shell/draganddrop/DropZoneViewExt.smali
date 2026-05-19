.class public Lcom/android/wm/shell/draganddrop/DropZoneViewExt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ALPHA_SHOW:F = 1.0f

.field private static final HALF:I = 0x2

.field private static final ICON_MARGIN:I = 0x8

.field private static final ICON_SIZE_PAD:I = 0x40


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPadBottomMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/high16 v0, 0x41000000  # 8.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->mPadBottomMargin:I

    goto :goto_1f

    :cond_1c
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->mPadBottomMargin:I

    :goto_1f
    return-void
.end method


# virtual methods
.method public getIconLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, p1, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_15

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->mPadBottomMargin:I

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_15
    return-object v0
.end method

.method public getIconSizePad(I)I
    .registers 3

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_17

    const/high16 p1, 0x42800000  # 64.0f

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p0

    return p0

    :cond_17
    return p1
.end method

.method public getPadBottomMargin()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->mPadBottomMargin:I

    return p0
.end method

.method public getPadMarginBottom(Lcom/android/wm/shell/draganddrop/DragLayout;I)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_15

    move v0, v2

    :cond_15
    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getNavigationBarFrameHeight(Landroid/content/res/Resources;Z)I

    move-result v0

    add-int/2addr p1, p2

    div-int/2addr p1, v3

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->mPadBottomMargin:I

    goto :goto_43

    :cond_33
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p2

    div-int/2addr p1, v3

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->mPadBottomMargin:I

    :goto_43
    sub-int/2addr p1, p0

    return p1
.end method

.method public setShowIcon(Landroid/widget/ImageView;ZZ)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/high16 p0, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    if-eqz p3, :cond_17

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_12

    goto :goto_13

    :cond_12
    move p0, v0

    :goto_13
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_26

    :cond_17
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_1e

    goto :goto_1f

    :cond_1e
    move p0, v0

    :goto_1f
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_26
    return-void
.end method

.method public setShowingHighlight(Landroid/widget/ImageView;ZZZ)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eqz p4, :cond_b

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->setShowIcon(Landroid/widget/ImageView;ZZ)V

    return v1

    :cond_b
    if-eqz p3, :cond_11

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/wm/shell/draganddrop/DropZoneViewExt;->setShowIcon(Landroid/widget/ImageView;ZZ)V

    return v1

    :cond_11
    return v0
.end method
