.class final Lcom/oplus/utrace/sdk/UTrace$startHead$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/sdk/UTrace;->startHead(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/utrace/lib/SpanType;)Lcom/oplus/utrace/sdk/UTraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $myCtx:Lcom/oplus/utrace/sdk/UTraceContextV2;

.field public final synthetic $switchOn:Z


# direct methods
.method public constructor <init>(Lcom/oplus/utrace/sdk/UTraceContextV2;Z)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/utrace/sdk/UTrace$startHead$1$1;->$myCtx:Lcom/oplus/utrace/sdk/UTraceContextV2;

    iput-boolean p2, p0, Lcom/oplus/utrace/sdk/UTrace$startHead$1$1;->$switchOn:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTrace$startHead$1$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 4

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "startHead() myCtx="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/utrace/sdk/UTrace$startHead$1$1;->$myCtx:Lcom/oplus/utrace/sdk/UTraceContextV2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " UTraceApp.mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oplus/utrace/sdk/UTraceApp;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceApp;

    invoke-virtual {v2}, Lcom/oplus/utrace/sdk/UTraceApp;->getMEnabled$utrace_sdk_fullRelease()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " switchOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/utrace/sdk/UTrace$startHead$1$1;->$switchOn:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " SdkConfig.isEnabled="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->INSTANCE:Lcom/oplus/utrace/sdk/internal/SdkConfig;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " SdkConfig.coreAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->getCoreAvailable()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTrace.Sdk"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
