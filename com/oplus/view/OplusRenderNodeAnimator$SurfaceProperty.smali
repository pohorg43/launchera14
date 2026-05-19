.class public Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/view/OplusRenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceProperty"
.end annotation


# static fields
.field public static final ALPHA:I = 0x6

.field public static final ROTATION_ANTICLOCKWISE:I = 0x5

.field public static final ROTATION_CLOCKWISE:I = 0x4

.field public static final SCALE_X:I = 0x2

.field public static final SCALE_Y:I = 0x3

.field public static final TRANSLATION_X:I = 0x0

.field public static final TRANSLATION_Y:I = 0x1


# instance fields
.field private mFinalPosition:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mInterpolatorPtr:J

.field private mStartValue:F

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFinalPosition()F
    .registers 1

    iget p0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;->mFinalPosition:F

    return p0
.end method

.method public getInterpolator()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;->mInterpolatorPtr:J

    return-wide v0
.end method

.method public getStartValue()F
    .registers 1

    iget p0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;->mStartValue:F

    return p0
.end method

.method public getType()F
    .registers 1

    iget p0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;->mType:I

    int-to-float p0, p0

    return p0
.end method

.method public setFinalPosition(F)Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;
    .registers 2

    iput p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;->mFinalPosition:F

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;
    .registers 4

    iput-object p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Landroid/graphics/animation/HasNativeInterpolator;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;->mInterpolator:Landroid/animation/TimeInterpolator;

    check-cast p1, Landroid/graphics/animation/NativeInterpolator;

    invoke-interface {p1}, Landroid/graphics/animation/NativeInterpolator;->createNativeInterpolator()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;->mInterpolatorPtr:J

    return-object p0

    :cond_19
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Please provide a NativeInterpolator!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStartValue(F)Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;
    .registers 2

    iput p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;->mStartValue:F

    return-object p0
.end method

.method public setType(I)Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;
    .registers 2

    iput p1, p0, Lcom/oplus/view/OplusRenderNodeAnimator$SurfaceProperty;->mType:I

    return-object p0
.end method
