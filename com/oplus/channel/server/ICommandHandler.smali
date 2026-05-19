.class public interface abstract Lcom/oplus/channel/server/ICommandHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/ICommandHandler$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u001e\u0010\b\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u001e\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u0007\u001a\u00020\u0003H\u0016¨\u0006\r"
    }
    d2 = {
        "Lcom/oplus/channel/server/ICommandHandler;",
        "",
        "",
        "Lcom/oplus/channel/server/data/Command;",
        "cmdList",
        "Lh4/z;",
        "handlePullCommand",
        "command",
        "handleAddCommand",
        "",
        "currentCommandList",
        "",
        "shouldFilterRequest",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract handleAddCommand(Ljava/util/List;Lcom/oplus/channel/server/data/Command;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;",
            "Lcom/oplus/channel/server/data/Command;",
            ")V"
        }
    .end annotation
.end method

.method public abstract handlePullCommand(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shouldFilterRequest(Ljava/util/List;Lcom/oplus/channel/server/data/Command;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;",
            "Lcom/oplus/channel/server/data/Command;",
            ")Z"
        }
    .end annotation
.end method
