.class public Lcom/oplus/view/OplusRenderNodeAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;,
        Lcom/oplus/view/OplusRenderNodeAnimator$SpringProperty;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0xb

.field public static final ROTATION:I = 0x5

.field public static final ROTATION_X:I = 0x6

.field public static final ROTATION_Y:I = 0x7

.field public static final SCALE_X:I = 0x3

.field public static final SCALE_Y:I = 0x4

.field public static final TRANSLATION_X:I = 0x0

.field public static final TRANSLATION_Y:I = 0x1

.field public static final TRANSLATION_Z:I = 0x2

.field public static final UNSET:F = 3.4028235E38f

.field public static final X:I = 0x8

.field public static final Y:I = 0x9

.field public static final Z:I = 0xa


# instance fields
.field private mOplusRenderNodeAnimator:Lcom/oplus/view/OplusRenderNodeAnimator;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createInterpolatorAnim(IFLandroid/animation/TimeInterpolator;)V
    .registers 4

    return-void
.end method

.method public static createInterpolatorAnimator(IFLandroid/animation/TimeInterpolator;)Lcom/oplus/view/OplusRenderNodeAnimator;
    .registers 4

    new-instance v0, Lcom/oplus/view/OplusRenderNodeAnimator;

    invoke-direct {v0}, Lcom/oplus/view/OplusRenderNodeAnimator;-><init>()V

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/view/OplusRenderNodeAnimator;->createInterpolatorAnim(IFLandroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public static createOSpringInterpolator(DDDFF)Landroid/animation/TimeInterpolator;
    .registers 8

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createRenderValueAnimator(Landroid/animation/Animator;Landroid/view/View;)Landroid/animation/Animator;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getRenderNodeAnimator()Landroid/animation/Animator;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public reverse()V
    .registers 1

    return-void
.end method

.method public setStartDelay(J)V
    .registers 3

    return-void
.end method

.method public setStartValue(F)V
    .registers 2

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method
