.class public final Lcom/android/launcher3/card/theme/data/TargetDescription;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final cardType:Ljava/lang/String;

.field private final editable:I

.field private final forThemeInfo:Ljava/lang/String;

.field private final providerName:Ljava/lang/String;

.field private final themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

.field private final title:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/ThemeCardInfo;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    const-string/jumbo v1, "type"

    const-string v3, "forThemeInfo"

    const-string/jumbo v5, "title"

    move-object v0, p1

    move-object v2, p5

    move-object v4, p7

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    iput-object p5, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->forThemeInfo:Ljava/lang/String;

    iput p6, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->editable:I

    iput-object p7, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->title:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/theme/data/TargetDescription;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/ThemeCardInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/android/launcher3/card/theme/data/TargetDescription;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    :cond_c
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->forThemeInfo:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget p6, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->editable:I

    :cond_28
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget-object p7, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->title:Ljava/lang/String;

    :cond_2f
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/android/launcher3/card/theme/data/TargetDescription;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/ThemeCardInfo;Ljava/lang/String;ILjava/lang/String;)Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Lcom/android/launcher3/card/theme/data/ThemeCardInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->forThemeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->editable:I

    return p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/ThemeCardInfo;Ljava/lang/String;ILjava/lang/String;)Lcom/android/launcher3/card/theme/data/TargetDescription;
    .registers 16

    const-string/jumbo p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "forThemeInfo"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "title"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/card/theme/data/TargetDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/ThemeCardInfo;Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/theme/data/TargetDescription;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->forThemeInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;->forThemeInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->editable:I

    iget v3, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;->editable:I

    if-eq v1, v3, :cond_4a

    return v2

    :cond_4a
    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/card/theme/data/TargetDescription;->title:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    return v2

    :cond_55
    return v0
.end method

.method public final getCardType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    return-object p0
.end method

.method public final getEditable()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->editable:I

    return p0
.end method

.method public final getForThemeInfo()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->forThemeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getProviderName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public final getThemeInfo()Lcom/android/launcher3/card/theme/data/ThemeCardInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    if-nez v1, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ThemeCardInfo;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->forThemeInfo:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->editable:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->title:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "TargetDescription(type="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", providerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", themeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->themeInfo:Lcom/android/launcher3/card/theme/data/ThemeCardInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forThemeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->forThemeInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", editable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->editable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/TargetDescription;->title:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
