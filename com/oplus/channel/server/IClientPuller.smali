.class public interface abstract Lcom/oplus/channel/server/IClientPuller;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0006\u001a\u00020\u0005H&R\u0016\u0010\n\u001a\u00020\u00078&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u000b"
    }
    d2 = {
        "Lcom/oplus/channel/server/IClientPuller;",
        "",
        "",
        "shouldForceFetch",
        "pullClient",
        "Lh4/z;",
        "destroy",
        "",
        "getClientName",
        "()Ljava/lang/String;",
        "clientName",
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
.method public abstract destroy()V
.end method

.method public abstract getClientName()Ljava/lang/String;
.end method

.method public abstract pullClient(Z)Z
.end method
