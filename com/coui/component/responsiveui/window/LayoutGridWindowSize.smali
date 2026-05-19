.class public final Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    iput p2, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p1}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p2, p1}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V
    .registers 3

    const-string v0, "windowSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    iget p1, p1, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    invoke-direct {p0, v0, p1}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;-><init>(II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;IIILjava/lang/Object;)Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->copy(II)Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    return p0
.end method

.method public final copy(II)Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
    .registers 3

    new-instance p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-direct {p0, p1, p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    const-class v2, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_1f

    :cond_10
    check-cast p1, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    iget v2, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    iget v3, p1, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    if-ne v2, v3, :cond_1f

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    iget p1, p1, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    if-ne p0, p1, :cond_1f

    return v0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public final getHeight()I
    .registers 1

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    return-void
.end method

.method public final setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "(width = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
