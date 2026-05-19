.class final Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLayoutGridSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutGridSystem.kt\ncom/coui/component/responsiveui/layoutgrid/LayoutGrid\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,213:1\n13579#2,2:214\n*S KotlinDebug\n*F\n+ 1 LayoutGridSystem.kt\ncom/coui/component/responsiveui/layoutgrid/LayoutGrid\n*L\n195#1:214,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:I

.field public b:[[I

.field public c:I

.field public d:[I


# direct methods
.method public constructor <init>(I[[II[I)V
    .registers 6

    const-string v0, "columnsWidth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "margin"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    iput-object p2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    iput p3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    iput-object p4, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    return-void
.end method

.method public static synthetic copy$default(Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;I[[II[IILjava/lang/Object;)Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->copy(I[[II[I)Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    return p0
.end method

.method public final component2()[[I
    .registers 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    return-object p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    return p0
.end method

.method public final component4()[I
    .registers 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    return-object p0
.end method

.method public final copy(I[[II[I)Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;
    .registers 5

    const-string p0, "columnsWidth"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "margin"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;-><init>(I[[II[I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const-class v1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    :cond_16
    const-string v1, "null cannot be cast to non-null type com.coui.component.responsiveui.layoutgrid.LayoutGrid"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    iget v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    iget v3, p1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    if-eq v1, v3, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    iget-object v3, p1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    invoke-static {v1, v3}, Li4/i;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    iget v3, p1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    if-eq v1, v3, :cond_36

    return v2

    :cond_36
    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    iget-object p1, p1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-nez p0, :cond_41

    return v2

    :cond_41
    return v0
.end method

.method public final getColumnCount()I
    .registers 1

    iget p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    return p0
.end method

.method public final getColumnsWidth()[[I
    .registers 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    return-object p0
.end method

.method public final getGutter()I
    .registers 1

    iget p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    return p0
.end method

.method public final getMargin()[I
    .registers 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setColumnCount(I)V
    .registers 2

    iput p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    return-void
.end method

.method public final setColumnsWidth([[I)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    return-void
.end method

.method public final setGutter(I)V
    .registers 2

    iput p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    return-void
.end method

.method public final setMargin([I)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[LayoutGrid] columnCount = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    const-string v3, ", "

    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "gutter = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "margins = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    invoke-static {v2}, Li4/j;->e([I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "columnWidth = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    array-length v1, p0

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v1, :cond_63

    aget-object v4, p0, v2

    invoke-static {v4}, Li4/j;->e([I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_63
    const-string p0, "value"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0}, Lk7/q;->x(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "value.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
