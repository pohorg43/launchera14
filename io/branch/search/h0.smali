.class public final Lio/branch/search/h0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/h0$c;,
        Lio/branch/search/h0$d;,
        Lio/branch/search/h0$a;,
        Lio/branch/search/h0$f;,
        Lio/branch/search/h0$e;,
        Lio/branch/search/h0$b;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/h0$b;


# instance fields
.field public a:Lio/branch/search/h0$d;

.field public final b:Lio/branch/search/a5;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/h0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/h0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/h0;->Companion:Lio/branch/search/h0$b;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/a5;)V
    .registers 3

    const-string v0, "fileManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/h0;->b:Lio/branch/search/a5;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lio/branch/search/h0;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/h0;->Companion:Lio/branch/search/h0$b;

    invoke-virtual {v0, p0}, Lio/branch/search/h0$b;->a(Landroid/content/Context;)Lio/branch/search/h0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lio/branch/search/KBranchRemoteConfiguration;)Lio/branch/search/h0$c;
    .registers 3

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->h()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/branch/search/h0;->a(Ljava/lang/String;)Lio/branch/search/h0$c;

    move-result-object p0

    goto :goto_14

    :cond_f
    new-instance p0, Lio/branch/search/h0$a;

    invoke-direct {p0}, Lio/branch/search/h0$a;-><init>()V

    :goto_14
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lio/branch/search/h0$c;
    .registers 4

    iget-object v0, p0, Lio/branch/search/h0;->a:Lio/branch/search/h0$d;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lio/branch/search/h0$d;->a()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_17

    goto :goto_1e

    :cond_17
    new-instance v0, Lio/branch/search/h0$d;

    invoke-direct {v0, p1}, Lio/branch/search/h0$d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/h0;->a:Lio/branch/search/h0$d;

    :goto_1e
    return-object v0
.end method

.method public final a()V
    .registers 7

    iget-object v0, p0, Lio/branch/search/h0;->b:Lio/branch/search/a5;

    invoke-virtual {v0}, Lio/branch/search/a5;->b()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    iget-object v4, p0, Lio/branch/search/h0;->b:Lio/branch/search/a5;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "file.name"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lio/branch/search/a5;->a(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return-void
.end method

.method public final a(JLjava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    const-string v0, "t"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/PrintWriter;

    iget-object p0, p0, Lio/branch/search/h0;->b:Lio/branch/search/a5;

    sget-object v1, Lio/branch/search/h0;->Companion:Lio/branch/search/h0$b;

    invoke-static {v1}, Lio/branch/search/h0$b;->a(Lio/branch/search/h0$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/branch/search/a5;->b(Ljava/lang/String;)Ljava/io/OutputStreamWriter;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :try_start_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"timestamp\":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\"sdk_version\":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "3.1.2"

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\"thread_name\":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_75
    .catchall {:try_start_1b .. :try_end_75} :catchall_7a

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_7a
    move-exception p0

    :try_start_7b
    throw p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p1

    invoke-static {v0, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final a(Lio/branch/search/KBranchRemoteConfiguration;Lio/branch/search/h0$f;)V
    .registers 4

    const-string v0, "remoteConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lio/branch/search/h0;->a(Lio/branch/search/KBranchRemoteConfiguration;)Lio/branch/search/h0$c;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/branch/search/h0;->a(Lio/branch/search/h0$f;Lio/branch/search/h0$c;)V

    goto :goto_24

    :cond_18
    invoke-virtual {p0}, Lio/branch/search/h0;->a()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p0

    const-string p1, "CrashHelper.handlePendingCrashes"

    const-string p2, "Error on handling pending crashes"

    invoke-static {p1, p2, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_24
    return-void
.end method

.method public final a(Lio/branch/search/h0$f;Lio/branch/search/h0$c;)V
    .registers 10

    const-string v0, "file.name"

    iget-object v1, p0, Lio/branch/search/h0;->b:Lio/branch/search/a5;

    invoke-virtual {v1}, Lio/branch/search/a5;->b()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_41

    aget-object v4, v1, v3

    :try_start_e
    sget-object v5, Lio/branch/search/h0$e;->Companion:Lio/branch/search/h0$e$a;

    iget-object v6, p0, Lio/branch/search/h0;->b:Lio/branch/search/a5;

    invoke-virtual {v5, v6, v4}, Lio/branch/search/h0$e$a;->a(Lio/branch/search/a5;Ljava/io/File;)Lio/branch/search/h0$e;

    move-result-object v5

    invoke-interface {p2, v5}, Lio/branch/search/h0$c;->a(Lio/branch/search/h0$e;)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {p1, v5}, Lio/branch/search/h0$f;->a(Lio/branch/search/h0$e;)V

    :cond_1f
    iget-object v5, p0, Lio/branch/search/h0;->b:Lio/branch/search/a5;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lio/branch/search/a5;->a(Ljava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_2c

    goto :goto_3e

    :catch_2c
    move-exception v5

    const-string v6, "CrashHelper.loadCrashes"

    invoke-static {v6, v5}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v5, p0, Lio/branch/search/h0;->b:Lio/branch/search/a5;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lio/branch/search/a5;->a(Ljava/lang/String;)Z

    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_41
    return-void
.end method
