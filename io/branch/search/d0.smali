.class public final Lio/branch/search/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/d0$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/d0$a;


# instance fields
.field public final a:Lio/branch/search/a5;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/d0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/d0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/d0;->Companion:Lio/branch/search/d0$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/a5;)V
    .registers 3

    const-string v0, "fileManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/d0;->a:Lio/branch/search/a5;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/p5;)V
    .registers 4

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/a5;->Companion:Lio/branch/search/a5$a;

    const-string v1, "bnc_persisted_analytics"

    invoke-virtual {v0, p1, v1}, Lio/branch/search/a5$a;->a(Lio/branch/search/p5;Ljava/lang/String;)Lio/branch/search/a5;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/branch/search/d0;-><init>(Lio/branch/search/a5;)V

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/d0;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/d0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "name"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "."

    invoke-static {p0, p1, p0}, Lk7/q;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/n0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/d0;->a:Lio/branch/search/a5;

    invoke-virtual {v0}, Lio/branch/search/a5;->b()[Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_26

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lio/branch/search/d0;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lio/branch/search/o0;

    new-instance v7, Lio/branch/search/d0$b;

    invoke-direct {v7, v5, p0}, Lio/branch/search/d0$b;-><init>(Ljava/lang/String;Lio/branch/search/d0;)V

    invoke-direct {v6, v5, v4, v7}, Lio/branch/search/o0;-><init>(Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_26
    new-instance p0, Lio/branch/search/d0$c;

    invoke-direct {p0}, Lio/branch/search/d0$c;-><init>()V

    invoke-static {v1, p0}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lio/branch/search/d0;->a:Lio/branch/search/a5;

    invoke-virtual {p0, p1}, Lio/branch/search/d0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/branch/search/a5;->a(Ljava/lang/String;)Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_28

    :catch_10
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnalyticsPersistenceHelper.deletePayload"

    invoke-static {v0, p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p0}, Lio/branch/search/d0;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p3, :cond_21

    invoke-static {v0}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/branch/search/n0;

    invoke-interface {p3}, Lio/branch/search/n0;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lio/branch/search/d0;->a(Ljava/lang/String;)Z

    :cond_21
    iget-object p3, p0, Lio/branch/search/d0;->a:Lio/branch/search/a5;

    invoke-virtual {p0, p1}, Lio/branch/search/d0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lio/branch/search/a5;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2a} :catch_2c

    const/4 p0, 0x1

    goto :goto_36

    :catch_2c
    move-exception p2

    const-string p3, "AnalyticsPersistenceHelper.writePayloadToInternalStorage"

    invoke-static {p3, p2}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lio/branch/search/d0;->a(Ljava/lang/String;)Z

    const/4 p0, 0x0

    :goto_36
    return p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lio/branch/search/d0;->a:Lio/branch/search/a5;

    invoke-virtual {p0, p1}, Lio/branch/search/d0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/branch/search/a5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_23

    :catch_b
    move-exception v0

    const-string v1, "fileName = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lio/branch/search/d0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnalyticsPersistenceHelper.readPayloadFromInternalStorage"

    invoke-static {p1, p0, v0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_23
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, ".txt"

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
