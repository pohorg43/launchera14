.class public Lcom/coui/appcompat/slideview/COUISlideView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;,
        Lcom/coui/appcompat/slideview/COUISlideView$OnSlideMenuItemClickListener;,
        Lcom/coui/appcompat/slideview/COUISlideView$OnSmoothScrollListener;,
        Lcom/coui/appcompat/slideview/COUISlideView$OnDeleteItemClickListener;,
        Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;
    }
.end annotation


# static fields
.field public static u0:Landroid/graphics/Rect;


# instance fields
.field public A:I

.field public B:I

.field public C:Landroid/view/VelocityTracker;

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public N:I

.field public O:I

.field public P:Z

.field public Q:Z

.field public R:I

.field public S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public a:I

.field public a0:Landroid/graphics/Paint;

.field public b:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public b0:Landroid/graphics/Path;

.field public c:Landroid/graphics/Paint;

.field public c0:Z

.field public d:Landroid/content/Context;

.field public d0:Landroid/view/animation/Interpolator;

.field public e:Landroid/widget/Scroller;

.field public e0:Landroid/animation/ValueAnimator;

.field public f:Landroid/view/animation/Interpolator;

.field public f0:Landroid/animation/ValueAnimator;

.field public g:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;

.field public g0:Z

.field public h:Landroid/view/View;

.field public h0:I

.field public i:I

.field public i0:I

.field public j:I

.field public j0:Landroid/view/animation/Interpolator;

.field public k:Z

.field public k0:Z

.field public l:Z

.field public l0:I

.field public m:Z

.field public m0:Z

.field public n:Z

.field public n0:Lcom/coui/appcompat/slideview/COUISlideView$OnDeleteItemClickListener;

.field public o:I

.field public o0:Lcom/coui/appcompat/slideview/COUISlideView$OnSmoothScrollListener;

.field public p:Ljava/lang/String;

.field public p0:Ljava/lang/Runnable;

.field public q:I

.field public q0:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideMenuItemClickListener;

.field public r:Landroid/graphics/drawable/Drawable;

.field public r0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/slideview/COUISlideMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public s:I

.field public s0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public t:Landroid/animation/ValueAnimator;

.field public t0:Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;

.field public u:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public v:Landroid/text/Layout;

