.class public final Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final leftDrawable:Landroid/graphics/drawable/Drawable;

.field private final middleDrawable:Landroid/graphics/drawable/Drawable;

.field private final middleEndRight:I

.field private final middleStartLeft:I

.field private final rightDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->leftDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->rightDrawable:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleStartLeft:I

    iput p5, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleEndRight:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIILjava/lang/Object;)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->leftDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleDrawable:Landroid/graphics/drawable/Drawable;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->rightDrawable:Landroid/graphics/drawable/Drawable;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleStartLeft:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget p5, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleEndRight:I

    :cond_21
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->copy(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->leftDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final component2()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final component3()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->rightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleStartLeft:I

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleEndRight:I

    return p0
.end method

.method public final copy(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;
    .registers 12

    new-instance p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->leftDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->rightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleStartLeft:I

    iget v3, p1, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleStartLeft:I

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleEndRight:I

    iget p1, p1, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleEndRight:I

    if-eq p0, p1, :cond_3b

    return v2

    :cond_3b
    return v0
.end method

.method public final getLeftDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->leftDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getMiddleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getMiddleEndRight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleEndRight:I

    return p0
.end method

.method public final getMiddleStartLeft()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleStartLeft:I

    return p0
.end method

.method public final getRightDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->rightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->leftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    :goto_23
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleStartLeft:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleEndRight:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ExtentedDrawableSet(leftDrawable="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", middleDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", middleStartLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleStartLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", middleEndRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->middleEndRight:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
