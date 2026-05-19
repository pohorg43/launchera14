.class public final Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;

.field private static final NUM_5:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CallerTraceUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;->INSTANCE:Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getCaller(Ljava/lang/String;[Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p1, :cond_5

    const-string p0, "null"

    return-object p0

    :cond_5
    const-string v0, "\n"

    invoke-static {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    :try_start_b
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    :goto_11
    if-ge v1, p2, :cond_1e

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1e
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_21

    goto :goto_26

    :catchall_21
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_26
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4d

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCaller error:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CallerTraceUtil"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "builder.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getCallerTrace(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;->getCaller(Ljava/lang/String;[Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
