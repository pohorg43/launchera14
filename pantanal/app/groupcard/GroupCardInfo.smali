.class public final Lpantanal/app/groupcard/GroupCardInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field private final filter:Lpantanal/app/groupcard/IGroupCardFilter;

.field private final groupCardCallback:Lpantanal/app/groupcard/IGroupCardCallback;

.field private final groupCardConfig:Lpantanal/app/groupcard/GroupCardConfig;

.field private final groupChildCardDataInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/groupcard/GroupCardConfig;Lpantanal/app/groupcard/IGroupCardCallback;Lpantanal/app/groupcard/IGroupCardFilter;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lpantanal/app/groupcard/GroupCardConfig;",
            "Lpantanal/app/groupcard/IGroupCardCallback;",
            "Lpantanal/app/groupcard/IGroupCardFilter;",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardViewInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCardConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCardCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/groupcard/GroupCardInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p2, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardConfig:Lpantanal/app/groupcard/GroupCardConfig;

    iput-object p3, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    iput-object p4, p0, Lpantanal/app/groupcard/GroupCardInfo;->filter:Lpantanal/app/groupcard/IGroupCardFilter;

    iput-object p5, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupChildCardDataInfoList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/groupcard/GroupCardConfig;Lpantanal/app/groupcard/IGroupCardCallback;Lpantanal/app/groupcard/IGroupCardFilter;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_7

    move-object v5, v0

    goto :goto_8

    :cond_7
    move-object v5, p4

    :goto_8
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_e

    move-object v6, v0

    goto :goto_f

    :cond_e
    move-object v6, p5

    :goto_f
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lpantanal/app/groupcard/GroupCardInfo;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/groupcard/GroupCardConfig;Lpantanal/app/groupcard/IGroupCardCallback;Lpantanal/app/groupcard/IGroupCardFilter;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/groupcard/GroupCardInfo;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/groupcard/GroupCardConfig;Lpantanal/app/groupcard/IGroupCardCallback;Lpantanal/app/groupcard/IGroupCardFilter;Ljava/util/List;ILjava/lang/Object;)Lpantanal/app/groupcard/GroupCardInfo;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lpantanal/app/groupcard/GroupCardInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardConfig:Lpantanal/app/groupcard/GroupCardConfig;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lpantanal/app/groupcard/GroupCardInfo;->filter:Lpantanal/app/groupcard/IGroupCardFilter;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupChildCardDataInfoList:Ljava/util/List;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lpantanal/app/groupcard/GroupCardInfo;->copy(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/groupcard/GroupCardConfig;Lpantanal/app/groupcard/IGroupCardCallback;Lpantanal/app/groupcard/IGroupCardFilter;Ljava/util/List;)Lpantanal/app/groupcard/GroupCardInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lpantanal/app/bean/CardViewInfo;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    return-object p0
.end method

.method public final component2()Lpantanal/app/groupcard/GroupCardConfig;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardConfig:Lpantanal/app/groupcard/GroupCardConfig;

    return-object p0
.end method

.method public final component3()Lpantanal/app/groupcard/IGroupCardCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    return-object p0
.end method

.method public final component4()Lpantanal/app/groupcard/IGroupCardFilter;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->filter:Lpantanal/app/groupcard/IGroupCardFilter;

    return-object p0
.end method

.method public final component5()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupChildCardDataInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/groupcard/GroupCardConfig;Lpantanal/app/groupcard/IGroupCardCallback;Lpantanal/app/groupcard/IGroupCardFilter;Ljava/util/List;)Lpantanal/app/groupcard/GroupCardInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lpantanal/app/groupcard/GroupCardConfig;",
            "Lpantanal/app/groupcard/IGroupCardCallback;",
            "Lpantanal/app/groupcard/IGroupCardFilter;",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;)",
            "Lpantanal/app/groupcard/GroupCardInfo;"
        }
    .end annotation

    const-string p0, "cardViewInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "groupCardConfig"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "groupCardCallback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/groupcard/GroupCardInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lpantanal/app/groupcard/GroupCardInfo;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/groupcard/GroupCardConfig;Lpantanal/app/groupcard/IGroupCardCallback;Lpantanal/app/groupcard/IGroupCardFilter;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/groupcard/GroupCardInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/groupcard/GroupCardInfo;

    iget-object v1, p0, Lpantanal/app/groupcard/GroupCardInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v3, p1, Lpantanal/app/groupcard/GroupCardInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardConfig:Lpantanal/app/groupcard/GroupCardConfig;

    iget-object v3, p1, Lpantanal/app/groupcard/GroupCardInfo;->groupCardConfig:Lpantanal/app/groupcard/GroupCardConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    iget-object v3, p1, Lpantanal/app/groupcard/GroupCardInfo;->groupCardCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lpantanal/app/groupcard/GroupCardInfo;->filter:Lpantanal/app/groupcard/IGroupCardFilter;

    iget-object v3, p1, Lpantanal/app/groupcard/GroupCardInfo;->filter:Lpantanal/app/groupcard/IGroupCardFilter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupChildCardDataInfoList:Ljava/util/List;

    iget-object p1, p1, Lpantanal/app/groupcard/GroupCardInfo;->groupChildCardDataInfoList:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final getCardViewInfo()Lpantanal/app/bean/CardViewInfo;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    return-object p0
.end method

.method public final getFilter()Lpantanal/app/groupcard/IGroupCardFilter;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->filter:Lpantanal/app/groupcard/IGroupCardFilter;

    return-object p0
.end method

.method public final getGroupCardCallback()Lpantanal/app/groupcard/IGroupCardCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    return-object p0
.end method

.method public final getGroupCardConfig()Lpantanal/app/groupcard/GroupCardConfig;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardConfig:Lpantanal/app/groupcard/GroupCardConfig;

    return-object p0
.end method

.method public final getGroupChildCardDataInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/GroupChildCardDataInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupChildCardDataInfoList:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lpantanal/app/groupcard/GroupCardInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardConfig:Lpantanal/app/groupcard/GroupCardConfig;

    invoke-virtual {v1}, Lpantanal/app/groupcard/GroupCardConfig;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/groupcard/GroupCardInfo;->filter:Lpantanal/app/groupcard/IGroupCardFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    move v1, v2

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupChildCardDataInfoList:Ljava/util/List;

    if-nez p0, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lpantanal/app/groupcard/GroupCardInfo;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v1, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardConfig:Lpantanal/app/groupcard/GroupCardConfig;

    iget-object v2, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupCardCallback:Lpantanal/app/groupcard/IGroupCardCallback;

    iget-object v3, p0, Lpantanal/app/groupcard/GroupCardInfo;->filter:Lpantanal/app/groupcard/IGroupCardFilter;

    iget-object p0, p0, Lpantanal/app/groupcard/GroupCardInfo;->groupChildCardDataInfoList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GroupCardInfo(cardViewInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", groupCardConfig="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", groupCardCallback="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", filter="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", groupChildCardDataInfoList="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
