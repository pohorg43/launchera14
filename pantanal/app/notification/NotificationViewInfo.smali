.class public final Lpantanal/app/notification/NotificationViewInfo;
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


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;)V
    .registers 7

    const-string v0, "serviceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entrance"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpantanal/app/notification/NotificationViewInfo;->size:I

    iput-object p2, p0, Lpantanal/app/notification/NotificationViewInfo;->serviceId:Ljava/lang/String;

    iput-boolean p3, p0, Lpantanal/app/notification/NotificationViewInfo;->isRecommend:Z

    iput-object p4, p0, Lpantanal/app/notification/NotificationViewInfo;->initData:Ljava/lang/String;

    iput-object p5, p0, Lpantanal/app/notification/NotificationViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    and-int/lit8 p7, p6, 0x2

    const-string v0, ""

    if-eqz p7, :cond_8

    move-object v3, v0

    goto :goto_9

    :cond_8
    move-object v3, p2

    :goto_9
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_e

    const/4 p3, 0x0

    :cond_e
    move v4, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_15

    move-object v5, v0

    goto :goto_16

    :cond_15
    move-object v5, p4

    :goto_16
    const/16 p2, 0x10

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_22

    sget-object p3, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {p3, p2}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object p5

    :cond_22
    move-object v6, p5

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lpantanal/app/notification/NotificationViewInfo;-><init>(ILjava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/notification/NotificationViewInfo;ILjava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;ILjava/lang/Object;)Lpantanal/app/notification/NotificationViewInfo;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget p1, p0, Lpantanal/app/notification/NotificationViewInfo;->size:I

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lpantanal/app/notification/NotificationViewInfo;->serviceId:Ljava/lang/String;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-boolean p3, p0, Lpantanal/app/notification/NotificationViewInfo;->isRecommend:Z

    :cond_13
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lpantanal/app/notification/NotificationViewInfo;->initData:Ljava/lang/String;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lpantanal/app/notification/NotificationViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lpantanal/app/notification/NotificationViewInfo;->copy(ILjava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;)Lpantanal/app/notification/NotificationViewInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lpantanal/app/notification/NotificationViewInfo;->size:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/notification/NotificationViewInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/notification/NotificationViewInfo;->isRecommend:Z

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/notification/NotificationViewInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Lpantanal/app/bean/Entrance;
    .registers 1

    iget-object p0, p0, Lpantanal/app/notification/NotificationViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;)Lpantanal/app/notification/NotificationViewInfo;
    .registers 12

    const-string p0, "serviceId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "initData"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entrance"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/notification/NotificationViewInfo;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lpantanal/app/notification/NotificationViewInfo;-><init>(ILjava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/notification/NotificationViewInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/notification/NotificationViewInfo;

    iget v1, p0, Lpantanal/app/notification/NotificationViewInfo;->size:I

    iget v3, p1, Lpantanal/app/notification/NotificationViewInfo;->size:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lpantanal/app/notification/NotificationViewInfo;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/notification/NotificationViewInfo;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lpantanal/app/notification/NotificationViewInfo;->isRecommend:Z

    iget-boolean v3, p1, Lpantanal/app/notification/NotificationViewInfo;->isRecommend:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lpantanal/app/notification/NotificationViewInfo;->initData:Ljava/lang/String;

    iget-object v3, p1, Lpantanal/app/notification/NotificationViewInfo;->initData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object p0, p0, Lpantanal/app/notification/NotificationViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    iget-object p1, p1, Lpantanal/app/notification/NotificationViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    if-eq p0, p1, :cond_37

    return v2

    :cond_37
    return v0
.end method

.method public final getEntrance()Lpantanal/app/bean/Entrance;
    .registers 1

    iget-object p0, p0, Lpantanal/app/notification/NotificationViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    return-object p0
.end method

.method public final getInitData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/notification/NotificationViewInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/notification/NotificationViewInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()I
    .registers 1

    iget p0, p0, Lpantanal/app/notification/NotificationViewInfo;->size:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lpantanal/app/notification/NotificationViewInfo;->size:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/notification/NotificationViewInfo;->serviceId:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lpantanal/app/notification/NotificationViewInfo;->isRecommend:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    :cond_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/notification/NotificationViewInfo;->initData:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lpantanal/app/notification/NotificationViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isRecommend()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/notification/NotificationViewInfo;->isRecommend:Z

    return p0
.end method

.method public final setEntrance(Lpantanal/app/bean/Entrance;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/notification/NotificationViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lpantanal/app/notification/NotificationViewInfo;->size:I

    iget-object v1, p0, Lpantanal/app/notification/NotificationViewInfo;->serviceId:Ljava/lang/String;

    iget-boolean v2, p0, Lpantanal/app/notification/NotificationViewInfo;->isRecommend:Z

    iget-object v3, p0, Lpantanal/app/notification/NotificationViewInfo;->initData:Ljava/lang/String;

    iget-object p0, p0, Lpantanal/app/notification/NotificationViewInfo;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationViewInfo(size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", serviceId="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isRecommend="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", initData="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", entrance="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
