.class final Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/channel/server/data/CommandDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheCommandData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0082\b\u0018\u00002\u00020\u0001B+\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J3\u0010\u000b\u001a\u00020\u00002\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0013\u001a\u0004\b\u0016\u0010\u0015R\u0019\u0010\n\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001c"
    }
    d2 = {
        "Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;",
        "",
        "",
        "Lcom/oplus/channel/server/data/Command;",
        "component1",
        "component2",
        "Landroid/os/Bundle;",
        "component3",
        "observerList",
        "commandList",
        "data",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Ljava/util/List;",
        "getObserverList",
        "()Ljava/util/List;",
        "getCommandList",
        "Landroid/os/Bundle;",
        "getData",
        "()Landroid/os/Bundle;",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final commandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Landroid/os/Bundle;

.field private final observerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "observerList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->observerList:Ljava/util/List;

    iput-object p2, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->commandList:Ljava/util/List;

    iput-object p3, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->data:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->observerList:Ljava/util/List;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->commandList:Ljava/util/List;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->data:Landroid/os/Bundle;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->copy(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->observerList:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->commandList:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->data:Landroid/os/Bundle;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;"
        }
    .end annotation

    const-string p0, "observerList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "commandList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;-><init>(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;

    iget-object v1, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->observerList:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->observerList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->commandList:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->commandList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object p0, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->data:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->data:Landroid/os/Bundle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getCommandList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->commandList:Ljava/util/List;

    return-object p0
.end method

.method public final getData()Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->data:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getObserverList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->observerList:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->observerList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->commandList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "CacheCommandData(observerList="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->observerList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", commandList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->commandList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/channel/server/data/CommandDataManager$CacheCommandData;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
