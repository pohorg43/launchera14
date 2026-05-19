.class public final Lpantanal/decision/FluidCloudInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final closeEntry:I

.field private final icon:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final serviceId:Ljava/lang/String;

.field private final serviceSwitch:I

.field private final serviceType:I

.field private final supportEntry:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/decision/FluidCloudInfo;->serviceId:Ljava/lang/String;

    iput p2, p0, Lpantanal/decision/FluidCloudInfo;->supportEntry:I

    iput p3, p0, Lpantanal/decision/FluidCloudInfo;->serviceType:I

    iput-object p4, p0, Lpantanal/decision/FluidCloudInfo;->icon:Ljava/lang/String;

    iput-object p5, p0, Lpantanal/decision/FluidCloudInfo;->name:Ljava/lang/String;

    iput p6, p0, Lpantanal/decision/FluidCloudInfo;->closeEntry:I

    iput p7, p0, Lpantanal/decision/FluidCloudInfo;->serviceSwitch:I

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/decision/FluidCloudInfo;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lpantanal/decision/FluidCloudInfo;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lpantanal/decision/FluidCloudInfo;->serviceId:Ljava/lang/String;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget p2, p0, Lpantanal/decision/FluidCloudInfo;->supportEntry:I

    :cond_c
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lpantanal/decision/FluidCloudInfo;->serviceType:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lpantanal/decision/FluidCloudInfo;->icon:Ljava/lang/String;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lpantanal/decision/FluidCloudInfo;->name:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget p6, p0, Lpantanal/decision/FluidCloudInfo;->closeEntry:I

    :cond_28
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget p7, p0, Lpantanal/decision/FluidCloudInfo;->serviceSwitch:I

    :cond_2f
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move p4, p9

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lpantanal/decision/FluidCloudInfo;->copy(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)Lpantanal/decision/FluidCloudInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/FluidCloudInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lpantanal/decision/FluidCloudInfo;->supportEntry:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lpantanal/decision/FluidCloudInfo;->serviceType:I

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/FluidCloudInfo;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/FluidCloudInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lpantanal/decision/FluidCloudInfo;->closeEntry:I

    return p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lpantanal/decision/FluidCloudInfo;->serviceSwitch:I

    return p0
.end method

.method public final copy(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)Lpantanal/decision/FluidCloudInfo;
    .registers 16

    new-instance p0, Lpantanal/decision/FluidCloudInfo;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lpantanal/decision/FluidCloudInfo;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/decision/FluidCloudInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/decision/FluidCloudInfo;

    iget-object v1, p0, Lpantanal/decision/FluidCloudInfo;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/FluidCloudInfo;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lpantanal/decision/FluidCloudInfo;->supportEntry:I

    iget v3, p1, Lpantanal/decision/FluidCloudInfo;->supportEntry:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lpantanal/decision/FluidCloudInfo;->serviceType:I

    iget v3, p1, Lpantanal/decision/FluidCloudInfo;->serviceType:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lpantanal/decision/FluidCloudInfo;->icon:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/FluidCloudInfo;->icon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lpantanal/decision/FluidCloudInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/decision/FluidCloudInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget v1, p0, Lpantanal/decision/FluidCloudInfo;->closeEntry:I

    iget v3, p1, Lpantanal/decision/FluidCloudInfo;->closeEntry:I

    if-eq v1, v3, :cond_42

    return v2

    :cond_42
    iget p0, p0, Lpantanal/decision/FluidCloudInfo;->serviceSwitch:I

    iget p1, p1, Lpantanal/decision/FluidCloudInfo;->serviceSwitch:I

    if-eq p0, p1, :cond_49

    return v2

    :cond_49
    return v0
.end method

.method public final getCloseEntry()I
    .registers 1

    iget p0, p0, Lpantanal/decision/FluidCloudInfo;->closeEntry:I

    return p0
.end method

.method public final getIcon()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/FluidCloudInfo;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/FluidCloudInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/FluidCloudInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceSwitch()I
    .registers 1

    iget p0, p0, Lpantanal/decision/FluidCloudInfo;->serviceSwitch:I

    return p0
.end method

.method public final getServiceType()I
    .registers 1

    iget p0, p0, Lpantanal/decision/FluidCloudInfo;->serviceType:I

    return p0
.end method

.method public final getSupportEntry()I
    .registers 1

    iget p0, p0, Lpantanal/decision/FluidCloudInfo;->supportEntry:I

    return p0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lpantanal/decision/FluidCloudInfo;->serviceId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lpantanal/decision/FluidCloudInfo;->supportEntry:I

    const/16 v3, 0x1f

    invoke-static {v2, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v2, p0, Lpantanal/decision/FluidCloudInfo;->serviceType:I

    invoke-static {v2, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v2, p0, Lpantanal/decision/FluidCloudInfo;->icon:Ljava/lang/String;

    if-nez v2, :cond_21

    move v2, v1

    goto :goto_25

    :cond_21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lpantanal/decision/FluidCloudInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_31
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lpantanal/decision/FluidCloudInfo;->closeEntry:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lpantanal/decision/FluidCloudInfo;->serviceSwitch:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lpantanal/decision/FluidCloudInfo;->serviceId:Ljava/lang/String;

    iget v1, p0, Lpantanal/decision/FluidCloudInfo;->supportEntry:I

    iget v2, p0, Lpantanal/decision/FluidCloudInfo;->serviceType:I

    iget-object v3, p0, Lpantanal/decision/FluidCloudInfo;->icon:Ljava/lang/String;

    iget-object v4, p0, Lpantanal/decision/FluidCloudInfo;->name:Ljava/lang/String;

    iget v5, p0, Lpantanal/decision/FluidCloudInfo;->closeEntry:I

    iget p0, p0, Lpantanal/decision/FluidCloudInfo;->serviceSwitch:I

    const-string v6, "FluidCloudInfo(serviceId="

    const-string v7, ", supportEntry="

    const-string v8, ", serviceType="

    invoke-static {v6, v0, v7, v1, v8}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    const-string v6, ", name="

    invoke-static {v0, v2, v1, v3, v6}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", closeEntry="

    const-string v2, ", serviceSwitch="

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
