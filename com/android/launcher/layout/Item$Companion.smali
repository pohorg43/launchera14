.class public final Lcom/android/launcher/layout/Item$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/layout/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/layout/Item$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNewPositionUseFill(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher/layout/Item;)Landroid/graphics/Point;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "item"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5e

    invoke-virtual {p2}, Lcom/android/launcher/layout/Item;->getDisableAutoFill()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_5e

    :cond_e
    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p2}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v0

    iget v5, v0, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual {p2}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    const/4 v0, 0x0

    aget v2, p0, v0

    const/4 v7, 0x1

    aget v3, p0, v7

    invoke-virtual {p2}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object p2

    iget v5, p2, Landroid/graphics/Point;->y:I

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    new-instance p1, Landroid/graphics/Point;

    aget p2, p0, v0

    aget p0, p0, v7

    invoke-direct {p1, p2, p0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_6f

    :cond_5e
    :goto_5e
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p1, p0, p2}, Landroid/graphics/Point;-><init>(II)V

    :goto_6f
    return-object p1
.end method
