.class public final synthetic Lcom/android/launcher3/iconrender/impl/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(FLcom/oplus/quickstep/anim/TaskHeaderViewAnimation;Lcom/oplus/quickstep/views/OplusTaskHeaderView;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/iconrender/impl/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/d;->d:F

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/iconrender/impl/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;F)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/iconrender/impl/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/d;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher3/iconrender/impl/d;->d:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;F[Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/iconrender/impl/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/d;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/iconrender/impl/d;->d:F

    iput-object p3, p0, Lcom/android/launcher3/iconrender/impl/d;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/iconrender/impl/d;->a:I

    packed-switch v0, :pswitch_data_30

    goto :goto_22

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    iget v1, p0, Lcom/android/launcher3/iconrender/impl/d;->d:F

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/d;->c:Ljava/lang/Object;

    check-cast p0, [Landroid/view/View;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->a(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;F[Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_14  #0x0
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/d;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    iget p0, p0, Lcom/android/launcher3/iconrender/impl/d;->d:F

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->a(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;FLandroid/animation/ValueAnimator;)V

    return-void

    :goto_22
    iget v0, p0, Lcom/android/launcher3/iconrender/impl/d;->d:F

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/d;->b:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/d;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;->a(FLcom/oplus/quickstep/anim/TaskHeaderViewAnimation;Lcom/oplus/quickstep/views/OplusTaskHeaderView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
