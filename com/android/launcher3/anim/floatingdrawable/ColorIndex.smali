.class public final Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final colorLeftIndex:I

.field private final colorLeftSubIndex:I

.field private final colorRightIndex:I

.field private final colorRightSubIndex:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftIndex:I

    iput p2, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightIndex:I

    iput p3, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftSubIndex:I

    iput p4, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightSubIndex:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;IIIIILjava/lang/Object;)Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftIndex:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightIndex:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftSubIndex:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightSubIndex:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->copy(IIII)Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftIndex:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightIndex:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftSubIndex:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightSubIndex:I

    return p0
.end method

.method public final copy(IIII)Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;
    .registers 5

    new-instance p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;-><init>(IIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;

    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftIndex:I

    iget v3, p1, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftIndex:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightIndex:I

    iget v3, p1, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightIndex:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftSubIndex:I

    iget v3, p1, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftSubIndex:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightSubIndex:I

    iget p1, p1, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightSubIndex:I

    if-eq p0, p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final getColorLeftIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftIndex:I

    return p0
.end method

.method public final getColorLeftSubIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftSubIndex:I

    return p0
.end method

.method public final getColorRightIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightIndex:I

    return p0
.end method

.method public final getColorRightSubIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightSubIndex:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightIndex:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftSubIndex:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightSubIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ColorIndex(colorLeftIndex="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colorRightIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colorLeftSubIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorLeftSubIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colorRightSubIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/ColorIndex;->colorRightSubIndex:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
