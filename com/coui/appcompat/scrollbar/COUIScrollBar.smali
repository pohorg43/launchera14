.class public Lcom/coui/appcompat/scrollbar/COUIScrollBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;,
        Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;,
        Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;,
        Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;
    }
.end annotation


# static fields
.field public static final k:[I

.field public static final l:[I


# instance fields
.field public a:Landroid/view/View;

.field public b:F

.field public final c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/drawable/Drawable;

.field public final e:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

.field public f:I

.field public final g:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->k:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->l:[I

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;IILandroid/graphics/drawable/Drawable;ZLcom/coui/appcompat/scrollbar/COUIScrollBar$1;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x0

    iput-boolean p6, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i:Z

    iput-boolean p6, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->j:Z

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {v0, p6}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {v0, p6}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    goto :goto_29

    :cond_28
    move v2, p6

    :goto_29
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->j:Z

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_scrollbar_min_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->f:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p6, p6, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    new-instance p1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    iget-object p2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->g:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    iput-boolean p5, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->h:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->b(J)Z

    const/4 p0, 0x0

    return p0
.end method

.method public b(J)Z
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->g:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    iget v0, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->g:I

    if-nez v0, :cond_15

    const-wide/16 v0, 0x2ee

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_15
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->g:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    iput-wide v0, p1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->f:J

    const/4 p2, 0x1

    iput p2, p1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->g:I

    iget-object p2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    iget-object p0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->g:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public c(Landroid/graphics/Canvas;)V
    .registers 10

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i:Z

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_40

    :cond_e
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->g:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    iget v4, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->g:I

    if-nez v4, :cond_15

    goto :goto_72

    :cond_15
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3b

    iget-object v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->c:[F

    if-nez v2, :cond_20

    new-array v2, v1, [F

    iput-object v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->c:[F

    :cond_20
    iget-object v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->c:[F

    iget-object v4, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->e:Landroid/graphics/Interpolator;

    invoke-virtual {v4, v2}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v4

    sget-object v5, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v4, v5, :cond_2f

    iput v3, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->g:I

    goto :goto_41

    :cond_2f
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d:Landroid/graphics/drawable/Drawable;

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_41

    :cond_3b
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_40
    move v1, v3

    :goto_41
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->h(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v2

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6b
    if-eqz v1, :cond_72

    iget-object p0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_72
    :goto_72
    return-void
.end method

.method public final d(Landroid/graphics/drawable/StateListDrawable;II)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/InsetDrawable;

    if-nez p1, :cond_9

    return-void

    :cond_9
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_14

    return-void

    :cond_14
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public final e()Z
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->g:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    iget v0, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->a:I

    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->b(J)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final f(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_41

    if-eq v0, v3, :cond_2b

    const/4 p1, 0x2

    if-eq v0, p1, :cond_16

    if-eq v0, v2, :cond_2b

    goto/16 :goto_a1

    :cond_16
    iget-boolean p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i:Z

    if-eqz p1, :cond_a1

    iget p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->b:F

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p1, :cond_a1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->h(I)Z

    iput v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->b:F

    goto/16 :goto_a1

    :cond_2b
    iget-boolean p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i:Z

    if-eqz p1, :cond_a1

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->l:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput-boolean v4, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a()Z

    goto :goto_a1

    :cond_41
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->g:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    iget v0, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->g:I

    if-nez v0, :cond_4a

    iput-boolean v4, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i:Z

    return v4

    :cond_4a
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i:Z

    if-nez v0, :cond_a1

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->h(I)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v5, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_a1

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_a1

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_a1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_a1

    iput-boolean v3, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i:Z

    iput v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->b:F

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->superOnTouchEvent(Landroid/view/MotionEvent;)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->superOnTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->k:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, v4, v3}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i(IZ)Z

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->g:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a1
    :goto_a1
    iget-boolean p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i:Z

    if-eqz p1, :cond_b4

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v3

    :cond_b4
    return v4
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    if-eqz p1, :cond_9

    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->d:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->h(I)Z

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setThumbDrawable must NOT be NULL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->i(IZ)Z

    move-result p0

    return p0
.end method

.method public final i(IZ)Z
    .registers 11

    iget-object p2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->j:Z

    if-eqz v1, :cond_e

    move v1, p2

    goto :goto_14

    :cond_e
    iget-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_14
    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->j:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    move v1, v2

    goto :goto_22

    :cond_1f
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p2

    :goto_22
    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {p2}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->superComputeVerticalScrollRange()I

    move-result p2

    if-gtz p2, :cond_2d

    return v2

    :cond_2d
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->superComputeVerticalScrollOffset()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->e:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {v1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->superComputeVerticalScrollExtent()I

    move-result v1

    sub-int v3, p2, v1

    if-gtz v3, :cond_3e

    return v2

    :cond_3e
    int-to-float v4, v0

    const/high16 v5, 0x3f800000  # 1.0f

    mul-float/2addr v4, v5

    int-to-float v3, v3

    div-float/2addr v4, v3

    int-to-float v1, v1

    mul-float/2addr v1, v5

    int-to-float p2, p2

    div-float/2addr v1, p2

    iget-object p2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-boolean v6, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->h:Z

    if-eqz v6, :cond_5f

    iget v6, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->f:I

    int-to-float v7, p2

    mul-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_61

    :cond_5f
    iget v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->f:I

    :goto_61
    iget-object v6, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    int-to-float v1, p2

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v6, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->c:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    if-eqz p1, :cond_99

    add-int/2addr v4, p1

    if-le v4, p2, :cond_7c

    goto :goto_81

    :cond_7c
    if-gez v4, :cond_80

    move p2, v2

    goto :goto_81

    :cond_80
    move p2, v4

    :goto_81
    int-to-float p1, p2

    mul-float/2addr p1, v5

    div-float/2addr p1, v1

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->a:Landroid/view/View;

    instance-of p2, p0, Landroid/widget/AbsListView;

    if-eqz p2, :cond_96

    check-cast p0, Landroid/widget/AbsListView;

    invoke-virtual {p0, p1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_99

    :cond_96
    invoke-virtual {p0, v2, p1}, Landroid/view/View;->scrollBy(II)V

    :cond_99
    :goto_99
    const/4 p0, 0x1

    return p0
.end method
