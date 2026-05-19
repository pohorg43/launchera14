.class public final Lcom/oplus/quickstep/anim/AnimationInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private originalView:Landroid/view/View;

.field private springAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnimator()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/AnimationInfo;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getOriginalView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/AnimationInfo;->originalView:Landroid/view/View;

    return-object p0
.end method

.method public final getSpringAnim()Lcom/android/quickstep/util/OplusRectFSpringAnim;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/anim/AnimationInfo;->springAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    return-object p0
.end method

.method public final setAnimator(Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/AnimationInfo;->animator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setOriginalView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/AnimationInfo;->originalView:Landroid/view/View;

    return-void
.end method

.method public final setSpringAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/AnimationInfo;->springAnim:Lcom/android/quickstep/util/OplusRectFSpringAnim;

    return-void
.end method
