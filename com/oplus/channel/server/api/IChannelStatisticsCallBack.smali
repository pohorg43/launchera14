.class public interface abstract Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&J\u001a\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¨\u0006\t"
    }
    d2 = {
        "Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;",
        "",
        "",
        "cardType",
        "Landroid/os/Bundle;",
        "extras",
        "Lh4/z;",
        "onCreateChannelError",
        "onReceiveUIDataError",
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
.method public abstract onCreateChannelError(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onReceiveUIDataError(Ljava/lang/String;Landroid/os/Bundle;)V
.end method
