.class public final Lpantanal/app/groupcard/GroupCardConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final gap:I

.field private groupWidthMarginEnd:I

.field private final innerRadius:F

.field private final margin:I

.field private final outerRadius:F

.field private final size:I


# direct methods
.method public constructor <init>()V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lpantanal/app/groupcard/GroupCardConfig;-><init>(IFFIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IFFIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpantanal/app/groupcard/GroupCardConfig;->size:I

    iput p2, p0, Lpantanal/app/groupcard/GroupCardConfig;->outerRadius:F

    iput p3, p0, Lpantanal/app/groupcard/GroupCardConfig;->innerRadius:F

    iput p4, p0, Lpantanal/app/groupcard/GroupCardConfig;->gap:I

    iput p5, p0, Lpantanal/app/groupcard/GroupCardConfig;->margin:I

    iput p6, p0, Lpantanal/app/groupcard/GroupCardConfig;->groupWidthMarginEnd:I

    return-void
.end method

.method public synthetic constructor <init>(IFFIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_5

    const/4 p1, 0x2

    :cond_5
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_c

    move p8, v0

    goto :goto_d

    :cond_c
    move p8, p2

    :goto_d
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_12

    goto :goto_13

    :cond_12
    move v0, p3

    :goto_13
    and-int/lit8 p2, p7, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_1a

    move v1, p3

    goto :goto_1b

    :cond_1a
    move v1, p4

    :goto_1b
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    move v2, p3

    goto :goto_22

    :cond_21
    move v2, p5

    :goto_22
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    move v3, p3

    goto :goto_29

    :cond_28
    move v3, p6

    :goto_29
    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-direct/range {p2 .. p8}, Lpantanal/app/groupcard/GroupCardConfig;-><init>(IFFIII)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/groupcard/GroupCardConfig;IFFIIIILjava/lang/Object;)Lpantanal/app/groupcard/GroupCardConfig;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget p1, p0, Lpantanal/app/groupcard/GroupCardConfig;->size:I

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget p2, p0, Lpantanal/app/groupcard/GroupCardConfig;->outerRadius:F

    :cond_c
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lpantanal/app/groupcard/GroupCardConfig;->innerRadius:F

    :cond_13
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lpantanal/app/groupcard/GroupCardConfig;->gap:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget p5, p0, Lpantanal/app/groupcard/GroupCardConfig;->margin:I

    :cond_21
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget p6, p0, Lpantanal/app/groupcard/GroupCardConfig;->groupWidthMarginEnd:I

    :cond_28
    move v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lpantanal/app/groupcard/GroupCardConfig;->copy(IFFIII)Lpantanal/app/groupcard/GroupCardConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->size:I

    return p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->outerRadius:F

    return p0
.end method

.method public final component3()F
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->innerRadius:F

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->gap:I

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->margin:I

    return p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->groupWidthMarginEnd:I

    return p0
.end method

.method public final copy(IFFIII)Lpantanal/app/groupcard/GroupCardConfig;
    .registers 14

    new-instance p0, Lpantanal/app/groupcard/GroupCardConfig;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lpantanal/app/groupcard/GroupCardConfig;-><init>(IFFIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/groupcard/GroupCardConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/groupcard/GroupCardConfig;

    iget v1, p0, Lpantanal/app/groupcard/GroupCardConfig;->size:I

    iget v3, p1, Lpantanal/app/groupcard/GroupCardConfig;->size:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lpantanal/app/groupcard/GroupCardConfig;->outerRadius:F

    iget v3, p1, Lpantanal/app/groupcard/GroupCardConfig;->outerRadius:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lpantanal/app/groupcard/GroupCardConfig;->innerRadius:F

    iget v3, p1, Lpantanal/app/groupcard/GroupCardConfig;->innerRadius:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lpantanal/app/groupcard/GroupCardConfig;->gap:I

    iget v3, p1, Lpantanal/app/groupcard/GroupCardConfig;->gap:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget v1, p0, Lpantanal/app/groupcard/GroupCardConfig;->margin:I

    iget v3, p1, Lpantanal/app/groupcard/GroupCardConfig;->margin:I

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->groupWidthMarginEnd:I

    iget p1, p1, Lpantanal/app/groupcard/GroupCardConfig;->groupWidthMarginEnd:I

    if-eq p0, p1, :cond_3e

    return v2

    :cond_3e
    return v0
.end method

.method public final getGap()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->gap:I

    return p0
.end method

.method public final getGroupWidthMarginEnd()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->groupWidthMarginEnd:I

    return p0
.end method

.method public final getInnerRadius()F
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->innerRadius:F

    return p0
.end method

.method public final getMargin()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->margin:I

    return p0
.end method

.method public final getOuterRadius()F
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->outerRadius:F

    return p0
.end method

.method public final getSize()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->size:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lpantanal/app/groupcard/GroupCardConfig;->size:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/groupcard/GroupCardConfig;->outerRadius:F

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/d;->a(FII)I

    move-result v0

    iget v1, p0, Lpantanal/app/groupcard/GroupCardConfig;->innerRadius:F

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/d;->a(FII)I

    move-result v0

    iget v1, p0, Lpantanal/app/groupcard/GroupCardConfig;->gap:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lpantanal/app/groupcard/GroupCardConfig;->margin:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->groupWidthMarginEnd:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setGroupWidthMarginEnd(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/groupcard/GroupCardConfig;->groupWidthMarginEnd:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget v0, p0, Lpantanal/app/groupcard/GroupCardConfig;->size:I

    iget v1, p0, Lpantanal/app/groupcard/GroupCardConfig;->outerRadius:F

    iget v2, p0, Lpantanal/app/groupcard/GroupCardConfig;->innerRadius:F

    iget v3, p0, Lpantanal/app/groupcard/GroupCardConfig;->gap:I

    iget v4, p0, Lpantanal/app/groupcard/GroupCardConfig;->margin:I

    iget p0, p0, Lpantanal/app/groupcard/GroupCardConfig;->groupWidthMarginEnd:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GroupCardConfig(size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", outerRadius="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", innerRadius="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", gap="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", margin="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", groupWidthMarginEnd="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
