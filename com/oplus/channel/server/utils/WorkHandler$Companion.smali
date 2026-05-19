.class public final Lcom/oplus/channel/server/utils/WorkHandler$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/channel/server/utils/WorkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0006\u0010\u0003\u001a\u00020\u0002R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\"\u0010\t\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00028B@BX\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"
    }
    d2 = {
        "Lcom/oplus/channel/server/utils/WorkHandler$Companion;",
        "",
        "Lcom/oplus/channel/server/utils/WorkHandler;",
        "getInstance",
        "",
        "NAME",
        "Ljava/lang/String;",
        "TAG",
        "<set-?>",
        "instance",
        "Lcom/oplus/channel/server/utils/WorkHandler;",
        "<init>",
        "()V",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/channel/server/utils/WorkHandler$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/oplus/channel/server/utils/WorkHandler;
    .registers 5

    invoke-static {}, Lcom/oplus/channel/server/utils/WorkHandler;->access$getInstance$cp()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object v0

    if-nez v0, :cond_2c

    monitor-enter p0

    :try_start_7
    invoke-static {}, Lcom/oplus/channel/server/utils/WorkHandler;->access$getInstance$cp()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance v0, Lcom/oplus/channel/server/utils/WorkHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/utils/WorkHandler;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/oplus/channel/server/utils/WorkHandler;->Companion:Lcom/oplus/channel/server/utils/WorkHandler$Companion;

    invoke-static {v0}, Lcom/oplus/channel/server/utils/WorkHandler;->access$setInstance$cp(Lcom/oplus/channel/server/utils/WorkHandler;)V

    const-string v1, "WorkHandler"

    const-string v2, "getInstance, instance "

    invoke-static {}, Lcom/oplus/channel/server/utils/WorkHandler;->access$getInstance$cp()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit p0

    goto :goto_2c

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2c
    :goto_2c
    return-object v0
.end method
