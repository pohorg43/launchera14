.class public final Ly5/p;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lpantanal/app/bean/CardViewInfo;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/bean/CardViewInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "cardViewInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lh4/j;

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->toUTraceIntentString(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lh4/j;

    invoke-direct {v2, v0, p0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    invoke-static {v1}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "spanName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardViewInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lpantanal/app/bean/CardViewInfo;->getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    if-eqz v0, :cond_22

    goto :goto_3e

    :cond_22
    invoke-static {p1}, Ly5/p;->a(Lpantanal/app/bean/CardViewInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lpantanal/app/bean/CardViewInfo;->getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v4, p0, v3, v4}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    const/4 p2, 0x6

    invoke-static {p0, v4, v1, p2, v4}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    invoke-virtual {p1, p0}, Lpantanal/app/bean/CardViewInfo;->setUTraceIntentContext(Lcom/oplus/utrace/sdk/UTraceContext;)V

    goto :goto_41

    :cond_3e
    :goto_3e
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_41
    return-void
.end method
