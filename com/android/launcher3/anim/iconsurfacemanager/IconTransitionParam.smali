.class public final Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final alpha:F

.field private final matrix:Landroid/graphics/Matrix;

.field private final radius:F

.field private final windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Matrix;FF)V
    .registers 6

    const-string/jumbo v0, "windowCrop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "matrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->windowCrop:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->matrix:Landroid/graphics/Matrix;

    iput p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->alpha:F

    iput p4, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->radius:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;Landroid/graphics/Rect;Landroid/graphics/Matrix;FFILjava/lang/Object;)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->windowCrop:Landroid/graphics/Rect;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->matrix:Landroid/graphics/Matrix;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->alpha:F

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->radius:F

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->copy(Landroid/graphics/Rect;Landroid/graphics/Matrix;FF)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->windowCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final component2()Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->alpha:F

    return p0
.end method

.method public final component4()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->radius:F

    return p0
.end method

.method public final copy(Landroid/graphics/Rect;Landroid/graphics/Matrix;FF)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;
    .registers 5

    const-string/jumbo p0, "windowCrop"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "matrix"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;-><init>(Landroid/graphics/Rect;Landroid/graphics/Matrix;FF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->windowCrop:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->windowCrop:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p1, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->matrix:Landroid/graphics/Matrix;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->alpha:F

    iget v3, p1, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->alpha:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    iget p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->radius:F

    iget p1, p1, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->radius:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getAlpha()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->alpha:F

    return p0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getRadius()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->radius:F

    return p0
.end method

.method public final getWindowCrop()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->windowCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->alpha:F

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/window/embedding/d;->a(FII)I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->radius:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "IconTransitionParam(windowCrop="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->radius:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
