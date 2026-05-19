.class public final Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private color:I

.field private padding:I

.field private radius:F


# direct methods
.method public constructor <init>(IFI)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->color:I

    iput p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->radius:F

    iput p3, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->padding:I

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;IFIILjava/lang/Object;)Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->color:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->radius:F

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->padding:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->copy(IFI)Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->color:I

    return p0
.end method

.method public final component2()F
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->radius:F

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->padding:I

    return p0
.end method

.method public final copy(IFI)Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    new-instance p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;

    invoke-direct {p0, p1, p2, p3}, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;-><init>(IFI)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;

    iget v1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->color:I

    iget v3, p1, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->color:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->radius:F

    iget v3, p1, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->radius:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->padding:I

    iget p1, p1, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->padding:I

    if-eq p0, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getColor()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->color:I

    return p0
.end method

.method public final getPadding()I
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->padding:I

    return p0
.end method

.method public final getRadius()F
    .registers 1

    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->radius:F

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->color:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->radius:F

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/d;->a(FII)I

    move-result v0

    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->padding:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setColor(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->color:I

    return-void
.end method

.method public final setPadding(I)V
    .registers 2

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->padding:I

    return-void
.end method

.method public final setRadius(F)V
    .registers 2

    iput p1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->radius:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->color:I

    iget v1, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->radius:F

    iget p0, p0, Lpantanal/app/groupcard/defaultImpl/GroupCardBgPaint$Config;->padding:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config(color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", radius="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", padding="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
