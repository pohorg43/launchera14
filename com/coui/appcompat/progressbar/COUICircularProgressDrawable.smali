.class public Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;,
        Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;,
        Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;
    }
.end annotation


# static fields
.field public static final X:Landroid/view/animation/Interpolator;

.field public static final Y:Landroid/view/animation/Interpolator;

.field public static final Z:Landroid/view/animation/Interpolator;

.field public static final a0:Landroid/view/animation/Interpolator;

.field public static final b0:Landroid/animation/ArgbEvaluator;

.field public static final c0:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:F

.field public E:Landroid/view/View;

.field public F:Landroid/graphics/Paint;

.field public G:Landroid/graphics/Paint;

.field public H:Landroid/graphics/Paint;

.field public I:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public J:Landroid/animation/AnimatorSet;

.field public K:Landroid/animation/AnimatorSet;

.field public L:Landroid/animation/AnimatorSet;

.field public M:Landroid/animation/AnimatorSet;

.field public N:Landroid/animation/ValueAnimator;

.field public O:Landroid/animation/ValueAnimator;

.field public P:Landroid/animation/ValueAnimator;

.field public Q:Landroid/animation/ValueAnimator;

.field public R:Landroid/animation/ValueAnimator;

.field public S:Landroid/animation/ValueAnimator;

.field public T:Landroid/animation/ValueAnimator;

.field public U:Landroid/animation/ValueAnimator;

.field public V:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;

.field public W:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;

.field public a:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

.field public j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

