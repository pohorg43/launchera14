.class public final Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$Companion;
    }
.end annotation


# static fields
.field public static final e:Landroid/view/animation/Interpolator;

.field public static final f:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Landroid/view/animation/Interpolator;

.field public d:Landroid/animation/Animator;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->e:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/coui/appcompat/searchview/h;->a:Lcom/coui/appcompat/searchview/h;

    sput-object v0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->f:Landroid/animation/TypeEvaluator;

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->d:Landroid/animation/Animator;

    if-eqz p0, :cond_a

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_a
    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2

    const-string p0, "controller"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .registers 13

    const-string p2, "controller"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->a:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_62

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->c:Landroid/view/animation/Interpolator;

    iget-boolean v1, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->a:Z

    if-eqz v1, :cond_28

    sget-object v1, Lcom/coui/appcompat/searchview/j;->a:Lcom/coui/appcompat/searchview/j;

    goto :goto_2a

    :cond_28
    sget-object v1, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->e:Landroid/view/animation/Interpolator;

    :goto_2a
    move-object v8, v1

    if-eqz p2, :cond_32

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    goto :goto_36

    :cond_32
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    :goto_36
    move-object v6, v1

    if-eqz p2, :cond_3e

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    goto :goto_42

    :cond_3e
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    :goto_42
    move-object v7, v1

    new-instance v9, Lcom/coui/appcompat/searchview/i;

    move-object v1, v9

    move-object v2, p1

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/coui/appcompat/searchview/i;-><init>(Landroid/view/WindowInsetsAnimationController;Landroid/animation/ValueAnimator;Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;

    invoke-direct {v1, p1, p2}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;-><init>(Landroid/view/WindowInsetsAnimationController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const-string p1, "animator"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->d:Landroid/animation/Animator;

    return-void

    :array_62
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
