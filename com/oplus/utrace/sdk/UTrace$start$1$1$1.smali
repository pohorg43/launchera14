.class final Lcom/oplus/utrace/sdk/UTrace$start$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/sdk/UTrace;->start(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
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
.field public final synthetic $it:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/utrace/sdk/UTrace$start$1$1$1;->$it:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/UTrace$start$1$1$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 3

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    iget-object p0, p0, Lcom/oplus/utrace/sdk/UTrace$start$1$1$1;->$it:Ljava/lang/String;

    const-string v1, "UTrace.Sdk"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
