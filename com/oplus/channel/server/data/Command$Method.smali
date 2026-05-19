.class public final Lcom/oplus/channel/server/data/Command$Method;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/channel/server/data/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Method"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\u000b"
    }
    d2 = {
        "Lcom/oplus/channel/server/data/Command$Method;",
        "",
        "",
        "REQUEST",
        "I",
        "REQUEST_ONCE",
        "OBSERVE",
        "REPLACE_OBSERVE",
        "STOP_OBSERVE",
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
.field public static final INSTANCE:Lcom/oplus/channel/server/data/Command$Method;

.field public static final OBSERVE:I = 0x2

.field public static final REPLACE_OBSERVE:I = 0x3

.field public static final REQUEST:I = 0x0

.field public static final REQUEST_ONCE:I = 0x1

.field public static final STOP_OBSERVE:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/data/Command$Method;

    invoke-direct {v0}, Lcom/oplus/channel/server/data/Command$Method;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/data/Command$Method;->INSTANCE:Lcom/oplus/channel/server/data/Command$Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
