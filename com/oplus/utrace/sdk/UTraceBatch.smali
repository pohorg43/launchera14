.class public final Lcom/oplus/utrace/sdk/UTraceBatch;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/sdk/UTraceBatch;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/sdk/UTraceBatch;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/UTraceBatch;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/UTraceBatch;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceBatch;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic addSpanTags$default(Lcom/oplus/utrace/sdk/UTraceBatch;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/sdk/UTraceBatch;->addSpanTags(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic addTraceTags$default(Lcom/oplus/utrace/sdk/UTraceBatch;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/sdk/UTraceBatch;->addTraceTags(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private final convertContext(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;
    .registers 2

    instance-of p0, p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    if-eqz p0, :cond_7

    check-cast p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    goto :goto_d

    :cond_7
    sget-object p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->Companion:Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;->fromLegacyObj$utrace_sdk_fullRelease(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public static synthetic end$default(Lcom/oplus/utrace/sdk/UTraceBatch;Ljava/util/List;Lcom/oplus/utrace/sdk/CompletionType;Lcom/oplus/utrace/sdk/CompletionType;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_6

    sget-object p2, Lcom/oplus/utrace/sdk/CompletionType;->GOAHEAD:Lcom/oplus/utrace/sdk/CompletionType;

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    sget-object p3, Lcom/oplus/utrace/sdk/CompletionType;->GOAHEAD:Lcom/oplus/utrace/sdk/CompletionType;

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/utrace/sdk/UTraceBatch;->end(Ljava/util/List;Lcom/oplus/utrace/sdk/CompletionType;Lcom/oplus/utrace/sdk/CompletionType;)V

    return-void
.end method

.method public static synthetic error$default(Lcom/oplus/utrace/sdk/UTraceBatch;Ljava/util/List;Lh4/j;Lh4/j;Lh4/j;ILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/sdk/UTraceBatch;->error(Ljava/util/List;Lh4/j;Lh4/j;Lh4/j;)V

    return-void
.end method

.method public static synthetic start$default(Lcom/oplus/utrace/sdk/UTraceBatch;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/utrace/sdk/UTraceBatch;->start(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic startHead$default(Lcom/oplus/utrace/sdk/UTraceBatch;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/oplus/utrace/sdk/UTraceBatch;->startHead(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addSpanTags(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "myCtx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-direct {p0, v0}, Lcom/oplus/utrace/sdk/UTraceBatch;->convertContext(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object v1

    if-nez p2, :cond_2b

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getSpanType$utrace_sdk_fullRelease()I

    move-result v1

    sget-object v2, Lcom/oplus/utrace/lib/SpanType;->IntentTrace:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v2}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_29

    move-object v1, p4

    goto :goto_2c

    :cond_29
    move-object v1, p3

    goto :goto_2c

    :cond_2b
    move-object v1, p2

    :goto_2c
    if-nez v1, :cond_2f

    goto :goto_9

    :cond_2f
    invoke-static {v0, v1}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    goto :goto_9

    :cond_33
    return-void
.end method

.method public final addTraceTags(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "myCtx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-direct {p0, v0}, Lcom/oplus/utrace/sdk/UTraceBatch;->convertContext(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object v1

    if-nez p2, :cond_2b

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getSpanType$utrace_sdk_fullRelease()I

    move-result v1

    sget-object v2, Lcom/oplus/utrace/lib/SpanType;->IntentTrace:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v2}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_29

    move-object v1, p4

    goto :goto_2c

    :cond_29
    move-object v1, p3

    goto :goto_2c

    :cond_2b
    move-object v1, p2

    :goto_2c
    if-nez v1, :cond_2f

    goto :goto_9

    :cond_2f
    invoke-static {v0, v1}, Lcom/oplus/utrace/sdk/UTrace;->addTraceTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    goto :goto_9

    :cond_33
    return-void
.end method

.method public final end(Ljava/util/List;Lcom/oplus/utrace/sdk/CompletionType;Lcom/oplus/utrace/sdk/CompletionType;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ">;",
            "Lcom/oplus/utrace/sdk/CompletionType;",
            "Lcom/oplus/utrace/sdk/CompletionType;",
            ")V"
        }
    .end annotation

    const-string v0, "myCtx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeCompletionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentCompletionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-direct {p0, v0}, Lcom/oplus/utrace/sdk/UTraceBatch;->convertContext(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getSpanType$utrace_sdk_fullRelease()I

    move-result v1

    sget-object v2, Lcom/oplus/utrace/lib/SpanType;->IntentTrace:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v2}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_31

    move-object v1, p3

    goto :goto_32

    :cond_31
    move-object v1, p2

    :goto_32
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    goto :goto_13

    :cond_39
    return-void
.end method

.method public final error(Ljava/util/List;Lh4/j;Lh4/j;Lh4/j;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ">;",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "myCtx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-direct {p0, v0}, Lcom/oplus/utrace/sdk/UTraceBatch;->convertContext(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_1e

    move-object v3, v2

    goto :goto_22

    :cond_1e
    iget-object v3, p2, Lh4/j;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    :goto_22
    if-nez v3, :cond_3e

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getSpanType$utrace_sdk_fullRelease()I

    move-result v3

    sget-object v4, Lcom/oplus/utrace/lib/SpanType;->IntentTrace:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v4}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_36

    if-nez p4, :cond_33

    goto :goto_38

    :cond_33
    iget-object v3, p4, Lh4/j;->a:Ljava/lang/Object;

    goto :goto_3c

    :cond_36
    if-nez p3, :cond_3a

    :goto_38
    move-object v3, v2

    goto :goto_3e

    :cond_3a
    iget-object v3, p3, Lh4/j;->a:Ljava/lang/Object;

    :goto_3c
    check-cast v3, Ljava/lang/Integer;

    :cond_3e
    :goto_3e
    if-nez p2, :cond_42

    move-object v4, v2

    goto :goto_46

    :cond_42
    iget-object v4, p2, Lh4/j;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    :goto_46
    if-nez v4, :cond_63

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getSpanType$utrace_sdk_fullRelease()I

    move-result v1

    sget-object v4, Lcom/oplus/utrace/lib/SpanType;->IntentTrace:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v4}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_5a

    if-nez p4, :cond_57

    goto :goto_64

    :cond_57
    iget-object v1, p4, Lh4/j;->b:Ljava/lang/Object;

    goto :goto_5f

    :cond_5a
    if-nez p3, :cond_5d

    goto :goto_64

    :cond_5d
    iget-object v1, p3, Lh4/j;->b:Ljava/lang/Object;

    :goto_5f
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    goto :goto_64

    :cond_63
    move-object v2, v4

    :goto_64
    if-nez v3, :cond_67

    goto :goto_9

    :cond_67
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v2, :cond_6f

    const-string v2, ""

    :cond_6f
    invoke-static {v0, v1, v2}, Lcom/oplus/utrace/sdk/UTrace;->error(Lcom/oplus/utrace/sdk/UTraceContext;ILjava/lang/String;)V

    goto :goto_9

    :cond_73
    return-void
.end method

.method public final setFlag(Ljava/util/List;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ">;IJ)V"
        }
    .end annotation

    const-string p0, "myCtx"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-static {p1, p2, p3, p4}, Lcom/oplus/utrace/sdk/UTrace;->setFlag(Lcom/oplus/utrace/sdk/UTraceContext;IJ)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public final start(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ">;"
        }
    .end annotation

    const-string v0, "parentCtx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-direct {p0, v1}, Lcom/oplus/utrace/sdk/UTraceBatch;->convertContext(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getSpanType$utrace_sdk_fullRelease()I

    move-result v2

    sget-object v3, Lcom/oplus/utrace/lib/SpanType;->IntentTrace:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v3}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2c

    move-object v2, p3

    goto :goto_2d

    :cond_2c
    move-object v2, p2

    :goto_2d
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v4}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_37
    return-object v0
.end method

.method public final startHead(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [Lcom/oplus/utrace/sdk/UTraceContext;

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, p1, v0, v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->startHead$default(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/utrace/lib/SpanType;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p0, v1

    sget-object p1, Lcom/oplus/utrace/lib/SpanType;->IntentTrace:Lcom/oplus/utrace/lib/SpanType;

    const/4 v1, 0x1

    invoke-static {v0, p2, p1, v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->startHead$default(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/utrace/lib/SpanType;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
