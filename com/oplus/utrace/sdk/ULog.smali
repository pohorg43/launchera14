.class public final Lcom/oplus/utrace/sdk/ULog;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/sdk/ULog;

.field private static mKeepLogcat:Z

.field private static mLogger:Lcom/oplus/utrace/sdk/IULogger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/sdk/ULog;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/ULog;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/ULog;->INSTANCE:Lcom/oplus/utrace/sdk/ULog;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Lcom/oplus/utrace/sdk/ULog;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    if-nez p0, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    invoke-interface {v1, v0, p1}, Lcom/oplus/utrace/utils/ILogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_17
    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    return v0

    :cond_21
    :goto_21
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Lcom/oplus/utrace/sdk/ULog;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    if-nez p0, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    invoke-interface {v1, v0, p1, p2}, Lcom/oplus/utrace/utils/ILogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_17
    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    return v0

    :cond_21
    :goto_21
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Lcom/oplus/utrace/sdk/ULog;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    if-nez p0, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    invoke-interface {v1, v0, p1}, Lcom/oplus/utrace/utils/ILogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_17
    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    return v0

    :cond_21
    :goto_21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Lcom/oplus/utrace/sdk/ULog;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    if-nez p0, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    invoke-interface {v1, v0, p1, p2}, Lcom/oplus/utrace/utils/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_17
    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    return v0

    :cond_21
    :goto_21
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static final formatMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/oplus/utrace/sdk/UTrace;->getContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4a

    :cond_7
    const-string v1, " ["

    invoke-static {p0, v1}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/oplus/utrace/sdk/UTraceContext;->getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_22

    const/4 v2, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual {v2, v3}, Lcom/oplus/utrace/lib/NodeID;->getSpanID(Z)Ljava/lang/String;

    move-result-object v2

    :goto_26
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oplus/utrace/lib/NodeID;->getSpanID(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getPkgName$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4a
    invoke-static {p0}, Lcom/oplus/utrace/utils/UtilsKt;->transformLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Lcom/oplus/utrace/sdk/ULog;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    if-nez p0, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    invoke-interface {v1, v0, p1}, Lcom/oplus/utrace/utils/ILogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_17
    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    return v0

    :cond_21
    :goto_21
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Lcom/oplus/utrace/sdk/ULog;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    if-nez p0, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    invoke-interface {v1, v0, p1, p2}, Lcom/oplus/utrace/utils/ILogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_17
    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    return v0

    :cond_21
    :goto_21
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static final println(IILjava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/oplus/utrace/sdk/ULog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v0

    :goto_e
    if-nez v2, :cond_39

    if-eqz p2, :cond_1a

    invoke-static {p2}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_1d

    goto :goto_39

    :cond_1d
    invoke-static {p2}, Lcom/oplus/utrace/sdk/ULog;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-nez v0, :cond_26

    goto :goto_2a

    :cond_26
    invoke-interface {v0, p0, p1, p2}, Lcom/oplus/utrace/utils/ILogger;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_2a
    sget-object v0, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-eqz v0, :cond_34

    sget-boolean v0, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    return v1

    :cond_34
    :goto_34
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_39
    :goto_39
    return v1
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Lcom/oplus/utrace/sdk/ULog;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    if-nez p0, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    invoke-interface {v1, v0, p1}, Lcom/oplus/utrace/utils/ILogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_17
    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    return v0

    :cond_21
    :goto_21
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Lcom/oplus/utrace/sdk/ULog;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    if-nez p0, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    invoke-interface {v1, v0, p1, p2}, Lcom/oplus/utrace/utils/ILogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_17
    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    return v0

    :cond_21
    :goto_21
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Lcom/oplus/utrace/sdk/ULog;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    if-nez p0, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    invoke-interface {v1, v0, p1}, Lcom/oplus/utrace/utils/ILogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_17
    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    return v0

    :cond_21
    :goto_21
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Lcom/oplus/utrace/sdk/ULog;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    if-nez p0, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    invoke-interface {v1, v0, p1, p2}, Lcom/oplus/utrace/utils/ILogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_17
    sget-object v1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    return v0

    :cond_21
    :goto_21
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getMKeepLogcat$utrace_sdk_fullRelease()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    return p0
.end method

.method public final getMLogger$utrace_sdk_fullRelease()Lcom/oplus/utrace/sdk/IULogger;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    return-object p0
.end method

.method public final setMKeepLogcat$utrace_sdk_fullRelease(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/utrace/sdk/ULog;->mKeepLogcat:Z

    return-void
.end method

.method public final setMLogger$utrace_sdk_fullRelease(Lcom/oplus/utrace/sdk/IULogger;)V
    .registers 2

    sput-object p1, Lcom/oplus/utrace/sdk/ULog;->mLogger:Lcom/oplus/utrace/sdk/IULogger;

    return-void
.end method
