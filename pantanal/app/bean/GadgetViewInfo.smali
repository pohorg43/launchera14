.class public final Lpantanal/app/bean/GadgetViewInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private entrance:Lpantanal/app/bean/Entrance;

.field private final initData:Ljava/lang/String;

.field private final isRecommend:Z

.field private final serviceId:Ljava/lang/String;

.field private final size:I

.field private final sizeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-direct/range {v0 .. v8}, Lpantanal/app/bean/GadgetViewInfo;-><init>(ILjava/util/Set;Ljava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;Ljava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lpantanal/app/bean/Entrance;",
            ")V"
        }
    .end annotation

    const-string v0, "sizeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initData"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entrance"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpantanal/app/bean/GadgetViewInfo;->size:I

    iput-object p2, p0, Lpantanal/app/bean/GadgetViewInfo;->sizeSet:Ljava/util/Set;

    iput-object p3, p0, Lpantanal/app/bean/GadgetViewInfo;->serviceId:Ljava/lang/String;

    iput-boolean p4, p0, Lpantanal/app/bean/GadgetViewInfo;->isRecommend:Z

    iput-object p5, p0, Lpantanal/app/bean/GadgetViewInfo;->initData:Ljava/lang/String;

    iput-object p6, p0, Lpantanal/app/bean/GadgetViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Set;Ljava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_5

    const/4 p1, 0x6

    :cond_5
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_b

    sget-object p2, Li4/a0;->a:Li4/a0;

    :cond_b
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    const-string v0, ""

    if-eqz p2, :cond_14

    move-object v1, v0

    goto :goto_15

    :cond_14
    move-object v1, p3

    :goto_15
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    const/4 p4, 0x0

    :cond_1a
    move v2, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_20

    goto :goto_21

    :cond_20
    move-object v0, p5

    :goto_21
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_2d

    sget-object p2, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    const/16 p3, 0x100

    invoke-virtual {p2, p3}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object p6

    :cond_2d
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v1

    move p6, v2

    move-object p7, v0

    move-object p8, v3

    invoke-direct/range {p2 .. p8}, Lpantanal/app/bean/GadgetViewInfo;-><init>(ILjava/util/Set;Ljava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/bean/GadgetViewInfo;ILjava/util/Set;Ljava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;ILjava/lang/Object;)Lpantanal/app/bean/GadgetViewInfo;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget p1, p0, Lpantanal/app/bean/GadgetViewInfo;->size:I

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lpantanal/app/bean/GadgetViewInfo;->sizeSet:Ljava/util/Set;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lpantanal/app/bean/GadgetViewInfo;->serviceId:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget-boolean p4, p0, Lpantanal/app/bean/GadgetViewInfo;->isRecommend:Z

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lpantanal/app/bean/GadgetViewInfo;->initData:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lpantanal/app/bean/GadgetViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lpantanal/app/bean/GadgetViewInfo;->copy(ILjava/util/Set;Ljava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;)Lpantanal/app/bean/GadgetViewInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/GadgetViewInfo;->size:I

    return p0
.end method

.method public final component2()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/GadgetViewInfo;->sizeSet:Ljava/util/Set;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/GadgetViewInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/GadgetViewInfo;->isRecommend:Z

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/GadgetViewInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Lpantanal/app/bean/Entrance;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/GadgetViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    return-object p0
.end method

.method public final copy(ILjava/util/Set;Ljava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;)Lpantanal/app/bean/GadgetViewInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lpantanal/app/bean/Entrance;",
            ")",
            "Lpantanal/app/bean/GadgetViewInfo;"
        }
    .end annotation

    const-string p0, "sizeSet"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "serviceId"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "initData"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entrance"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/bean/GadgetViewInfo;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lpantanal/app/bean/GadgetViewInfo;-><init>(ILjava/util/Set;Ljava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/bean/GadgetViewInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/bean/GadgetViewInfo;

    iget v1, p0, Lpantanal/app/bean/GadgetViewInfo;->size:I

    iget v3, p1, Lpantanal/app/bean/GadgetViewInfo;->size:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lpantanal/app/bean/GadgetViewInfo;->sizeSet:Ljava/util/Set;

    iget-object v3, p1, Lpantanal/app/bean/GadgetViewInfo;->sizeSet:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lpantanal/app/bean/GadgetViewInfo;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/GadgetViewInfo;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Lpantanal/app/bean/GadgetViewInfo;->isRecommend:Z

    iget-boolean v3, p1, Lpantanal/app/bean/GadgetViewInfo;->isRecommend:Z

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lpantanal/app/bean/GadgetViewInfo;->initData:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/bean/GadgetViewInfo;->initData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object p0, p0, Lpantanal/app/bean/GadgetViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    iget-object p1, p1, Lpantanal/app/bean/GadgetViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    if-eq p0, p1, :cond_42

    return v2

    :cond_42
    return v0
.end method

.method public final getEntrance()Lpantanal/app/bean/Entrance;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/GadgetViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    return-object p0
.end method

.method public final getInitData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/GadgetViewInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/bean/GadgetViewInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()I
    .registers 1

    iget p0, p0, Lpantanal/app/bean/GadgetViewInfo;->size:I

    return p0
.end method

.method public final getSizeSet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/bean/GadgetViewInfo;->sizeSet:Ljava/util/Set;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lpantanal/app/bean/GadgetViewInfo;->size:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/GadgetViewInfo;->sizeSet:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lpantanal/app/bean/GadgetViewInfo;->serviceId:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/app/bean/GadgetViewInfo;->isRecommend:Z

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/bean/GadgetViewInfo;->initData:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lpantanal/app/bean/GadgetViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isRecommend()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/bean/GadgetViewInfo;->isRecommend:Z

    return p0
.end method

.method public final setEntrance(Lpantanal/app/bean/Entrance;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/bean/GadgetViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget v0, p0, Lpantanal/app/bean/GadgetViewInfo;->size:I

    iget-object v1, p0, Lpantanal/app/bean/GadgetViewInfo;->sizeSet:Ljava/util/Set;

    iget-object v2, p0, Lpantanal/app/bean/GadgetViewInfo;->serviceId:Ljava/lang/String;

    iget-boolean v3, p0, Lpantanal/app/bean/GadgetViewInfo;->isRecommend:Z

    iget-object v4, p0, Lpantanal/app/bean/GadgetViewInfo;->initData:Ljava/lang/String;

    iget-object p0, p0, Lpantanal/app/bean/GadgetViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GadgetViewInfo(size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sizeSet="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", serviceId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isRecommend="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", initData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", entrance="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
