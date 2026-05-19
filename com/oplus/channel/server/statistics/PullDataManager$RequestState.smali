.class public final Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/channel/server/statistics/PullDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\n"
    }
    d2 = {
        "Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;",
        "",
        "",
        "UNINITIALIZED",
        "I",
        "REGISTER",
        "START_CALL_PROVIDER",
        "CREATE_CHANNEL_SUCCESS",
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
.field public static final CREATE_CHANNEL_SUCCESS:I = 0x2

.field public static final INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;

.field public static final REGISTER:I = 0x0

.field public static final START_CALL_PROVIDER:I = 0x1

.field public static final UNINITIALIZED:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;

    invoke-direct {v0}, Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
