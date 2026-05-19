.class public final Lcom/oplus/utrace/utils/Logs;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/utils/Logs;

.field private static volatile debuggable:Z

.field private static logger:Lcom/oplus/utrace/utils/ILogger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/utils/Logs;

    invoke-direct {v0}, Lcom/oplus/utrace/utils/Logs;-><init>()V

    sput-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/oplus/utrace/utils/Logs;->debuggable:Z

    if-eqz p0, :cond_1e

    if-eqz p2, :cond_1e

    invoke-static {p2}, Lcom/oplus/utrace/utils/UtilsKt;->transformLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p2}, Lcom/oplus/utrace/utils/Logs;->getLogger()Lcom/oplus/utrace/utils/ILogger;

    move-result-object p2

    if-nez p2, :cond_1b

    goto :goto_1e

    :cond_1b
    invoke-interface {p2, p1, p0}, Lcom/oplus/utrace/utils/ILogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/oplus/utrace/utils/Logs;->debuggable:Z

    if-eqz p0, :cond_25

    const-string p0, ""

    if-nez p2, :cond_e

    goto :goto_16

    :cond_e
    invoke-static {p2}, Lcom/oplus/utrace/utils/UtilsKt;->transformLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_15

    goto :goto_16

    :cond_15
    move-object p0, p2

    :goto_16
    invoke-static {p1, p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p2}, Lcom/oplus/utrace/utils/Logs;->getLogger()Lcom/oplus/utrace/utils/ILogger;

    move-result-object p2

    if-nez p2, :cond_22

    goto :goto_25

    :cond_22
    invoke-interface {p2, p1, p0, p3}, Lcom/oplus/utrace/utils/ILogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    :goto_25
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    if-nez p2, :cond_a

    goto :goto_12

    :cond_a
    invoke-static {p2}, Lcom/oplus/utrace/utils/UtilsKt;->transformLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_11

    goto :goto_12

    :cond_11
    move-object p0, p2

    :goto_12
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p2}, Lcom/oplus/utrace/utils/Logs;->getLogger()Lcom/oplus/utrace/utils/ILogger;

    move-result-object p2

    if-nez p2, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-interface {p2, p1, p0}, Lcom/oplus/utrace/utils/ILogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    if-nez p2, :cond_a

    goto :goto_12

    :cond_a
    invoke-static {p2}, Lcom/oplus/utrace/utils/UtilsKt;->transformLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_11

    goto :goto_12

    :cond_11
    move-object p0, p2

    :goto_12
    invoke-static {p1, p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p2}, Lcom/oplus/utrace/utils/Logs;->getLogger()Lcom/oplus/utrace/utils/ILogger;

    move-result-object p2

    if-nez p2, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-interface {p2, p1, p0, p3}, Lcom/oplus/utrace/utils/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-void
.end method

.method public final getDebuggable()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/utrace/utils/Logs;->debuggable:Z

    return p0
.end method

.method public final getLogger()Lcom/oplus/utrace/utils/ILogger;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->logger:Lcom/oplus/utrace/utils/ILogger;

    return-object p0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    if-nez p2, :cond_a

    goto :goto_12

    :cond_a
    invoke-static {p2}, Lcom/oplus/utrace/utils/UtilsKt;->transformLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_11

    goto :goto_12

    :cond_11
    move-object p0, p2

    :goto_12
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p2}, Lcom/oplus/utrace/utils/Logs;->getLogger()Lcom/oplus/utrace/utils/ILogger;

    move-result-object p2

    if-nez p2, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-interface {p2, p1, p0}, Lcom/oplus/utrace/utils/ILogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    if-nez p2, :cond_a

    goto :goto_12

    :cond_a
    invoke-static {p2}, Lcom/oplus/utrace/utils/UtilsKt;->transformLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_11

    goto :goto_12

    :cond_11
    move-object p0, p2

    :goto_12
    invoke-static {p1, p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p2}, Lcom/oplus/utrace/utils/Logs;->getLogger()Lcom/oplus/utrace/utils/ILogger;

    move-result-object p2

    if-nez p2, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-interface {p2, p1, p0, p3}, Lcom/oplus/utrace/utils/ILogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setDebuggable(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/utrace/utils/Logs;->debuggable:Z

    return-void
.end method

.method public final setLogger(Lcom/oplus/utrace/utils/ILogger;)V
    .registers 2

    sput-object p1, Lcom/oplus/utrace/utils/Logs;->logger:Lcom/oplus/utrace/utils/ILogger;

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    if-nez p2, :cond_a

    goto :goto_12

    :cond_a
    invoke-static {p2}, Lcom/oplus/utrace/utils/UtilsKt;->transformLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_11

    goto :goto_12

    :cond_11
    move-object p0, p2

    :goto_12
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p2}, Lcom/oplus/utrace/utils/Logs;->getLogger()Lcom/oplus/utrace/utils/ILogger;

    move-result-object p2

    if-nez p2, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-interface {p2, p1, p0}, Lcom/oplus/utrace/utils/ILogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    if-nez p2, :cond_a

    goto :goto_12

    :cond_a
    invoke-static {p2}, Lcom/oplus/utrace/utils/UtilsKt;->transformLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_11

    goto :goto_12

    :cond_11
    move-object p0, p2

    :goto_12
    invoke-static {p1, p0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p2}, Lcom/oplus/utrace/utils/Logs;->getLogger()Lcom/oplus/utrace/utils/ILogger;

    move-result-object p2

    if-nez p2, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-interface {p2, p1, p0, p3}, Lcom/oplus/utrace/utils/ILogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-void
.end method
