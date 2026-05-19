.class public final Lcom/oplus/channel/server/utils/Constants;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0016\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0016\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0016\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0016\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0016\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0016\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0016\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00108\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004¨\u0006\u0017"
    }
    d2 = {
        "Lcom/oplus/channel/server/utils/Constants;",
        "",
        "",
        "METHOD_PULL",
        "Ljava/lang/String;",
        "RESULT_COMMAND_LIST",
        "RESULT_IDLE_STATE",
        "RESULT_BATCH_CALLBACK_SUPPORT",
        "METHOD_PULL_COMMAND",
        "METHOD_CALLBACK",
        "METHOD_BATCH_CALLBACK",
        "RESULT_CALLBACK_ID",
        "RESULT_CALLBACK_ID_LIST",
        "RESULT_CALLBACK_DATA",
        "CALL_RESULT",
        "BATCH_CALL_RESULT",
        "",
        "RESULT_SUCCESS",
        "I",
        "RESULT_FAILURE",
        "CONSUMED",
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
.field public static final BATCH_CALL_RESULT:Ljava/lang/String; = "batch_call_result"

.field public static final CALL_RESULT:Ljava/lang/String; = "call_result"

.field public static final CONSUMED:Ljava/lang/String; = "consumed"

.field public static final INSTANCE:Lcom/oplus/channel/server/utils/Constants;

.field public static final METHOD_BATCH_CALLBACK:Ljava/lang/String; = "batch_callback"

.field public static final METHOD_CALLBACK:Ljava/lang/String; = "callback"

.field public static final METHOD_PULL:Ljava/lang/String; = "pull"

.field public static final METHOD_PULL_COMMAND:Ljava/lang/String; = "pullCommand"

.field public static final RESULT_BATCH_CALLBACK_SUPPORT:Ljava/lang/String; = "RESULT_BATCH_CALLBACK_SUPPORT"

.field public static final RESULT_CALLBACK_DATA:Ljava/lang/String; = "RESULT_CALLBACK_DATA"

.field public static final RESULT_CALLBACK_ID:Ljava/lang/String; = "RESULT_CALLBACK_ID"

.field public static final RESULT_CALLBACK_ID_LIST:Ljava/lang/String; = "RESULT_CALLBACK_ID_LIST"

.field public static final RESULT_COMMAND_LIST:Ljava/lang/String; = "RESULT_COMMAND_LIST"

.field public static final RESULT_FAILURE:I = 0x1

.field public static final RESULT_IDLE_STATE:Ljava/lang/String; = "RESULT_IDLE_STATE"

.field public static final RESULT_SUCCESS:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/utils/Constants;

    invoke-direct {v0}, Lcom/oplus/channel/server/utils/Constants;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/utils/Constants;->INSTANCE:Lcom/oplus/channel/server/utils/Constants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
