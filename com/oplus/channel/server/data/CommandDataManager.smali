.class public final Lcom/oplus/channel/server/data/CommandDataManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0019B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0005\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J$\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00022\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u0006J\u0014\u0010\u0011\u001a\u00020\n2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0002R\u0016\u0010\u0012\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\"\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"
    }
    d2 = {
        "Lcom/oplus/channel/server/data/CommandDataManager;",
        "",
        "",
        "Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;",
        "cacheCommandDataList",
        "mergeCommandData",
        "",
        "clientName",
        "Lcom/oplus/channel/server/data/Command;",
        "commandList",
        "Landroid/os/Bundle;",
        "data",
        "Lh4/z;",
        "cacheCommandData",
        "removeCachedCommandData",
        "queryCachedCommandData",
        "pullCommand",
        "encodeCommandData",
        "TAG",
        "Ljava/lang/String;",
        "",
        "commandData",
        "Ljava/util/Map;",
        "<init>",
        "()V",
        "CacheCommandData",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/channel/server/data/CommandDataManager;

.field private static final TAG:Ljava/lang/String; = "CommandDataManager"

.field private static final commandData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/data/CommandDataManager;

    invoke-direct {v0}, Lcom/oplus/channel/server/data/CommandDataManager;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/data/CommandDataManager;->INSTANCE:Lcom/oplus/channel/server/data/CommandDataManager;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/data/CommandDataManager;->commandData:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final mergeCommandData(Ljava/util/List;)Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;",
            ">;)",
            "Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-static {p1}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    return-object p0

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    invoke-virtual {v2}, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->getObserverList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_17

    :cond_2b
    invoke-static {v0}, Li4/v;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    invoke-virtual {v2}, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->getCommandList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_38

    :cond_4c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeCommandData observerList="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " commandList="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CommandDataManager"

    invoke-static {v2, p1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    invoke-static {v0, v1}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/channel/server/data/CommandDataManager;->encodeCommandData(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;-><init>(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    return-object p1
.end method


# virtual methods
.method public final cacheCommandData(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string p0, "clientName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "commandList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/oplus/channel/server/data/Command;

    invoke-virtual {v6}, Lcom/oplus/channel/server/data/Command;->getMethodType()I

    move-result v7

    if-eq v7, v5, :cond_35

    invoke-virtual {v6}, Lcom/oplus/channel/server/data/Command;->getMethodType()I

    move-result v5

    if-ne v5, v2, :cond_36

    :cond_35
    move v3, v4

    :cond_36
    if-eqz v3, :cond_18

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_45
    :goto_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/oplus/channel/server/data/Command;

    invoke-virtual {v6}, Lcom/oplus/channel/server/data/Command;->getMethodType()I

    move-result v7

    if-eq v7, v5, :cond_60

    invoke-virtual {v6}, Lcom/oplus/channel/server/data/Command;->getMethodType()I

    move-result v6

    if-eq v6, v2, :cond_60

    move v6, v4

    goto :goto_61

    :cond_60
    move v6, v3

    :goto_61
    if-eqz v6, :cond_45

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_67
    new-instance p2, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    invoke-direct {p2, p0, v0, p3}, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;-><init>(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    sget-object p0, Lcom/oplus/channel/server/data/CommandDataManager;->commandData:Ljava/util/Map;

    monitor-enter p0

    :try_start_6f
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    if-nez p3, :cond_78

    goto :goto_8c

    :cond_78
    sget-object v0, Lcom/oplus/channel/server/data/CommandDataManager;->INSTANCE:Lcom/oplus/channel/server/data/CommandDataManager;

    new-array v1, v5, [Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    aput-object p3, v1, v3

    aput-object p2, v1, v4

    invoke-static {v1}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/oplus/channel/server/data/CommandDataManager;->mergeCommandData(Ljava/util/List;)Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    move-result-object p3

    if-nez p3, :cond_8b

    goto :goto_8c

    :cond_8b
    move-object p2, p3

    :goto_8c
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catchall {:try_start_6f .. :try_end_8f} :catchall_91

    monitor-exit p0

    return-void

    :catchall_91
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final encodeCommandData(Ljava/util/List;)Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string p0, "pullCommand"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "encodeCommandData pullCommand="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommandDataManager"

    invoke-static {v0, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const-string v1, "obtain()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_1a
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2a
    if-ge v4, v2, :cond_6e

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/channel/server/data/Command;

    invoke-virtual {v5}, Lcom/oplus/channel/server/data/Command;->getMethodType()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/channel/server/data/Command;

    invoke-virtual {v5}, Lcom/oplus/channel/server/data/Command;->getCallbackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/channel/server/data/Command;

    invoke-virtual {v5}, Lcom/oplus/channel/server/data/Command;->getParams()[B

    move-result-object v5

    if-nez v5, :cond_5f

    new-array v5, v3, [B

    :cond_5f
    array-length v6, v5

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    const/16 v5, 0x64

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_6e
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "RESULT_COMMAND_LIST"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_7f} :catch_85
    .catchall {:try_start_1a .. :try_end_7f} :catchall_83

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_83
    move-exception p1

    goto :goto_9c

    :catch_85
    move-exception p1

    :try_start_86
    const-string v1, "encodeCommandData Exception : "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_86 .. :try_end_93} :catchall_83

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :goto_9c
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final queryCachedCommandData(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    const-string p0, "clientName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/data/CommandDataManager;->commandData:Ljava/util/Map;

    monitor-enter p0

    :try_start_8
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->getData()Landroid/os/Bundle;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_18

    :goto_16
    monitor-exit p0

    return-object p1

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final removeCachedCommandData(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    const-string p0, "clientName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/data/CommandDataManager;->commandData:Ljava/util/Map;

    monitor-enter p0

    :try_start_8
    const-string v0, "CommandDataManager"

    const-string v1, "removeCachedCommandData clientName="

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    if-nez p1, :cond_1d

    const/4 p1, 0x0

    goto :goto_21

    :cond_1d
    invoke-virtual {p1}, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->getData()Landroid/os/Bundle;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_23

    :goto_21
    monitor-exit p0

    return-object p1

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
