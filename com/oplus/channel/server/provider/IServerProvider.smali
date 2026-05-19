.class public interface abstract Lcom/oplus/channel/server/provider/IServerProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/provider/IServerProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\bf\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J \u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH&R\u0016\u0010\u0010\u001a\u00020\r8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"
    }
    d2 = {
        "Lcom/oplus/channel/server/provider/IServerProvider;",
        "",
        "",
        "clientName",
        "",
        "Lcom/oplus/channel/server/data/Command;",
        "pullCommand",
        "getCommandList",
        "callbackId",
        "",
        "data",
        "Lh4/z;",
        "runCallback",
        "",
        "getIdleState",
        "()I",
        "idleState",
        "Companion",
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
.field public static final Companion:Lcom/oplus/channel/server/provider/IServerProvider$Companion;

.field public static final STATE_IDLE:I = -0x1

.field public static final STATE_NOT_IDLE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/channel/server/provider/IServerProvider$Companion;->$$INSTANCE:Lcom/oplus/channel/server/provider/IServerProvider$Companion;

    sput-object v0, Lcom/oplus/channel/server/provider/IServerProvider;->Companion:Lcom/oplus/channel/server/provider/IServerProvider$Companion;

    return-void
.end method


# virtual methods
.method public abstract getCommandList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIdleState()I
.end method

.method public abstract pullCommand(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runCallback(Ljava/lang/String;Ljava/lang/String;[B)V
.end method
