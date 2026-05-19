.class public final Lio/branch/search/h0$e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/h0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/branch/search/h0$e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/a5;Ljava/io/File;)Lio/branch/search/h0$e;
    .registers 20

    const-string v0, "fileManager"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/io/BufferedReader;

    invoke-virtual/range {p1 .. p2}, Lio/branch/search/a5;->a(Ljava/io/File;)Ljava/io/InputStreamReader;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_17
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "sdk_version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "thread_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ls4/h;->b(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v10

    const-string v0, "System.lineSeparator()"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    invoke-static/range {v9 .. v16}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lio/branch/search/h0$e;

    const-string v1, "sdkVersion"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "threadName"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v7}, Lio/branch/search/h0$e;-><init>(Ljava/io/File;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_17 .. :try_end_5e} :catchall_6b

    const/4 v1, 0x0

    invoke-static {v8, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_63
    :try_start_63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Persisted crash file empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v0

    move-object v1, v0

    :try_start_6d
    throw v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    move-object v2, v0

    invoke-static {v8, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
