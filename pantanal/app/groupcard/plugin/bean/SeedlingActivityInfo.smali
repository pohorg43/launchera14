.class public final Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final data:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private final params:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->uri:Ljava/lang/String;

    iput-object p2, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->params:Ljava/lang/String;

    iput-object p3, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->data:Ljava/lang/String;

    iput-object p4, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    move-object p4, v0

    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->uri:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->params:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->data:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->packageName:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->params:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->data:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;
    .registers 5

    new-instance p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;

    iget-object v1, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->uri:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->uri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->params:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->params:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->data:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->data:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->data:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getParams()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->params:Ljava/lang/String;

    return-object p0
.end method

.method public final getUri()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->uri:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->params:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->data:Ljava/lang/String;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->packageName:Ljava/lang/String;

    if-nez p0, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_30
    add-int/2addr v0, v1

    return v0
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->uri:Ljava/lang/String;

    iget-object v1, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->params:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->data:Ljava/lang/String;

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "SeedlingActivityInfo(uri="

    const-string v4, ", params="

    const-string v5, ", data="

    invoke-static {v3, v0, v4, v1, v5}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
