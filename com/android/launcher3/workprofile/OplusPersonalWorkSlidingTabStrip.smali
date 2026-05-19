.class public Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;
.super Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;
.source ""


# instance fields
.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mIsRtl:Z

.field private mLastActivePage:I

.field private mScrollOffset:F

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mTabButtonSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    iput p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorRight:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedPosition:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mTabButtonSize:I

    iput p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mLastActivePage:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070137

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedIndicatorHeight:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060876

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIsRtl:Z

    return-void
.end method

.method private getLeftTab()Landroid/view/View;
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIsRtl:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private isInAllApps()Z
    .registers 2

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p0, v0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private setIndicatorPosition(II)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_f

    :cond_8
    iput p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    iput p2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorRight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_f
    return-void
.end method

.method private updateIndicatorPosition()V
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->getLeftTab()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/Button;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/16 v2, 0x2c

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mScrollOffset:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    iget-boolean v2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIsRtl:Z

    if-eqz v2, :cond_48

    iget v3, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedPosition:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4e

    :cond_48
    if-nez v2, :cond_52

    iget v2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedPosition:I

    if-nez v2, :cond_52

    :cond_4e
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_5b

    :cond_52
    iget v2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mTabButtonSize:I

    div-int v3, v0, v2

    div-int/2addr v0, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    :goto_5b
    add-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->setIndicatorPosition(II)V

    :cond_5f
    return-void
.end method

.method private updateIndicatorPosition(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mScrollOffset:F

    invoke-direct {p0}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method


# virtual methods
.method public initScrollOffset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mScrollOffset:F

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->isInAllApps()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060876

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2a

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06087d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2a
    iget v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorRight:I

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->updateTabTextColor(I)V

    iget p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mScrollOffset:F

    invoke-direct {p0, p1}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->updateIndicatorPosition(F)V

    return-void
.end method

.method public setScroll(II)V
    .registers 3

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->updateIndicatorPosition(F)V

    return-void
.end method

.method public updateTabTextColor(I)V
    .registers 7

    iput p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedPosition:I

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_66

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-ne v1, p1, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v0

    :goto_15
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    if-ne v1, p1, :cond_3f

    invoke-direct {p0}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->isInAllApps()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f06005d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_39

    :cond_2d
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f06005f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_39
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_63

    :cond_3f
    invoke-direct {p0}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->isInAllApps()Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f06005c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_5e

    :cond_52
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f06087e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_5e
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_66
    invoke-direct {p0}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method
