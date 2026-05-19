.class public Lcom/coui/appcompat/rotateview/COUIRotateView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/rotateview/COUIRotateView$OnRotateStateChangeListener;
    }
.end annotation


# static fields
.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[I


# instance fields
.field public a:Landroid/view/animation/Interpolator;

.field public b:J

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Lcom/coui/appcompat/rotateview/COUIRotateView$OnRotateStateChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/support/appcompat/R$attr;->supportExpanded:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/rotateview/COUIRotateView;->g:[I

    new-array v1, v0, [I

    sget v2, Lcom/support/appcompat/R$attr;->supportCollapsed:I

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/rotateview/COUIRotateView;->h:[I

    new-array v1, v0, [I

    sget v2, Lcom/support/appcompat/R$attr;->supportExpandedAnimate:I

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/rotateview/COUIRotateView;->i:[I

    new-array v0, v0, [I

    sget v1, Lcom/support/appcompat/R$attr;->supportCollapsedAnimate:I

    aput v1, v0, v3

    sput-object v0, Lcom/coui/appcompat/rotateview/COUIRotateView;->j:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/rotateview/COUIRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/rotateview/COUIRotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e083127  # 0.133f

    const/4 v0, 0x0

    const v1, 0x3e99999a  # 0.3f

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->a:Landroid/view/animation/Interpolator;

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->b:J

    iput-boolean p3, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->c:Z

    iput-boolean p3, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->d:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->f:Lcom/coui/appcompat/rotateview/COUIRotateView$OnRotateStateChangeListener;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIRotateView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIRotateView_supportRotateType:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->e:I

    sget p2, Lcom/support/appcompat/R$styleable;->COUIRotateView_supportExpanded:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->c:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_41
    iget p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->e:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5f

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide p2, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->b:J

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/coui/appcompat/rotateview/COUIRotateView$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/rotateview/COUIRotateView$1;-><init>(Lcom/coui/appcompat/rotateview/COUIRotateView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_64

    :cond_5f
    if-nez p1, :cond_64

    invoke-direct {p0, p2}, Lcom/coui/appcompat/rotateview/COUIRotateView;->setState(Z)V

    :cond_64
    :goto_64
    return-void
.end method

.method private setState(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    if-eqz p1, :cond_d

    sget-object p1, Lcom/coui/appcompat/rotateview/COUIRotateView;->i:[I

    invoke-virtual {p0, p1, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_20

    :cond_d
    sget-object p1, Lcom/coui/appcompat/rotateview/COUIRotateView;->g:[I

    invoke-virtual {p0, p1, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_20

    :cond_13
    if-eqz p1, :cond_1b

    sget-object p1, Lcom/coui/appcompat/rotateview/COUIRotateView;->j:[I

    invoke-virtual {p0, p1, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_20

    :cond_1b
    sget-object p1, Lcom/coui/appcompat/rotateview/COUIRotateView;->h:[I

    invoke-virtual {p0, p1, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    :goto_20
    return-void
.end method


# virtual methods
.method public setExpanded(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->c:Z

    if-ne v0, p1, :cond_5

    goto :goto_2b

    :cond_5
    iget v0, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-boolean v0, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->d:Z

    if-eqz v0, :cond_f

    goto :goto_2b

    :cond_f
    iput-boolean p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->c:Z

    if-eqz p1, :cond_16

    const/high16 p1, 0x43340000  # 180.0f

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_22

    :cond_1b
    if-nez v0, :cond_22

    iput-boolean p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->c:Z

    invoke-direct {p0, v1}, Lcom/coui/appcompat/rotateview/COUIRotateView;->setState(Z)V

    :cond_22
    :goto_22
    iget-object p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->f:Lcom/coui/appcompat/rotateview/COUIRotateView$OnRotateStateChangeListener;

    if-eqz p1, :cond_2b

    iget-boolean p0, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->c:Z

    invoke-interface {p1, p0}, Lcom/coui/appcompat/rotateview/COUIRotateView$OnRotateStateChangeListener;->a(Z)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public setOnRotateStateChangeListener(Lcom/coui/appcompat/rotateview/COUIRotateView$OnRotateStateChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/rotateview/COUIRotateView;->f:Lcom/coui/appcompat/rotateview/COUIRotateView$OnRotateStateChangeListener;

    return-void
.end method
