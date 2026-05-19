.class public final Lcom/android/launcher3/anim/floatingdrawable/IconSurface;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final cropOffset:I

.field private final needAdjustCornerRadius:Z

.field private final originalIconSize:Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

.field private final sc:Landroid/view/SurfaceControl;

.field private final supportIconExtended:Z


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZ)V
    .registers 7

    const-string/jumbo v0, "originalIconSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->sc:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->originalIconSize:Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    iput-boolean p3, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->supportIconExtended:Z

    iput p4, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->cropOffset:I

    iput-boolean p5, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->needAdjustCornerRadius:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceControl;Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x1

    :cond_5
    move v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;-><init>(Landroid/view/SurfaceControl;Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/anim/floatingdrawable/IconSurface;Landroid/view/SurfaceControl;Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZILjava/lang/Object;)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->sc:Landroid/view/SurfaceControl;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->originalIconSize:Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-boolean p3, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->supportIconExtended:Z

    :cond_13
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->cropOffset:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-boolean p5, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->needAdjustCornerRadius:Z

    :cond_21
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->copy(Landroid/view/SurfaceControl;Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->sc:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final component2()Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->originalIconSize:Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    return-object p0
.end method

.method public final component3()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->supportIconExtended:Z

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->cropOffset:I

    return p0
.end method

.method public final component5()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->needAdjustCornerRadius:Z

    return p0
.end method

.method public final copy(Landroid/view/SurfaceControl;Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;
    .registers 12

    const-string/jumbo p0, "originalIconSize"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;-><init>(Landroid/view/SurfaceControl;Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->sc:Landroid/view/SurfaceControl;

    iget-object v3, p1, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->sc:Landroid/view/SurfaceControl;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->originalIconSize:Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    iget-object v3, p1, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->originalIconSize:Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->supportIconExtended:Z

    iget-boolean v3, p1, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->supportIconExtended:Z

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->cropOffset:I

    iget v3, p1, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->cropOffset:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-boolean p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->needAdjustCornerRadius:Z

    iget-boolean p1, p1, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->needAdjustCornerRadius:Z

    if-eq p0, p1, :cond_37

    return v2

    :cond_37
    return v0
.end method

.method public final getCropOffset()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->cropOffset:I

    return p0
.end method

.method public final getNeedAdjustCornerRadius()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->needAdjustCornerRadius:Z

    return p0
.end method

.method public final getOriginalIconSize()Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->originalIconSize:Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    return-object p0
.end method

.method public final getSc()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->sc:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final getSupportIconExtended()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->supportIconExtended:Z

    return p0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->sc:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->originalIconSize:Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->supportIconExtended:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    move v0, v2

    :cond_1b
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->cropOffset:I

    const/16 v3, 0x1f

    invoke-static {v0, v1, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->needAdjustCornerRadius:Z

    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, p0

    :goto_2c
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "IconSurface(sc="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->sc:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalIconSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->originalIconSize:Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportIconExtended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->supportIconExtended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cropOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->cropOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needAdjustCornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->needAdjustCornerRadius:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld/b;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
