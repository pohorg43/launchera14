.class public final Lcom/oplus/channel/server/provider/IServerProvider$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/channel/server/provider/IServerProvider;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\b"
    }
    d2 = {
        "Lcom/oplus/channel/server/provider/IServerProvider$Companion;",
        "",
        "",
        "STATE_IDLE",
        "I",
        "STATE_NOT_IDLE",
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


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/channel/server/provider/IServerProvider$Companion;

.field public static final STATE_IDLE:I = -0x1

.field public static final STATE_NOT_IDLE:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/provider/IServerProvider$Companion;

    invoke-direct {v0}, Lcom/oplus/channel/server/provider/IServerProvider$Companion;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/provider/IServerProvider$Companion;->$$INSTANCE:Lcom/oplus/channel/server/provider/IServerProvider$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
