.class public Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$COUIFloatingButtonBehavior;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$AutoDismissRunnable;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;,
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;
    }
.end annotation


# static fields
.field public static final D:Landroid/view/animation/PathInterpolator;

.field public static final E:Landroid/view/animation/PathInterpolator;


# instance fields
.field public A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

.field public B:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;

.field public C:F

.field public a:I

.field public b:I

.field public c:F

.field public final d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

.field public e:I

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Landroidx/appcompat/widget/AppCompatImageView;

.field public j:F

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Landroid/animation/ValueAnimator;

.field public n:Landroid/view/animation/PathInterpolator;

.field public o:Landroid/view/animation/PathInterpolator;

.field public p:Landroid/view/animation/PathInterpolator;

.field public q:Landroid/view/animation/PathInterpolator;

.field public r:Landroid/view/animation/PathInterpolator;

.field public s:Z

.field public t:Z

.field public u:I

.field public v:Z

.field public w:Landroid/animation/ValueAnimator;

.field public x:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public y:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public z:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->D:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->E:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->b:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->c:F

    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-direct {v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->h:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000  # 0.25f

    const v4, 0x3dcccccd  # 0.1f

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->n:Landroid/view/animation/PathInterpolator;

    new-instance v2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->o:Landroid/view/animation/PathInterpolator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->p:Landroid/view/animation/PathInterpolator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->q:Landroid/view/animation/PathInterpolator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->r:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->t:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->v:Z

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->o(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->b:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->c:F

    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-direct {v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->h:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000  # 0.25f

    const v4, 0x3dcccccd  # 0.1f

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->n:Landroid/view/animation/PathInterpolator;

    new-instance v2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->o:Landroid/view/animation/PathInterpolator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->p:Landroid/view/animation/PathInterpolator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->q:Landroid/view/animation/PathInterpolator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->r:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->t:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->v:Z

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->o(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    iput p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->b:I

    const/high16 p3, 0x3f800000  # 1.0f

    iput p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->c:F

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    invoke-direct {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->h:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000  # 0.25f

    const v3, 0x3dcccccd  # 0.1f

    invoke-direct {v1, v2, v3, v2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->n:Landroid/view/animation/PathInterpolator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->o:Landroid/view/animation/PathInterpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->p:Landroid/view/animation/PathInterpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->q:Landroid/view/animation/PathInterpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->r:Landroid/view/animation/PathInterpolator;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s:Z

    iput-boolean p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->t:Z

    iput-boolean p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->v:Z

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    iput-object p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->o(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static a(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->j(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne p1, p0, :cond_16

    move v0, v1

    :cond_16
    return v0
.end method

.method public static b(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIZ)V
    .registers 12

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p4

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_90

    const-string v2, "scaleX"

    invoke-static {p4, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v1

    new-array v3, v0, [F

    fill-array-data v3, :array_98

    const-string v4, "scaleY"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v3

    new-array v5, v0, [F

    fill-array-data v5, :array_a0

    invoke-static {v3, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v3

    new-array v5, v0, [F

    fill-array-data v5, :array_a8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v4

    new-array v5, v0, [F

    fill-array-data v5, :array_b0

    const-string v6, "alpha"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p1

    new-array v5, v0, [F

    fill-array-data v5, :array_b8

    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->p:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object p4, v5, v6

    const/4 p4, 0x1

    aput-object v1, v5, p4

    aput-object v4, v5, v0

    const/4 p4, 0x3

    aput-object v3, v5, p4

    const/4 p4, 0x4

    aput-object v2, v5, p4

    invoke-virtual {p2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->o:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p3, p3

    invoke-virtual {p2, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$11;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$11;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_90
    .array-data 4
        0x3f800000  # 1.0f
        0x3f19999a  # 0.6f
    .end array-data

    :array_98
    .array-data 4
        0x3f800000  # 1.0f
        0x3f19999a  # 0.6f
    .end array-data

    :array_a0
    .array-data 4
        0x3f800000  # 1.0f
        0x3f19999a  # 0.6f
    .end array-data

    :array_a8
    .array-data 4
        0x3f800000  # 1.0f
        0x3f19999a  # 0.6f
    .end array-data

    :array_b0
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_b8
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public static i(Landroid/content/Context;F)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public c(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;II)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->a:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->k(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_10

    goto :goto_3b

    :cond_10
    iget v0, p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->a:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->k(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_21

    goto :goto_3b

    :cond_21
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    iget v2, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->a:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->k(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->p(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    iget p2, p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->a:I

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->k(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->p(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    invoke-virtual {p0, p1, v1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->c(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;II)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object p3

    :cond_3b
    :goto_3b
    return-object p3

    :cond_3c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setFloatingButtonItem(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)V

    iget p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->u:I

    invoke-virtual {v7, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setMainButtonSize(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_55

    const/4 v0, 0x0

    :cond_55
    invoke-virtual {v7, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setOrientation(I)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    invoke-virtual {v7, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V

    invoke-virtual {v7, p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p2

    if-nez p2, :cond_86

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/control/R$dimen;->coui_floating_button_item_first_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v7, p3, v0, v1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    invoke-virtual {p0, v7, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_a2

    :cond_86
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/control/R$dimen;->coui_floating_button_item_normal_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v7, p3, v0, v1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    invoke-virtual {p0, v7, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_a2
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {p1, p2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v3, 0x0

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v7

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIIZ)V

    return-object v7
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->m:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_18
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->D:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$6;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final e(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIIZ)V
    .registers 15

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->n(I)I

    move-result v1

    if-eqz p5, :cond_16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    :cond_16
    const/4 v0, 0x1

    new-array v2, v0, [F

    int-to-float v1, v1

    const/4 v3, 0x0

    aput v1, v2, v3

    const-string v1, "translationY"

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    int-to-long v4, p4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->o:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelText()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v2, ""

    if-eq p2, v2, :cond_7e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p2

    if-ne p2, v0, :cond_43

    move v3, v0

    :cond_43
    if-eqz v3, :cond_5e

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    goto :goto_7e

    :cond_5e
    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    :cond_7e
    :goto_7e
    new-instance p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    move v6, p5

    move-object v7, p1

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;IZLcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;I)V

    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->h(Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    iget-boolean p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->a:Z

    if-eqz p0, :cond_9c

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_9c
    return-void
.end method

.method public final f(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;III)V
    .registers 19

    move-object v7, p0

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x0

    move-object v5, p1

    invoke-direct {v4, p1, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x43fa0000  # 500.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v2, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v4, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_106

    const-string v6, "scaleX"

    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v3

    new-array v9, v2, [F

    fill-array-data v9, :array_10e

    const-string v10, "scaleY"

    invoke-static {v3, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v9

    new-array v11, v2, [F

    fill-array-data v11, :array_116

    invoke-static {v9, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v9

    new-array v11, v2, [F

    fill-array-data v11, :array_11e

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v10

    new-array v11, v2, [F

    fill-array-data v11, :array_126

    const-string v12, "alpha"

    invoke-static {v10, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v11

    new-array v13, v2, [F

    fill-array-data v13, :array_12e

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v12, v7, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0x15e

    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v12, 0x5

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v3, v12, v0

    aput-object v10, v12, v2

    const/4 v2, 0x3

    aput-object v6, v12, v2

    const/4 v2, 0x4

    aput-object v9, v12, v2

    invoke-virtual {v8, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, v7, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v8, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move/from16 v2, p2

    int-to-long v2, v2

    invoke-virtual {v8, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_e4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_bb

    goto :goto_bc

    :cond_bb
    move v0, v13

    :goto_bc
    if-eqz v0, :cond_cd

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    goto :goto_e4

    :cond_cd
    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    :cond_e4
    :goto_e4
    new-instance v9, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;

    move-object v0, v9

    move-object v1, p0

    move/from16 v2, p3

    move-object v3, v11

    move-object v5, p1

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;ILandroid/animation/ObjectAnimator;Landroidx/dynamicanimation/animation/SpringAnimation;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;I)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0, v13}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->h(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, v7, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    iget-boolean v1, v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->a:Z

    if-nez v1, :cond_104

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_104
    return-void

    nop

    :array_106
    .array-data 4
        0x3f19999a  # 0.6f
        0x3f800000  # 1.0f
    .end array-data

    :array_10e
    .array-data 4
        0x3f19999a  # 0.6f
        0x3f800000  # 1.0f
    .end array-data

    :array_116
    .array-data 4
        0x3f19999a  # 0.6f
        0x3f800000  # 1.0f
    .end array-data

    :array_11e
    .array-data 4
        0x3f19999a  # 0.6f
        0x3f800000  # 1.0f
    .end array-data

    :array_126
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_12e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public g()Landroid/animation/ValueAnimator;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget-object v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "alpha"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v1, [F

    iget-object v6, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getScaleX()F

    move-result v6

    aput v6, v3, v4

    const v6, 0x3f19999a  # 0.6f

    aput v6, v3, v5

    const-string v7, "scaleX"

    invoke-static {v7, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v7, v1, [F

    iget-object v8, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleY()F

    move-result v8

    aput v8, v7, v4

    aput v6, v7, v5

    const-string v6, "scaleY"

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v4

    aput-object v3, v7, v5

    aput-object v6, v7, v1

    invoke-static {v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->m:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->D:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->m:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$7;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->m:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v0
.end method

.method public getMainFloatingButton()Landroidx/appcompat/widget/AppCompatImageView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method public getMainFloatingButtonBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->c:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final h(Z)Landroid/animation/ValueAnimator;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->E:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->c:F

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    new-instance v1, Lcom/android/keyguardservice/d;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguardservice/d;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_26
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final j(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k(I)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public final l(Z)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    :goto_b
    const/4 v4, 0x0

    aput v3, v0, v4

    const/4 v3, 0x1

    if-eqz p1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->E:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->c:F

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->w:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher/guide/f;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/f;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public final m(F)I
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_27

    :cond_f
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    if-eq v0, v1, :cond_9d

    iget v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->C:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v3, :cond_35

    div-float v1, v4, v1

    goto :goto_38

    :cond_35
    const v1, 0x3f6147ae  # 0.88f

    :goto_38
    invoke-static {v4, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->C:F

    cmpl-float p0, p0, v2

    const/16 v2, 0xff

    if-nez p0, :cond_75

    const/4 p0, 0x2

    aget v0, v1, p0

    mul-float/2addr v0, p1

    aput v0, v1, p0

    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0, p1, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    goto :goto_9c

    :cond_75
    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {p1, v1, v3, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    :goto_9c
    move v0, p0

    :cond_9d
    return v0
.end method

.method public final n(I)I
    .registers 3

    if-ltz p1, :cond_19

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_19

    :cond_b
    mul-int/lit8 p1, p1, 0x48

    add-int/lit8 p1, p1, 0x58

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i(Landroid/content/Context;F)I

    move-result p0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public final o(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/support/control/R$styleable;->COUIFloatingButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/support/control/R$styleable;->COUIFloatingButton_fabNeedElevation:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s:Z

    sget v0, Lcom/support/control/R$styleable;->COUIFloatingButton_fabNeedVibrate:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->t:Z

    sget v0, Lcom/support/control/R$styleable;->COUIFloatingButton_fabButtonSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->u:I

    sget v0, Lcom/support/control/R$styleable;->COUIFloatingButton_fabScaleAnimation:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->v:Z

    sget v0, Lcom/support/control/R$styleable;->COUIFloatingButton_fabTranslateEnhancementRatio:I

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->C:F

    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/control/R$dimen;->coui_floating_button_item_stroke_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->u:I

    if-lez v5, :cond_4b

    iput v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:I

    goto :goto_57

    :cond_4b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/control/R$dimen;->coui_floating_button_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:I

    :goto_57
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:I

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v6, 0x800005

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41000000  # 8.0f

    invoke-static {v6, v7}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i(Landroid/content/Context;F)I

    invoke-virtual {v5, v3, v1, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget v3, Lcom/support/control/R$id;->coui_floating_button_main_fab:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$color;->couiGreenTintControlNormal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v4, v5, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4, v3}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$4;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    iget-boolean v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s:Z

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_three:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/control/R$color;->coui_floating_button_elevation_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v3, v4, v6}, Lcom/coui/appcompat/uiutil/UIUtil;->k(Landroid/view/View;II)V

    :cond_d0
    iget-object v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$AutoDismissRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$AutoDismissRunnable;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->l:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/control/R$color;->coui_floating_button_disabled_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->k:I

    :try_start_10a
    sget p1, Lcom/support/control/R$styleable;->COUIFloatingButton_fabExpandAnimationEnable:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->f:Z

    sget p1, Lcom/support/control/R$styleable;->COUIFloatingButton_android_enabled:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setEnabled(Z)V

    sget p1, Lcom/support/control/R$styleable;->COUIFloatingButton_mainFloatingButtonSrc:I

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, v0, :cond_134

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setMainFabDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_134
    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->r()V

    sget p1, Lcom/support/control/R$styleable;->COUIFloatingButton_mainFloatingButtonBackgroundColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setMainFloatingButtonBackgroundColor(Landroid/content/res/ColorStateList;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->f:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setFloatingButtonExpandEnable(Z)V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_145} :catch_148
    .catchall {:try_start_10a .. :try_end_145} :catchall_146

    goto :goto_163

    :catchall_146
    move-exception p0

    goto :goto_167

    :catch_148
    move-exception p0

    :try_start_149
    const-string p1, "COUIFloatingButton"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure setting FabWithLabelView icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catchall {:try_start_149 .. :try_end_163} :catchall_146

    :goto_163
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_167
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->u:I

    if-gtz v0, :cond_43

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->f(I)Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/control/R$dimen;->coui_floating_button_normal_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:I

    goto :goto_30

    :cond_24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/control/R$dimen;->coui_floating_button_large_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:I

    :goto_30
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_43
    return-void
.end method

.method public final p(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;
    .registers 4
    .param p1  # Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Ljava/util/Iterator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;",
            "Ljava/util/Iterator<",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;",
            ">;Z)",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;"
        }
    .end annotation

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object v0

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_c
    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_11
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-object v0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public q(Z)Landroid/animation/ObjectAnimator;
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->j:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->r:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_1e

    const-wide/16 p0, 0xfa

    goto :goto_20

    :cond_1e
    const-wide/16 p0, 0x12c

    :goto_20
    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public final r()V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setOrientation(I)V

    goto :goto_a

    :cond_1b
    const/16 v0, 0x12c

    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->t(ZZIZ)V

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p0, v3, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->p(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;Ljava/util/Iterator;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    goto :goto_2a

    :cond_3a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    iget-object v4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->c(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;II)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_5d
    return-void
.end method

.method public final s(I)Z
    .registers 8

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_35

    if-eqz v0, :cond_2e

    const/4 v3, 0x3

    if-eq v0, v2, :cond_25

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1e

    if-eq v0, v3, :cond_19

    if-eq v0, v4, :cond_14

    goto :goto_3b

    :cond_14
    if-ne p1, v2, :cond_3b

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    goto :goto_3b

    :cond_19
    if-ne p1, v5, :cond_3b

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    goto :goto_3b

    :cond_1e
    if-eq p1, v4, :cond_22

    if-ne p1, v1, :cond_3b

    :cond_22
    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    goto :goto_3b

    :cond_25
    if-eq p1, v3, :cond_2b

    if-eq p1, v1, :cond_2b

    if-nez p1, :cond_3b

    :cond_2b
    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    goto :goto_3b

    :cond_2e
    if-eq p1, v1, :cond_32

    if-ne p1, v2, :cond_3b

    :cond_32
    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    goto :goto_3b

    :cond_35
    if-eqz p1, :cond_39

    if-ne p1, v2, :cond_3b

    :cond_39
    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    :cond_3b
    :goto_3b
    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    if-ne p1, p0, :cond_40

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    return v2
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getMainFloatingButton()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-nez p1, :cond_15

    iget p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:I

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->b:I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s(I)Z

    goto :goto_1a

    :cond_15
    iget p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->b:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s(I)Z

    :goto_1a
    return-void
.end method

.method public setFloatingButtonClickListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->B:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;

    return-void
.end method

.method public setFloatingButtonExpandEnable(Z)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_c
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$3;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setIsFloatingButtonExpandEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->f:Z

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s(I)Z

    goto :goto_d

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s(I)Z

    :goto_d
    return-void
.end method

.method public setMainFabDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->h:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->u(Z)V

    return-void
.end method

.method public setMainFloatingButtonBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    iput-object p1, v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->v()V

    return-void
.end method

.method public setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V
    .registers 4
    .param p1  # Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->y:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    if-eqz p1, :cond_6

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->z:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    :cond_6
    const/4 p1, 0x0

    :goto_7
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1f

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public setOnChangeListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;)V
    .registers 2
    .param p1  # Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->x:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;

    return-void
.end method

.method public setScaleAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->v:Z

    return-void
.end method

.method public final t(ZZIZ)V
    .registers 14

    iget-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->s:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->x:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;->a()Z

    :cond_17
    move p1, v0

    :cond_18
    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    iget-boolean v2, v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->a:Z

    if-ne v2, p1, :cond_1f

    return-void

    :cond_1f
    iget-boolean v1, v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->b:Z

    if-nez v1, :cond_73

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz p1, :cond_4f

    move p3, v0

    :goto_32
    if-ge p3, v1, :cond_49

    iget-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, p3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    if-eqz p2, :cond_46

    mul-int/lit8 v4, p3, 0x32

    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->f(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;III)V

    :cond_46
    add-int/lit8 p3, p3, 0x1

    goto :goto_32

    :cond_49
    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->a:Z

    goto :goto_6d

    :cond_4f
    move v8, v0

    :goto_50
    if-ge v8, v1, :cond_69

    iget-object v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->g:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    if-eqz p2, :cond_66

    mul-int/lit8 v4, v8, 0x32

    move-object v2, p0

    move v5, v8

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIIZ)V

    :cond_66
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    :cond_69
    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    iput-boolean v0, p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->a:Z

    :goto_6d
    invoke-virtual {p0, p4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->u(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->v()V

    :cond_73
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->x:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;

    if-eqz p0, :cond_7a

    invoke-interface {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnChangeListener;->b(Z)V

    :cond_7a
    return-void
.end method

.method public final u(Z)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->d:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    iget-boolean v0, v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->a:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v1, 0x42340000  # 45.0f

    iput v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->j:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_3c

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->q:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_22

    const-wide/16 p0, 0xfa

    goto :goto_24

    :cond_22
    const-wide/16 p0, 0x12c

    :goto_24
    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3b

    :cond_2b
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->q(Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->h:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3b

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3b
    :goto_3b
    return-void

    :array_3c
    .array-data 4
        0x0
        0x42340000  # 45.0f
    .end array-data
.end method

.method public final v()V
    .registers 4

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getMainFloatingButtonBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eq v0, v1, :cond_12

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_33

    :cond_12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->couiGreenTintControlNormal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p0, v2, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p0

    invoke-static {p0, v0}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_33
    return-void
.end method
