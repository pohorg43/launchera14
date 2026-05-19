.class public final Lio/branch/search/e0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/e0$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/e0$a;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Lio/branch/search/c0;

.field public final c:Lio/branch/search/l0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/e0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/e0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/e0;->Companion:Lio/branch/search/e0$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/b5$a;->a:Lio/branch/search/b5$a;

    invoke-static {p1, v0}, Lio/branch/search/b5;->a(Landroid/content/Context;Lio/branch/search/b5$a;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BranchSharedPrefs.get(co…redPrefs.Files.analytics)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/branch/search/d0;

    new-instance v2, Lio/branch/search/p5;

    invoke-direct {v2, p1}, Lio/branch/search/p5;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lio/branch/search/d0;-><init>(Lio/branch/search/p5;)V

    new-instance p1, Lio/branch/search/m0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p1, v2, v3, v2}, Lio/branch/search/m0;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0, v1, p1}, Lio/branch/search/e0;-><init>(Landroid/content/SharedPreferences;Lio/branch/search/c0;Lio/branch/search/l0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lio/branch/search/c0;Lio/branch/search/l0;)V
    .registers 5

    const-string v0, "sharedPrefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsPersistence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offloadManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/e0;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lio/branch/search/e0;->b:Lio/branch/search/c0;

    iput-object p3, p0, Lio/branch/search/e0;->c:Lio/branch/search/l0;

    invoke-virtual {p0}, Lio/branch/search/e0;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IJ)Lh4/j;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "branchKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0, p2, p3, p4}, Lio/branch/search/e0;->a(IJ)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_11

    return-object v0

    :cond_11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "{\"branch_key\":\""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\","

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"timestamp\":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\"analytics\":["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1
    :try_end_3d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_3d} :catch_a9

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    :try_start_46
    invoke-static/range {v1 .. v8}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]}"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lio/branch/search/e0;->c:Lio/branch/search/l0;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/n0;

    invoke-interface {v1}, Lio/branch/search/n0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_7f
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const-wide/16 v1, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_89
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/branch/search/n0;

    invoke-interface {p3}, Lio/branch/search/n0;->a()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_89

    :cond_9b
    invoke-interface {p0, p4, v1, v2}, Lio/branch/search/l0;->a(Ljava/util/Collection;J)Lio/branch/search/k0;

    move-result-object p0

    new-instance p2, Lh4/j;

    invoke-virtual {p0}, Lio/branch/search/k0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_46 .. :try_end_a8} :catch_a9

    return-object p2

    :catch_a9
    return-object v0
.end method

.method public final a(IJ)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/Map<",
            "Lio/branch/search/n0;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/e0;->b:Lio/branch/search/c0;

    invoke-interface {p0}, Lio/branch/search/c0;->a()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/n0;

    invoke-interface {v4}, Lio/branch/search/n0;->a()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    if-nez v7, :cond_2a

    goto :goto_40

    :cond_2a
    if-ge v1, p1, :cond_40

    cmp-long v7, v2, p2

    if-ltz v7, :cond_31

    goto :goto_40

    :cond_31
    invoke-interface {v4}, Lio/branch/search/n0;->c()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_38

    goto :goto_40

    :cond_38
    add-int/lit8 v1, v1, 0x1

    add-long/2addr v2, v5

    new-instance v8, Lh4/j;

    invoke-direct {v8, v4, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    :goto_40
    if-eqz v8, :cond_12

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_46
    invoke-static {v0}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .registers 2

    iget-object p0, p0, Lio/branch/search/e0;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "persistedAnalyticsPayload"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/e0;->c:Lio/branch/search/l0;

    invoke-interface {v0, p1}, Lio/branch/search/l0;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lio/branch/search/e0;->c:Lio/branch/search/l0;

    invoke-interface {v0, p1}, Lio/branch/search/l0;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/branch/search/e0;->b:Lio/branch/search/c0;

    invoke-interface {v2, v1}, Lio/branch/search/c0;->a(Ljava/lang/String;)Z

    goto :goto_17

    :cond_29
    iget-object p0, p0, Lio/branch/search/e0;->c:Lio/branch/search/l0;

    invoke-interface {p0, p1}, Lio/branch/search/l0;->b(Ljava/lang/String;)Lio/branch/search/k0;

    :cond_2e
    return-void
.end method

.method public final a(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/e0;->c:Lio/branch/search/l0;

    invoke-interface {v0, p1}, Lio/branch/search/l0;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lio/branch/search/e0;->c:Lio/branch/search/l0;

    invoke-interface {p0, p1}, Lio/branch/search/l0;->b(Ljava/lang/String;)Lio/branch/search/k0;

    goto :goto_25

    :cond_18
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_25

    iget-object p0, p0, Lio/branch/search/e0;->b:Lio/branch/search/c0;

    invoke-interface {p0, p1, p3, p2}, Lio/branch/search/c0;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_25
    :goto_25
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/e0;->b:Lio/branch/search/c0;

    invoke-interface {p0, p1, p2, p3}, Lio/branch/search/c0;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lio/branch/search/e0;->a:Landroid/content/SharedPreferences;

    const-string v0, "prev_analytics_window_id"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/e0;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "prev_analytics_window_id"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