.field public k:F

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->X:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->Y:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->Z:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->a0:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->b0:Landroid/animation/ArgbEvaluator;

    new-instance v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$1;

    const-string v1, "visualProgress"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->c0:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->a:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->b:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->f:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->g:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_pause_icon_rect_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->s:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_pause_icon_rect_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->t:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_pause_icon_rect_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->u:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_pause_icon_rect_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->v:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_error_icon_rect_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->w:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_error_icon_rect_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->x:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_error_icon_rect_bias:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->y:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_error_icon_circle_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->z:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_error_icon_circle_bias:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->A:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_shadow_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->B:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_shadow_x_bias:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->C:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_circular_progress_shadow_y_bias:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->D:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$color;->coui_circular_progress_shadow_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v1, v2, p1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->h:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->F:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-direct {p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->G:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->G:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->G:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-direct {p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->H:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x42480000  # 50.0f

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->c0:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v2, p0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->I:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->I:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lp0/d;

    invoke-direct {v2, p0}, Lp0/d;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/4 p1, 0x2

    new-array v2, p1, [F

    fill-array-data v2, :array_29a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->N:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->N:Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->X:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->N:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/coui/appcompat/progressbar/b;

    invoke-direct {v6, p0, v1}, Lcom/coui/appcompat/progressbar/b;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;I)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, p1, [F

    fill-array-data v2, :array_2a2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->O:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->O:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->O:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->Y:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->O:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/coui/appcompat/progressbar/a;

    invoke-direct {v6, p0, v1}, Lcom/coui/appcompat/progressbar/a;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;I)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->J:Landroid/animation/AnimatorSet;

    new-array v6, p1, [Landroid/animation/Animator;

    iget-object v7, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->O:Landroid/animation/ValueAnimator;

    aput-object v7, v6, v0

    iget-object v7, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->N:Landroid/animation/ValueAnimator;

    aput-object v7, v6, v1

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->J:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$2;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$2;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v2, p1, [F

    fill-array-data v2, :array_2aa

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->P:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->Z:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->P:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/guide/f;

    invoke-direct {v6, p0}, Lcom/android/launcher/guide/f;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, p1, [F

    fill-array-data v2, :array_2b2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->Q:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher/pageindicators/d;

    invoke-direct {v3, p0}, Lcom/android/launcher/pageindicators/d;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->K:Landroid/animation/AnimatorSet;

    new-array v3, p1, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->P:Landroid/animation/ValueAnimator;

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->Q:Landroid/animation/ValueAnimator;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->K:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$3;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$3;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v2, p1, [F

    fill-array-data v2, :array_2ba

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->R:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->R:Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->a0:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->R:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/coui/appcompat/progressbar/b;

    invoke-direct {v6, p0, v0}, Lcom/coui/appcompat/progressbar/b;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;I)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, p1, [F

    fill-array-data v2, :array_2c2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->T:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/coui/appcompat/progressbar/a;

    invoke-direct {v6, p0, v0}, Lcom/coui/appcompat/progressbar/a;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;I)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->L:Landroid/animation/AnimatorSet;

    new-array v6, p1, [Landroid/animation/Animator;

    iget-object v7, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->T:Landroid/animation/ValueAnimator;

    aput-object v7, v6, v0

    iget-object v7, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->R:Landroid/animation/ValueAnimator;

    aput-object v7, v6, v1

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->L:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$4;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$4;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v2, p1, [F

    fill-array-data v2, :array_2ca

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->S:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/keyguardservice/b;

    invoke-direct {v6, p0}, Lcom/android/keyguardservice/b;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, p1, [F

    fill-array-data v2, :array_2d2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->U:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->U:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->U:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher/download/s;

    invoke-direct {v3, p0}, Lcom/android/launcher/download/s;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->M:Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->U:Landroid/animation/ValueAnimator;

    aput-object v3, p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->S:Landroid/animation/ValueAnimator;

    aput-object v0, p1, v1

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->M:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_29a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_2a2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_2aa
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_2b2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_2ba
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_2c2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_2ca
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_2d2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static a(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 10

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a()F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v2, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d:F

    invoke-virtual {v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a()F

    move-result v1

    invoke-static {v2, v1, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v3, v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d:F

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a()F

    move-result v2

    invoke-static {v3, v2, p1, v1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v4, v3, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c:F

    invoke-virtual {v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b()F

    move-result v3

    invoke-static {v4, v3, p1, v2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b()F

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v5, v4, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c:F

    invoke-virtual {v4}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b()F

    move-result v4

    invoke-static {v5, v4, p1, v3}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v3

    sget-object v4, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->b0:Landroid/animation/ArgbEvaluator;

    iget-object v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v5, v5, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v6, v6, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v6, v6, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->k:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v7, v7, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->i:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, p1, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v4, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iput p1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->j:I

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iput v5, p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->j:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->F:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v2, v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->j:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->F:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v2, v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->e:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->G:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v2, v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->j:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->G:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v2, v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->e:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    const/high16 v10, 0x40000000  # 2.0f

    mul-float v4, v1, v10

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    mul-float v5, v1, v10

    iget v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v2, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->f:F

    iget v1, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->e:F

    sub-float/2addr v2, v1

    div-float v7, v2, v10

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v2, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->f:F

    iget v1, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->e:F

    sub-float/2addr v2, v1

    div-float v8, v2, v10

    iget v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->b:I

    const/16 v1, 0xff

    if-eq v6, v1, :cond_5d

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    mul-float v4, v1, v10

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    mul-float v5, v1, v10

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    goto :goto_60

    :cond_5d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_60
    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->F:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, -0x3d4c0000  # -90.0f

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v2, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a:F

    sub-float v3, v2, v8

    iget v1, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b:F

    sub-float v4, v1, v8

    add-float v5, v2, v8

    add-float v6, v1, v8

    const/4 v7, 0x0

    const v1, 0x38d1b717  # 1.0E-4f

    const/high16 v2, 0x43b40000  # 360.0f

    iget v8, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->k:F

    mul-float/2addr v8, v2

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->c:I

    int-to-float v2, v2

    div-float/2addr v8, v2

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->G:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v11

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->f:I

    if-eqz v6, :cond_10b

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    mul-float v4, v1, v10

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    mul-float v5, v1, v10

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->q:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->H:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->d:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->s:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->v:F

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    iget v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->t:F

    div-float/2addr v5, v10

    sub-float v6, v4, v5

    sub-float v7, v1, v3

    add-float/2addr v5, v4

    iget v8, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->u:F

    iget-object v9, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->H:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v6

    move v4, v7

    move v6, v8

    move v7, v8

    move-object v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->v:F

    div-float/2addr v2, v10

    add-float v3, v2, v1

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    iget v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->t:F

    div-float/2addr v5, v10

    sub-float v6, v4, v5

    iget v7, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->s:F

    add-float/2addr v1, v7

    add-float v7, v1, v2

    add-float/2addr v5, v4

    iget v8, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->u:F

    iget-object v9, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->H:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    move v3, v6

    move v4, v7

    move v6, v8

    move v7, v8

    move-object v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_10b
    iget v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->g:I

    if-eqz v6, :cond_15b

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    mul-float v4, v1, v10

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    mul-float v5, v1, v10

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->r:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->H:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->w:F

    div-float/2addr v2, v10

    sub-float v3, v1, v2

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    iget v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->y:F

    sub-float/2addr v4, v5

    add-float v5, v2, v1

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->x:F

    add-float v6, v4, v1

    iget-object v7, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->H:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->m:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->n:F

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->A:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->z:F

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->H:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_15b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->a:I

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public invalidateSelf()V
    .registers 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->E:Landroid/view/View;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    return-void
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->a:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1  # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method