.field public w:Landroid/graphics/Paint;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/slideview/COUISlideView;->u0:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/slideview/COUISlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/list/R$attr;->couiSlideView:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/slideview/COUISlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->j:I

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->n:Z

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->o:I

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->q:I

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->s:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->v:Landroid/text/Layout;

    iput-object v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->D:I

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->E:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->G:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->H:Z

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->O:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    invoke-static {v3, v4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->c(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->T:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/list/R$dimen;->coui_slide_view_menuitem_gap_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->U:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/list/R$dimen;->coui_slide_view_menuitem_start_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->V:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/list/R$dimen;->coui_slide_view_menuitem_end_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->W:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->a0:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->b0:Landroid/graphics/Path;

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    new-instance v3, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v3}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d0:Landroid/view/animation/Interpolator;

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->g0:Z

    const/4 v3, 0x2

    iput v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h0:I

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i0:I

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e2e147b  # 0.17f

    const v6, 0x3f2b851f  # 0.67f

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-direct {v4, v5, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->j0:Landroid/view/animation/Interpolator;

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k0:Z

    iget v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->T:I

    iput v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l0:I

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m0:Z

    if-eqz p2, :cond_96

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->a:I

    :cond_96
    iget v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->a:I

    if-nez v4, :cond_9c

    iput p3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->a:I

    :cond_9c
    sget-object v4, Lcom/support/list/R$styleable;->COUISlideView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/list/R$styleable;->COUISlideView_itemBackgroundColor:I

    sget v4, Lcom/support/appcompat/R$attr;->couiColorError:I

    invoke-static {p1, v4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->R:I

    sget p3, Lcom/support/list/R$styleable;->COUISlideView_slideTextColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/list/R$color;->coui_slideview_textcolor:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v4, v5, p1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->b:I

    sget p1, Lcom/support/list/R$styleable;->COUISlideView_touchAllRound:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k0:Z

    sget p1, Lcom/support/list/R$styleable;->COUISlideView_backgroundPadding:I

    iget p3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->T:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l0:I

    sget p1, Lcom/support/list/R$styleable;->COUISlideView_disableBackgroundAnimator:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m0:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->S:Ljava/util/List;

    iget p2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->R:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/list/R$dimen;->coui_slide_view_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    int-to-float p1, p1

    invoke-static {p1, p2, v3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/list/R$dimen;->coui_slideview_touch_slop:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/list/R$dimen;->coui_slideview_over_slide_delete:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/list/R$dimen;->coui_slideview_quick_delete:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c:Landroid/graphics/Paint;

    iget p3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->b:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/list/R$dimen;->coui_slide_view_text_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->s:I

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/list/R$dimen;->coui_slide_view_padding_right:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/list/R$dimen;->coui_slideview_group_round_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->s0:Ljava/util/ArrayList;

    new-instance p1, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;-><init>(Lcom/coui/appcompat/slideview/COUISlideView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->t0:Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->B:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/slideview/COUISlideView;->setDeleteEnable(Z)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->w:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/list/R$color;->coui_slideview_delete_divider_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$drawable;->coui_divider_horizontal_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r:Landroid/graphics/drawable/Drawable;

    const p1, 0x3e083127  # 0.133f

    const/4 p2, 0x0

    const p3, 0x3e99999a  # 0.3f

    invoke-static {p1, p2, p3, v7}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->f:Landroid/view/animation/Interpolator;

    new-instance p1, Landroid/widget/Scroller;

    iget-object p2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d:Landroid/content/Context;

    iget-object p3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->f:Landroid/view/animation/Interpolator;

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->c()V

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d:Landroid/content/Context;

    sget p2, Lcom/support/appcompat/R$string;->coui_slide_delete:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->p:Ljava/lang/String;

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/list/R$color;->coui_slideview_backcolor:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->N:I

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget p2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->N:I

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget p2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->N:I

    const p3, 0xffffff

    and-int/2addr p2, p3

    iput p2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->N:I

    new-array p2, v3, [I

    fill-array-data p2, :array_23a

    const-string p3, "Alpha"

    invoke-static {p1, p3, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->t:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->t:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/slideview/COUISlideView$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/slideview/COUISlideView$1;-><init>(Lcom/coui/appcompat/slideview/COUISlideView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/list/R$dimen;->coui_slide_view_item_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void

    :array_23a
    .array-data 4
        0x0
        0xd2
    .end array-data
.end method

.method public static d(II)J
    .registers 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->f0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->f0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->g0:Z

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1d
    return-void
.end method

.method public b(I)I
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->v:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_7
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1c

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->v:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_1a

    move v0, v2

    goto :goto_7

    :cond_1a
    move v1, v2

    goto :goto_7

    :cond_1c
    if-gez v1, :cond_20

    const/4 p0, 0x0

    return p0

    :cond_20
    return v1
.end method

.method public final c()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    iget-object v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->o:I

    :goto_b
    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->o:I

    if-ge v0, v1, :cond_21

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    iget-object v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v2, v2, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_21
    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->j:I

    iget-boolean v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    if-eqz v2, :cond_37

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->U:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->V:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->W:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    :cond_37
    return-void
.end method

.method public computeScroll()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    :cond_1c
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->t0:Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public e(I)V
    .registers 8

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v1

    sub-int v3, p1, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    const/16 v0, 0xc8

    if-le p1, v0, :cond_12

    move v5, v0

    goto :goto_13

    :cond_12
    move v5, p1

    :goto_13
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public f(Landroid/view/View;)V
    .registers 12

    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->Q:Z

    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_11

    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    neg-int v0, v0

    goto :goto_13

    :cond_11
    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    :goto_13
    move v6, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_20

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_24

    :cond_20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    :goto_24
    move v7, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    new-instance v0, Lcom/coui/appcompat/slideview/COUISlideView$7;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/coui/appcompat/slideview/COUISlideView$7;-><init>(Lcom/coui/appcompat/slideview/COUISlideView;Landroid/view/View;Landroid/view/View;IIII)V

    iget-object p0, v0, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public g()V
    .registers 5

    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m0:Z

    iget-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    if-nez v1, :cond_7

    goto :goto_4d

    :cond_7
    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->a()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i0:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_4d

    :cond_30
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    iput-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->g0:Z

    goto :goto_4d

    :cond_3c
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->f0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4d

    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h0:I

    if-ne v0, v1, :cond_4d

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->f0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    return-object p0
.end method

.method public getDeleteItemText()Ljava/lang/CharSequence;
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->d:Ljava/lang/CharSequence;

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDiver()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDiverEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->n:Z

    return p0
.end method

.method public getDrawItemEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m:Z

    return p0
.end method

.method public getHolderWidth()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    return p0
.end method

.method public getScroll()Landroid/widget/Scroller;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e:Landroid/widget/Scroller;

    return-object p0
.end method

.method public getSlideEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l:Z

    return p0
.end method

.method public getSlideViewScrollX()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    return p0
.end method

.method public hasFocusable()Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isFocusable()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v1
.end method

.method public isLayoutRtl()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->l:Z

    const/4 v3, 0x0

    if-nez v2, :cond_10

    iget-boolean v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->m:Z

    if-eqz v2, :cond_405

    :cond_10
    iget-boolean v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_87

    iget-object v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->a0:Landroid/graphics/Paint;

    iget v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->i0:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-boolean v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->k0:Z

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    move v2, v3

    goto :goto_32

    :cond_2a
    :goto_2a
    iget v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->l0:I

    neg-int v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v6

    sub-int/2addr v2, v6

    :goto_32
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_41

    iget-boolean v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->k0:Z

    if-nez v6, :cond_41

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    goto :goto_4d

    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    iget v7, v0, Lcom/coui/appcompat/slideview/COUISlideView;->l0:I

    add-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    :goto_4d
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v8, v2, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v6

    xor-int/2addr v6, v5

    iget-boolean v7, v0, Lcom/coui/appcompat/slideview/COUISlideView;->k0:Z

    if-eqz v7, :cond_69

    move v12, v5

    move v13, v12

    goto :goto_6b

    :cond_69
    move v12, v2

    move v13, v6

    :goto_6b
    iget-object v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->b0:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget v7, v0, Lcom/coui/appcompat/slideview/COUISlideView;->T:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v9, v6

    move-object v7, v2

    move v10, v12

    move v11, v13

    invoke-static/range {v7 .. v13}, Lcom/coui/appcompat/roundRect/COUIShapePath;->b(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    iput-object v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->b0:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->a0:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_87
    iget v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->o:I

    if-gtz v2, :cond_8d

    goto/16 :goto_405

    :cond_8d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->q:I

    if-lez v2, :cond_9c

    shl-int/lit8 v2, v2, 0x18

    iget v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->N:I

    or-int/2addr v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_9c
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v2

    const/4 v6, -0x1

    if-eqz v2, :cond_a5

    move v2, v6

    goto :goto_a6

    :cond_a5
    move v2, v5

    :goto_a6
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_b4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_b4
    iget-object v7, v0, Lcom/coui/appcompat/slideview/COUISlideView;->v:Landroid/text/Layout;

    if-nez v7, :cond_cf

    new-instance v7, Landroid/text/StaticLayout;

    iget-object v9, v0, Lcom/coui/appcompat/slideview/COUISlideView;->p:Ljava/lang/String;

    iget-object v8, v0, Lcom/coui/appcompat/slideview/COUISlideView;->c:Landroid/graphics/Paint;

    move-object v10, v8

    check-cast v10, Landroid/text/TextPaint;

    iget v11, v0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000  # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lcom/coui/appcompat/slideview/COUISlideView;->v:Landroid/text/Layout;

    :cond_cf
    sget-object v7, Lcom/coui/appcompat/slideview/COUISlideView;->u0:Landroid/graphics/Rect;

    monitor-enter v7

    :try_start_d2
    sget-object v8, Lcom/coui/appcompat/slideview/COUISlideView;->u0:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_e0

    invoke-static {v3, v6}, Lcom/coui/appcompat/slideview/COUISlideView;->d(II)J

    move-result-wide v8

    monitor-exit v7

    goto :goto_10c

    :cond_e0
    sget-object v8, Lcom/coui/appcompat/slideview/COUISlideView;->u0:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->top:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    monitor-exit v7
    :try_end_e7
    .catchall {:try_start_d2 .. :try_end_e7} :catchall_42e

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v9, v0, Lcom/coui/appcompat/slideview/COUISlideView;->v:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-lt v7, v8, :cond_100

    invoke-static {v3, v6}, Lcom/coui/appcompat/slideview/COUISlideView;->d(II)J

    move-result-wide v8

    goto :goto_10c

    :cond_100
    invoke-virtual {v0, v7}, Lcom/coui/appcompat/slideview/COUISlideView;->b(I)I

    move-result v7

    invoke-virtual {v0, v8}, Lcom/coui/appcompat/slideview/COUISlideView;->b(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/coui/appcompat/slideview/COUISlideView;->d(II)J

    move-result-wide v8

    :goto_10c
    const/16 v7, 0x20

    ushr-long v7, v8, v7

    long-to-int v7, v7

    if-gez v7, :cond_118

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_405

    :cond_118
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iget v9, v0, Lcom/coui/appcompat/slideview/COUISlideView;->R:I

    iget v10, v0, Lcom/coui/appcompat/slideview/COUISlideView;->q:I

    if-lez v10, :cond_12e

    const v11, 0xffffff

    and-int/2addr v9, v11

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_131

    :cond_12e
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    :goto_131
    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v10

    mul-int/2addr v10, v2

    sub-int/2addr v9, v10

    iget-object v10, v0, Lcom/coui/appcompat/slideview/COUISlideView;->S:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v5, :cond_1b0

    new-instance v10, Landroid/graphics/RectF;

    mul-int/2addr v9, v2

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    mul-int/2addr v11, v2

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v10, v9, v4, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-boolean v9, v0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    if-eqz v9, :cond_1ad

    iget v9, v10, Landroid/graphics/RectF;->left:F

    iget v11, v0, Lcom/coui/appcompat/slideview/COUISlideView;->V:I

    mul-int/2addr v11, v2

    int-to-float v11, v11

    add-float/2addr v9, v11

    iput v9, v10, Landroid/graphics/RectF;->left:F

    iget-boolean v11, v0, Lcom/coui/appcompat/slideview/COUISlideView;->Q:Z

    if-nez v11, :cond_180

    iget-boolean v11, v0, Lcom/coui/appcompat/slideview/COUISlideView;->P:Z

    if-eqz v11, :cond_170

    goto :goto_180

    :cond_170
    iget-object v11, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v11, v11, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    mul-int/2addr v11, v2

    int-to-float v11, v11

    add-float/2addr v9, v11

    iput v9, v10, Landroid/graphics/RectF;->right:F

    goto :goto_189

    :cond_180
    :goto_180
    iget v9, v10, Landroid/graphics/RectF;->right:F

    iget v11, v0, Lcom/coui/appcompat/slideview/COUISlideView;->W:I

    mul-int/2addr v11, v2

    int-to-float v11, v11

    sub-float/2addr v9, v11

    iput v9, v10, Landroid/graphics/RectF;->right:F

    :goto_189
    iget v9, v10, Landroid/graphics/RectF;->left:F

    iget v11, v10, Landroid/graphics/RectF;->right:F

    cmpl-float v12, v9, v11

    if-lez v12, :cond_195

    iput v11, v10, Landroid/graphics/RectF;->left:F

    iput v9, v10, Landroid/graphics/RectF;->right:F

    :cond_195
    iget-object v9, v0, Lcom/coui/appcompat/slideview/COUISlideView;->b0:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    iget v12, v0, Lcom/coui/appcompat/slideview/COUISlideView;->T:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v9, v10, v11}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iput-object v9, v0, Lcom/coui/appcompat/slideview/COUISlideView;->b0:Landroid/graphics/Path;

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1b0

    :cond_1ad
    invoke-virtual {v1, v10, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1b0
    :goto_1b0
    iget-object v9, v0, Lcom/coui/appcompat/slideview/COUISlideView;->v:Landroid/text/Layout;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iget-object v10, v0, Lcom/coui/appcompat/slideview/COUISlideView;->v:Landroid/text/Layout;

    invoke-virtual {v10, v7}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v7

    sub-int/2addr v9, v7

    iget-object v7, v0, Lcom/coui/appcompat/slideview/COUISlideView;->c:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v10, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    sub-int/2addr v10, v7

    move v7, v3

    :goto_1d7
    iget v11, v0, Lcom/coui/appcompat/slideview/COUISlideView;->o:I

    if-ge v7, v11, :cond_3f3

    iget-object v11, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget-object v11, v11, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->c:Landroid/graphics/drawable/Drawable;

    iget-boolean v12, v0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    if-nez v12, :cond_20a

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v12

    mul-int/2addr v12, v2

    iget v13, v0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    if-le v12, v13, :cond_20a

    iget-boolean v12, v0, Lcom/coui/appcompat/slideview/COUISlideView;->G:Z

    if-nez v12, :cond_20a

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v12

    mul-int/2addr v12, v2

    iget v13, v0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    sub-int/2addr v12, v13

    goto :goto_20b

    :cond_20a
    move v12, v3

    :goto_20b
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v13

    mul-int/2addr v13, v2

    iget v14, v0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    if-le v13, v14, :cond_221

    iget-boolean v13, v0, Lcom/coui/appcompat/slideview/COUISlideView;->G:Z

    if-eqz v13, :cond_221

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v13

    mul-int/2addr v13, v2

    iget v14, v0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    sub-int/2addr v13, v14

    goto :goto_222

    :cond_221
    move v13, v3

    :goto_222
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v15

    mul-int/2addr v15, v2

    sub-int/2addr v14, v15

    iget v15, v0, Lcom/coui/appcompat/slideview/COUISlideView;->o:I

    sub-int v16, v15, v7

    mul-int v16, v16, v12

    add-int/lit8 v17, v15, 0x1

    div-int v16, v16, v17

    add-int v16, v16, v14

    add-int v16, v16, v13

    mul-int v16, v16, v2

    add-int/2addr v15, v6

    move/from16 v13, v16

    :goto_23f
    if-le v15, v7, :cond_250

    iget-object v14, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v14, v14, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    mul-int/2addr v14, v2

    add-int/2addr v13, v14

    add-int/lit8 v15, v15, -0x1

    goto :goto_23f

    :cond_250
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v14

    iget-object v15, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v15, v15, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    add-int/2addr v15, v13

    iget-object v4, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget-object v4, v4, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->d:Ljava/lang/CharSequence;

    if-eqz v4, :cond_294

    iget-object v4, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget-object v4, v4, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->d:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    iget-object v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v6, v6, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    mul-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v13

    int-to-float v6, v6

    div-int/lit8 v18, v14, 0x2

    add-int v18, v18, v9

    div-int/lit8 v19, v10, 0x2

    sub-int v5, v18, v19

    int-to-float v5, v5

    iget-object v3, v0, Lcom/coui/appcompat/slideview/COUISlideView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_294
    iget-object v3, v0, Lcom/coui/appcompat/slideview/COUISlideView;->s0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_2bf

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/coui/appcompat/slideview/COUISlideView;->s0:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_2aa
    iget-object v4, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2bf

    iget-object v4, v0, Lcom/coui/appcompat/slideview/COUISlideView;->s0:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2aa

    :cond_2bf
    iget-object v3, v0, Lcom/coui/appcompat/slideview/COUISlideView;->s0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2d3

    iget-object v3, v0, Lcom/coui/appcompat/slideview/COUISlideView;->s0:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v4, v15, v14}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2d3
    if-eqz v11, :cond_3e3

    iget-boolean v3, v0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    if-eqz v3, :cond_2e6

    iget v3, v0, Lcom/coui/appcompat/slideview/COUISlideView;->V:I

    iget v4, v0, Lcom/coui/appcompat/slideview/COUISlideView;->o:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    sub-int/2addr v4, v7

    iget v5, v0, Lcom/coui/appcompat/slideview/COUISlideView;->U:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    mul-int/2addr v4, v2

    add-int/2addr v13, v4

    :cond_2e6
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget-object v5, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v5, v5, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    sub-int/2addr v5, v3

    mul-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v13

    sub-int/2addr v14, v4

    div-int/lit8 v14, v14, 0x2

    mul-int/2addr v3, v2

    add-int/2addr v3, v5

    if-le v5, v3, :cond_305

    goto :goto_30a

    :cond_305
    move/from16 v21, v5

    move v5, v3

    move/from16 v3, v21

    :goto_30a
    iget-object v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->S:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v15, 0x1

    if-eq v6, v15, :cond_3d6

    iget-object v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->S:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v15, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v6, v15, :cond_3d6

    iget-object v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->S:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v7, v6, :cond_3d6

    iget-object v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->S:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v6, v6, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v13

    int-to-float v12, v12

    iget v15, v0, Lcom/coui/appcompat/slideview/COUISlideView;->o:I

    int-to-float v15, v15

    const/high16 v19, 0x3f800000  # 1.0f

    add-float v15, v15, v19

    div-float/2addr v12, v15

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v12, v12

    const/high16 v15, 0x40000000  # 2.0f

    if-nez v7, :cond_364

    int-to-float v6, v13

    div-float/2addr v12, v15

    int-to-float v13, v2

    mul-float/2addr v12, v13

    sub-float/2addr v6, v12

    float-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    mul-int/2addr v12, v2

    const/16 v17, -0x1

    goto :goto_38e

    :cond_364
    iget-object v15, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v17, -0x1

    add-int/lit8 v15, v15, -0x1

    if-ne v7, v15, :cond_380

    int-to-float v13, v13

    int-to-float v15, v2

    mul-float v20, v12, v15

    sub-float v13, v13, v20

    float-to-int v13, v13

    int-to-float v6, v6

    const/high16 v19, 0x40000000  # 2.0f

    div-float v12, v12, v19

    mul-float/2addr v12, v15

    add-float/2addr v12, v6

    float-to-int v6, v12

    goto :goto_38c

    :cond_380
    const/high16 v19, 0x40000000  # 2.0f

    int-to-float v13, v13

    div-float v12, v12, v19

    int-to-float v15, v2

    mul-float/2addr v12, v15

    sub-float/2addr v13, v12

    float-to-int v13, v13

    int-to-float v6, v6

    add-float/2addr v6, v12

    float-to-int v6, v6

    :goto_38c
    move v12, v6

    move v6, v13

    :goto_38e
    new-instance v13, Landroid/graphics/RectF;

    int-to-float v6, v6

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v15

    int-to-float v15, v15

    move/from16 v19, v9

    const/4 v9, 0x0

    invoke-direct {v13, v6, v9, v12, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-boolean v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    if-eqz v6, :cond_3d2

    iget-object v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v6, v6, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    mul-int/2addr v6, v2

    iget v12, v13, Landroid/graphics/RectF;->left:F

    int-to-float v6, v6

    add-float/2addr v6, v12

    iput v6, v13, Landroid/graphics/RectF;->right:F

    cmpl-float v15, v12, v6

    if-lez v15, :cond_3ba

    iput v6, v13, Landroid/graphics/RectF;->left:F

    iput v12, v13, Landroid/graphics/RectF;->right:F

    :cond_3ba
    iget-object v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->b0:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    iget v15, v0, Lcom/coui/appcompat/slideview/COUISlideView;->T:I

    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v6, v13, v12}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    iget-object v6, v0, Lcom/coui/appcompat/slideview/COUISlideView;->b0:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3db

    :cond_3d2
    invoke-virtual {v1, v13, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3db

    :cond_3d6
    move/from16 v19, v9

    const/4 v9, 0x0

    const/16 v17, -0x1

    :goto_3db
    add-int/2addr v4, v14

    invoke-virtual {v11, v3, v14, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3e8

    :cond_3e3
    move/from16 v19, v9

    const/4 v9, 0x0

    const/16 v17, -0x1

    :goto_3e8
    add-int/lit8 v7, v7, 0x1

    move v4, v9

    move/from16 v6, v17

    move/from16 v9, v19

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1d7

    :cond_3f3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v2

    if-nez v2, :cond_405

    iget-object v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->t0:Lcom/coui/appcompat/slideview/COUISlideView$AccessibilityTouchHelper;

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_405
    :goto_405
    iget-boolean v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->n:Z

    if-eqz v2, :cond_42d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget-object v4, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v0, Lcom/coui/appcompat/slideview/COUISlideView;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_42d
    return-void

    :catchall_42e
    move-exception v0

    :try_start_42f
    monitor-exit v7
    :try_end_430
    .catchall {:try_start_42f .. :try_end_430} :catchall_42e

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, -0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_10b

    const/4 v4, 0x1

    if-ne v0, v4, :cond_15

    goto/16 :goto_10b

    :cond_15
    if-eqz v0, :cond_21

    iget-boolean v5, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    if-eqz v5, :cond_1c

    return v4

    :cond_1c
    iget-boolean v5, p0, Lcom/coui/appcompat/slideview/COUISlideView;->E:Z

    if-eqz v5, :cond_21

    return v1

    :cond_21
    iget-object v5, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    if-eqz v0, :cond_d4

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2e

    goto/16 :goto_108

    :cond_2e
    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->D:I

    if-ne v0, v2, :cond_34

    goto/16 :goto_108

    :cond_34
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iget v6, p0, Lcom/coui/appcompat/slideview/COUISlideView;->x:I

    sub-int v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v8, p0, Lcom/coui/appcompat/slideview/COUISlideView;->A:I

    sub-int v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->x:I

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->y:I

    if-lez v7, :cond_7a

    int-to-float v2, v7

    const/high16 v7, 0x3f000000  # 0.5f

    mul-float/2addr v2, v7

    int-to-float v7, v8

    cmpl-float v2, v2, v7

    if-lez v2, :cond_7a

    iput-boolean v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_6c

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6c
    if-lez v6, :cond_72

    iget v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    add-int/2addr v2, v1

    goto :goto_75

    :cond_72
    iget v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    sub-int/2addr v2, v1

    :goto_75
    iput v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->x:I

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->y:I

    goto :goto_7e

    :cond_7a
    if-lez v8, :cond_7e

    iput-boolean v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->E:Z

    :cond_7e
    :goto_7e
    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    if-eqz v0, :cond_108

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    if-nez v0, :cond_8c

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    :cond_8c
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    if-ge p1, v0, :cond_a3

    iget p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->o:I

    if-ne p1, v4, :cond_9e

    goto :goto_a3

    :cond_9e
    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x7

    goto :goto_a6

    :cond_a3
    :goto_a3
    mul-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x7

    :goto_a6
    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p1

    if-eq p1, v4, :cond_af

    if-ltz v5, :cond_b7

    :cond_af
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p1

    if-ne p1, v4, :cond_b9

    if-lez v5, :cond_b9

    :cond_b7
    move v5, v1

    goto :goto_ce

    :cond_b9
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    if-le p1, v0, :cond_ce

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p1

    if-ne p1, v4, :cond_cb

    iget p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    neg-int p1, p1

    goto :goto_cd

    :cond_cb
    iget p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    :goto_cd
    move v5, p1

    :cond_ce
    :goto_ce
    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    invoke-virtual {p1, v5, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_108

    :cond_d4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->D:I

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    if-nez v0, :cond_e5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    goto :goto_e8

    :cond_e5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_e8
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->x:I

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->y:I

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->A:I

    iput-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->E:Z

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->g:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;

    if-eqz p1, :cond_108

    invoke-interface {p1, p0, v4}, Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;->a(Landroid/view/View;I)V

    :cond_108
    :goto_108
    iget-boolean p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    return p0

    :cond_10b
    :goto_10b
    iput-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->E:Z

    iput v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->D:I

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l:Z

    const/4 v2, 0x0

    if-nez v1, :cond_35

    iget-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m:Z

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->G:Z

    if-eqz v1, :cond_12

    goto :goto_34

    :cond_12
    if-nez v0, :cond_35

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_26

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_35

    return v2

    :cond_26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_35

    :cond_34
    :goto_34
    return v2

    :cond_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    if-nez v4, :cond_4f

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    :cond_4f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3d8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000  # 0.5f

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v4, v5, :cond_190

    if-eq v4, v10, :cond_ac

    if-eq v4, v9, :cond_64

    goto/16 :goto_45f

    :cond_64
    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v0

    if-nez v0, :cond_6d

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->g()V

    :cond_6d
    int-to-float v0, v3

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v7

    if-lez v0, :cond_84

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_81

    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    neg-int v0, v0

    goto :goto_85

    :cond_81
    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    goto :goto_85

    :cond_84
    move v0, v2

    :goto_85
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/slideview/COUISlideView;->e(I)V

    if-nez v0, :cond_8b

    move v10, v2

    :cond_8b
    iput v10, p0, Lcom/coui/appcompat/slideview/COUISlideView;->O:I

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->g:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;

    if-eqz v0, :cond_94

    invoke-interface {v0, p0, v10}, Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;->a(Landroid/view/View;I)V

    :cond_94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9d

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9d
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a6

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v6, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    :cond_a6
    iput-boolean v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->E:Z

    goto/16 :goto_45f

    :cond_ac
    iget v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->x:I

    sub-int v4, v0, v4

    iget v6, p0, Lcom/coui/appcompat/slideview/COUISlideView;->y:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/coui/appcompat/slideview/COUISlideView;->D:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/coui/appcompat/slideview/COUISlideView;->x:I

    sub-int v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iget v11, p0, Lcom/coui/appcompat/slideview/COUISlideView;->A:I

    sub-int v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iput v8, p0, Lcom/coui/appcompat/slideview/COUISlideView;->x:I

    iput v7, p0, Lcom/coui/appcompat/slideview/COUISlideView;->y:I

    const/16 v7, 0x8

    if-le v10, v7, :cond_f5

    int-to-float v8, v10

    const v10, 0x3f4ccccd  # 0.8f

    mul-float/2addr v8, v10

    int-to-float v10, v11

    cmpl-float v8, v8, v10

    if-lez v8, :cond_f5

    iput-boolean v5, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    if-lez v9, :cond_ee

    iget v8, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    add-int/2addr v8, v7

    goto :goto_f1

    :cond_ee
    iget v8, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    sub-int/2addr v8, v7

    :goto_f1
    iput v8, p0, Lcom/coui/appcompat/slideview/COUISlideView;->x:I

    iput v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->y:I

    :cond_f5
    iget-boolean v7, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    if-eqz v7, :cond_162

    if-eqz v4, :cond_162

    iget-boolean v7, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l:Z

    if-eqz v7, :cond_162

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    if-lt v6, v7, :cond_12a

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_11a

    neg-int v6, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/coui/appcompat/slideview/COUISlideView;->j:I

    sub-int/2addr v7, v8

    invoke-static {v4, v6, v7}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v4

    goto :goto_12a

    :cond_11a
    iget v6, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    sub-int v6, v3, v6

    neg-int v6, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    sub-int/2addr v7, v8

    invoke-static {v4, v6, v7}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->b(III)I

    move-result v4

    :cond_12a
    :goto_12a
    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_139

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_139
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v4

    if-eq v4, v5, :cond_144

    if-ltz v3, :cond_14c

    :cond_144
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v4

    if-ne v4, v5, :cond_14e

    if-lez v3, :cond_14e

    :cond_14c
    move v3, v2

    goto :goto_151

    :cond_14e
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    :goto_151
    iget-object v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    invoke-virtual {v4, v3, v2}, Landroid/view/View;->scrollTo(II)V

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->x:I

    iput v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->y:I

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_161

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_161
    return v5

    :cond_162
    if-eqz v6, :cond_45f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_45f

    iget-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    if-nez v1, :cond_186

    const/4 v1, 0x6

    if-gt v6, v1, :cond_174

    const/4 v1, -0x6

    if-ge v6, v1, :cond_186

    :cond_174
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_186

    :try_start_17b
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView;

    invoke-static {v1, v2}, Lcom/coui/appcompat/list/AbsListViewNative;->a(Landroid/widget/AbsListView;I)V
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_181} :catch_182

    goto :goto_186

    :catch_182
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_186
    :goto_186
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto/16 :goto_45f

    :cond_190
    iget-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l:Z

    if-nez v1, :cond_1aa

    iget-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m:Z

    if-eqz v1, :cond_24d

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v1

    if-eqz v1, :cond_24d

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    if-eq v1, v4, :cond_24d

    :cond_1aa
    iget-object v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->B:I

    int-to-float v4, v4

    const/16 v11, 0x3e8

    invoke-virtual {v1, v11, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->D:I

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    float-to-int v1, v1

    iget-boolean v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l:Z

    if-nez v4, :cond_1d5

    iget-boolean v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m:Z

    if-eqz v4, :cond_209

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v4

    if-eqz v4, :cond_209

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v12, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    if-eq v4, v12, :cond_209

    :cond_1d5
    const/16 v4, -0x3e8

    if-ge v1, v4, :cond_1e3

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1e0

    goto :goto_209

    :cond_1e0
    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    goto :goto_20a

    :cond_1e3
    if-le v1, v11, :cond_1ee

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_209

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    goto :goto_204

    :cond_1ee
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    sub-float/2addr v1, v3

    cmpl-float v1, v1, v7

    if-lez v1, :cond_209

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_206

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    :goto_204
    neg-int v1, v1

    goto :goto_20a

    :cond_206
    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    goto :goto_20a

    :cond_209
    :goto_209
    move v1, v2

    :goto_20a
    iget-boolean v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->G:Z

    if-nez v3, :cond_241

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    int-to-float v4, v1

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const/high16 v4, 0x43480000  # 200.0f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v7, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    sget-object v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v4, v7, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->u:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->u:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Lcom/coui/appcompat/slideview/COUISlideView$10;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/slideview/COUISlideView$10;-><init>(Lcom/coui/appcompat/slideview/COUISlideView;)V

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-nez v1, :cond_241

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->g()V

    :cond_241
    if-nez v1, :cond_244

    move v10, v2

    :cond_244
    iput v10, p0, Lcom/coui/appcompat/slideview/COUISlideView;->O:I

    iget-object v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->g:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;

    if-eqz v1, :cond_24d

    invoke-interface {v1, p0, v10}, Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;->a(Landroid/view/View;I)V

    :cond_24d
    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    if-ne v1, v3, :cond_379

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_268

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    iget v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    if-ge v1, v3, :cond_27e

    if-ge v0, v3, :cond_27e

    goto :goto_27c

    :cond_268
    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_27e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_27e

    :goto_27c
    move v1, v5

    goto :goto_27f

    :cond_27e
    move v1, v2

    :goto_27f
    if-eqz v1, :cond_313

    move v1, v2

    :goto_282
    iget v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->o:I

    if-ge v1, v3, :cond_379

    move v3, v2

    move v4, v3

    :goto_288
    if-ge v3, v1, :cond_298

    iget-object v7, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v7, v7, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_288

    :cond_298
    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2bb

    iget v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    iget-object v7, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v7, v7, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    add-int/2addr v7, v4

    if-ge v3, v7, :cond_2e3

    iget-object v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v3, v3, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    add-int/2addr v4, v3

    if-ge v0, v4, :cond_2e3

    goto :goto_2e1

    :cond_2bb
    iget v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    iget-object v8, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v8, v8, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    sub-int/2addr v7, v8

    if-le v3, v7, :cond_2e3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget v4, v4, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_2e3

    :goto_2e1
    move v3, v5

    goto :goto_2e4

    :cond_2e3
    move v3, v2

    :goto_2e4
    if-eqz v3, :cond_30f

    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k:Z

    if-eqz v0, :cond_2fb

    if-nez v1, :cond_2fb

    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->G:Z

    if-nez v0, :cond_2fb

    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->H:Z

    if-eqz v0, :cond_2fb

    iput-boolean v5, p0, Lcom/coui/appcompat/slideview/COUISlideView;->G:Z

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/slideview/COUISlideView;->f(Landroid/view/View;)V

    :cond_2fb
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->q0:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideMenuItemClickListener;

    if-eqz v0, :cond_379

    iget-object v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    invoke-interface {v0, v3, v1}, Lcom/coui/appcompat/slideview/COUISlideView$OnSlideMenuItemClickListener;->a(Lcom/coui/appcompat/slideview/COUISlideMenuItem;I)V

    goto/16 :goto_379

    :cond_30f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_282

    :cond_313
    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_32f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_32f

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    sub-int/2addr v1, v0

    neg-int v3, v3

    if-ge v1, v3, :cond_32f

    move v1, v5

    goto :goto_330

    :cond_32f
    move v1, v2

    :goto_330
    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_344

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    iget v3, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i:I

    if-ge v1, v3, :cond_343

    if-le v0, v3, :cond_343

    sub-int/2addr v1, v0

    if-le v1, v3, :cond_343

    move v1, v5

    goto :goto_344

    :cond_343
    move v1, v2

    :cond_344
    :goto_344
    if-eqz v1, :cond_379

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->u:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_34d

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_34d
    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v0

    if-eqz v0, :cond_379

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->o0:Lcom/coui/appcompat/slideview/COUISlideView$OnSmoothScrollListener;

    if-eqz v0, :cond_36a

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->p0:Ljava/lang/Runnable;

    if-eqz v0, :cond_35e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_35e
    new-instance v0, Lcom/coui/appcompat/slideview/COUISlideView$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/slideview/COUISlideView$2;-><init>(Lcom/coui/appcompat/slideview/COUISlideView;)V

    iput-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->p0:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v0, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_36a
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/slideview/COUISlideView;->e(I)V

    iput v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->O:I

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->g:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;

    if-eqz v0, :cond_376

    invoke-interface {v0, p0, v2}, Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;->a(Landroid/view/View;I)V

    :cond_376
    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->g()V

    :cond_379
    :goto_379
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3c9

    iget-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l:Z

    if-eqz v1, :cond_3c9

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    neg-float v4, v1

    neg-float v7, v3

    invoke-virtual {p1, v4, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-boolean v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    if-nez v4, :cond_3b9

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3af

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v4

    if-ltz v4, :cond_3b9

    goto :goto_3b5

    :cond_3af
    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->getSlideViewScrollX()I

    move-result v4

    if-gtz v4, :cond_3b9

    :goto_3b5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3c6

    :cond_3b9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :goto_3c6
    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_3c9
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3d2

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v6, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    :cond_3d2
    iput-boolean v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->F:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->E:Z

    goto/16 :goto_45f

    :cond_3d8
    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m0:Z

    iget-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    if-eqz v1, :cond_3ff

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->O:I

    if-eqz v1, :cond_3e3

    goto :goto_3ff

    :cond_3e3
    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->a()V

    if-eqz v0, :cond_3fa

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->i0:I

    iput v5, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_3ff

    :cond_3fa
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3ff
    :goto_3ff
    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->G:Z

    if-eqz v0, :cond_404

    return v2

    :cond_404
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_411

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_411
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->g:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;

    if-eqz v0, :cond_418

    invoke-interface {v0, p0, v5}, Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;->a(Landroid/view/View;I)V

    :cond_418
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->D:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->x:I

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->z:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->y:I

    iput v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->A:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_45f

    iget-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l:Z

    if-eqz v1, :cond_45f

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    neg-float v4, v2

    neg-float v6, v3

    invoke-virtual {p1, v4, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_45f
    :goto_45f
    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->C:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_466

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_466
    return v5
.end method

.method public setBackgroundPadding(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l0:I

    return-void
.end method

.method public setCanStartDeleteAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->H:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    return-void
.end method

.method public setDeleteEnable(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    new-instance v1, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget-object v2, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d:Landroid/content/Context;

    sget v3, Lcom/support/list/R$drawable;->coui_slide_view_delete:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/coui/appcompat/slideview/COUISlideMenuItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c:Landroid/graphics/Paint;

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget-object v1, p1, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3a

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c:Landroid/graphics/Paint;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->s:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_3a
    iget v1, p1, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    if-le v0, v1, :cond_46

    iput v0, p1, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    goto :goto_46

    :cond_41
    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->c()V

    return-void
.end method

.method public setDeleteItemIcon(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k:Z

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->c:Landroid/graphics/drawable/Drawable;

    :cond_19
    return-void
.end method

.method public setDeleteItemIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k:Z

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->c:Landroid/graphics/drawable/Drawable;

    :cond_f
    return-void
.end method

.method public setDeleteItemText(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/slideview/COUISlideView;->setDeleteItemText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDeleteItemText(Ljava/lang/CharSequence;)V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r0:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;

    iput-object p1, v0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->d:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c:Landroid/graphics/Paint;

    if-eqz v1, :cond_28

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->s:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget p1, v0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    if-le v1, p1, :cond_28

    iput v1, v0, Lcom/coui/appcompat/slideview/COUISlideMenuItem;->e:I

    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->c()V

    :cond_28
    return-void
.end method

.method public setDisableBackgroundAnimator(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m0:Z

    return-void
.end method

.method public setDiver(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/slideview/COUISlideView;->setDiver(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDiver(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->n:Z

    goto :goto_9

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->n:Z

    :goto_9
    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_12

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_12
    return-void
.end method

.method public setDiverEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->n:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setDrawItemEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->m:Z

    return-void
.end method

.method public setGroupOffset(I)V
    .registers 2

    return-void
.end method

.method public setItemBackgroundColor(I)V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->R:I

    if-eq v0, p1, :cond_13

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->R:I

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->S:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_13
    return-void
.end method

.method public setMenuDividerEnable(Z)V
    .registers 2

    return-void
.end method

.method public setMenuItemStyle(I)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    iput-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    goto :goto_9

    :cond_7
    iput-boolean v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c0:Z

    :goto_9
    invoke-virtual {p0}, Lcom/coui/appcompat/slideview/COUISlideView;->c()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    invoke-static {p1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput v0, v4, v0

    aput v2, v4, v1

    invoke-static {v4}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e0:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e0:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/coui/appcompat/slideview/COUISlideView;->d0:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e0:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/slideview/COUISlideView$3;

    invoke-direct {v5, p0, p1}, Lcom/coui/appcompat/slideview/COUISlideView$3;-><init>(Lcom/coui/appcompat/slideview/COUISlideView;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/coui/appcompat/slideview/COUISlideView;->e0:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/slideview/COUISlideView$4;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/slideview/COUISlideView$4;-><init>(Lcom/coui/appcompat/slideview/COUISlideView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v3, v3, [I

    aput v2, v3, v0

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->f0:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x16f

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->f0:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->j0:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->f0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/slideview/COUISlideView$5;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/slideview/COUISlideView$5;-><init>(Lcom/coui/appcompat/slideview/COUISlideView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->f0:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/slideview/COUISlideView$6;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/slideview/COUISlideView$6;-><init>(Lcom/coui/appcompat/slideview/COUISlideView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setOnDeleteItemClickListener(Lcom/coui/appcompat/slideview/COUISlideView$OnDeleteItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->n0:Lcom/coui/appcompat/slideview/COUISlideView$OnDeleteItemClickListener;

    return-void
.end method

.method public setOnSlideListener(Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->g:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideListener;

    return-void
.end method

.method public setOnSlideMenuItemClickListener(Lcom/coui/appcompat/slideview/COUISlideView$OnSlideMenuItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->q0:Lcom/coui/appcompat/slideview/COUISlideView$OnSlideMenuItemClickListener;

    return-void
.end method

.method public setOnSmoothScrollListener(Lcom/coui/appcompat/slideview/COUISlideView$OnSmoothScrollListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->o0:Lcom/coui/appcompat/slideview/COUISlideView$OnSmoothScrollListener;

    return-void
.end method

.method public setRoundRectMenuLeftMargin(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->V:I

    return-void
.end method

.method public setRoundRectMenuRightMargin(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->W:I

    return-void
.end method

.method public setSlideEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l:Z

    return-void
.end method

.method public setSlideTextColor(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->b:I

    if-eq v0, p1, :cond_e

    iput p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->b:I

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_e
    return-void
.end method

.method public setSlideViewScrollX(I)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public setTouchAllRound(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k0:Z

    return-void
.end method

.method public setUseDefaultBackground(Z)V
    .registers 2

    return-void
.end method
