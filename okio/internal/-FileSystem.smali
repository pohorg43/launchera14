.class public final Lokio/internal/-FileSystem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "-FileSystem"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,155:1\n52#2,5:156\n52#2,21:161\n60#2,10:182\n57#2,2:192\n71#2,2:194\n*S KotlinDebug\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n*L\n65#1:156,5\n66#1:161,21\n65#1:182,10\n65#1:192,2\n65#1:194,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final collectRecursively(Lj7/j;Lokio/FileSystem;Li4/h;Lokio/Path;ZZLl4/d;)Ljava/lang/Object;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/j<",
            "-",
            "Lokio/Path;",
            ">;",
            "Lokio/FileSystem;",
            "Li4/h<",
            "Lokio/Path;",
            ">;",
            "Lokio/Path;",
            "ZZ",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move-object/from16 v3, p6

    instance-of v4, v3, Lokio/internal/-FileSystem$collectRecursively$1;

    if-eqz v4, :cond_1b

    move-object v4, v3

    check-cast v4, Lokio/internal/-FileSystem$collectRecursively$1;

    iget v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_1b

    sub-int/2addr v5, v6

    iput v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    goto :goto_20

    :cond_1b
    new-instance v4, Lokio/internal/-FileSystem$collectRecursively$1;

    invoke-direct {v4, v3}, Lokio/internal/-FileSystem$collectRecursively$1;-><init>(Ll4/d;)V

    :goto_20
    iget-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->result:Ljava/lang/Object;

    sget-object v5, Lm4/a;->a:Lm4/a;

    iget v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v6, :cond_7d

    if-eq v6, v10, :cond_5f

    if-eq v6, v9, :cond_3f

    if-ne v6, v8, :cond_37

    invoke-static {v3}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_142

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iget-boolean v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    iget-boolean v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    iget-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lokio/Path;

    iget-object v11, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Ljava/lang/Object;

    check-cast v11, Li4/h;

    iget-object v12, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lokio/FileSystem;

    iget-object v13, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lj7/j;

    :try_start_57
    invoke-static {v3}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5c

    goto/16 :goto_e4

    :catchall_5c
    move-exception v0

    goto/16 :goto_121

    :cond_5f
    iget-boolean v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    iget-boolean v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    iget-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lokio/Path;

    iget-object v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Ljava/lang/Object;

    check-cast v6, Li4/h;

    iget-object v11, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lokio/FileSystem;

    iget-object v12, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lj7/j;

    invoke-static {v3}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move v2, v0

    move v0, v1

    move-object/from16 v1, v16

    goto :goto_a6

    :cond_7d
    invoke-static {v3}, Lh4/l;->b(Ljava/lang/Object;)V

    if-nez v2, :cond_9d

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Ljava/lang/Object;

    move-object/from16 v3, p1

    iput-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Ljava/lang/Object;

    iput-object v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Ljava/lang/Object;

    move/from16 v11, p4

    iput-boolean v11, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    iput-boolean v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    iput v10, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    invoke-virtual {v0, v1, v4}, Lj7/j;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v5, :cond_a3

    return-object v5

    :cond_9d
    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v11, p4

    :cond_a3
    move-object v12, v0

    move v0, v11

    move-object v11, v3

    :goto_a6
    invoke-virtual {v11, v1}, Lokio/FileSystem;->listOrNull(Lokio/Path;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_ae

    sget-object v3, Li4/y;->a:Li4/y;

    :cond_ae
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v10

    if-eqz v13, :cond_12c

    move-object v13, v1

    move v14, v7

    :goto_b7
    if-eqz v0, :cond_cc

    invoke-virtual {v6, v13}, Li4/h;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c0

    goto :goto_cc

    :cond_c0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "symlink cycle at "

    invoke-static {v2, v1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cc
    :goto_cc
    invoke-static {v11, v13}, Lokio/internal/-FileSystem;->symlinkTarget(Lokio/FileSystem;Lokio/Path;)Lokio/Path;

    move-result-object v15

    if-nez v15, :cond_128

    if-nez v0, :cond_d6

    if-nez v14, :cond_12c

    :cond_d6
    invoke-virtual {v6, v13}, Li4/h;->h(Ljava/lang/Object;)V

    :try_start_d9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_123

    move-object v13, v12

    move-object v12, v11

    move-object v11, v6

    move-object v6, v1

    move v1, v0

    move v0, v2

    move-object v2, v3

    :cond_e4
    :goto_e4
    :try_start_e4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/Path;

    if-eqz v0, :cond_f4

    move v14, v10

    goto :goto_f5

    :cond_f4
    move v14, v7

    :goto_f5
    iput-object v13, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Ljava/lang/Object;

    iput-object v12, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Ljava/lang/Object;

    iput-object v11, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Ljava/lang/Object;

    iput-object v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Ljava/lang/Object;

    iput-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$4:Ljava/lang/Object;

    iput-boolean v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    iput-boolean v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    iput v9, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    move-object/from16 p0, v13

    move-object/from16 p1, v12

    move-object/from16 p2, v11

    move-object/from16 p3, v3

    move/from16 p4, v1

    move/from16 p5, v14

    move-object/from16 p6, v4

    invoke-static/range {p0 .. p6}, Lokio/internal/-FileSystem;->collectRecursively(Lj7/j;Lokio/FileSystem;Li4/h;Lokio/Path;ZZLl4/d;)Ljava/lang/Object;

    move-result-object v3
    :try_end_117
    .catchall {:try_start_e4 .. :try_end_117} :catchall_5c

    if-ne v3, v5, :cond_e4

    return-object v5

    :cond_11a
    invoke-virtual {v11}, Li4/h;->q()Ljava/lang/Object;

    move v2, v0

    move-object v1, v6

    move-object v12, v13

    goto :goto_12c

    :goto_121
    move-object v6, v11

    goto :goto_124

    :catchall_123
    move-exception v0

    :goto_124
    invoke-virtual {v6}, Li4/h;->q()Ljava/lang/Object;

    throw v0

    :cond_128
    add-int/lit8 v14, v14, 0x1

    move-object v13, v15

    goto :goto_b7

    :cond_12c
    :goto_12c
    if-eqz v2, :cond_145

    const/4 v0, 0x0

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$4:Ljava/lang/Object;

    iput v8, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    invoke-virtual {v12, v1, v4}, Lj7/j;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_142

    return-object v5

    :cond_142
    :goto_142
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_145
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method

.method public static final commonCopy(Lokio/FileSystem;Lokio/Path;Lokio/Path;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_14
    invoke-virtual {p0, p2}, Lokio/FileSystem;->sink(Lokio/Path;)Lokio/Sink;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_51

    :try_start_1c
    invoke-interface {p0, p1}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_2e

    if-eqz p0, :cond_2c

    :try_start_26
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_3b

    :cond_2c
    :goto_2c
    move-object p0, v0

    goto :goto_3b

    :catchall_2e
    move-exception p2

    if-eqz p0, :cond_39

    :try_start_31
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception p0

    :try_start_36
    invoke-static {p2, p0}, Le2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    move-object p0, p2

    move-object p2, v0

    :goto_3b
    if-nez p0, :cond_50

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_51

    if-eqz p1, :cond_5f

    :try_start_4a
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_5f

    :catchall_4e
    move-exception v0

    goto :goto_5f

    :cond_50
    :try_start_50
    throw p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p0

    if-eqz p1, :cond_5c

    :try_start_54
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p1

    invoke-static {p0, p1}, Le2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :cond_5f
    :goto_5f
    if-nez v0, :cond_65

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-void

    :cond_65
    throw v0
.end method

.method public static final commonCreateDirectories(Lokio/FileSystem;Lokio/Path;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Li4/h;

    invoke-direct {v0}, Li4/h;-><init>()V

    move-object v1, p1

    :goto_10
    if-eqz v1, :cond_20

    invoke-virtual {p0, v1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v0, v1}, Li4/h;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokio/Path;->parent()Lokio/Path;

    move-result-object v1

    goto :goto_10

    :cond_20
    if-eqz p2, :cond_40

    invoke-virtual {v0}, Li4/h;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_29

    goto :goto_40

    :cond_29
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokio/Path;

    invoke-virtual {p0, p2}, Lokio/FileSystem;->createDirectory(Lokio/Path;)V

    goto :goto_44

    :cond_54
    return-void
.end method

.method public static final commonDeleteRecursively(Lokio/FileSystem;Lokio/Path;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;-><init>(Lokio/FileSystem;Lokio/Path;Ll4/d;)V

    invoke-static {v0}, Lp4/c;->d(Lkotlin/jvm/functions/Function2;)Lj7/h;

    move-result-object p1

    check-cast p1, Lj7/k;

    invoke-virtual {p1}, Lj7/k;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/Path;

    if-eqz p2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    invoke-virtual {p0, v0, v1}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    goto :goto_1a

    :cond_35
    return-void
.end method

.method public static final commonExists(Lokio/FileSystem;Lokio/Path;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/FileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static final commonListRecursively(Lokio/FileSystem;Lokio/Path;Z)Lj7/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            "Z)",
            "Lj7/h<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/internal/-FileSystem$commonListRecursively$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Lokio/internal/-FileSystem$commonListRecursively$1;-><init>(Lokio/Path;Lokio/FileSystem;ZLl4/d;)V

    invoke-static {v0}, Lp4/c;->d(Lkotlin/jvm/functions/Function2;)Lj7/h;

    move-result-object p0

    return-object p0
.end method

.method public static final commonMetadata(Lokio/FileSystem;Lokio/Path;)Lokio/FileMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/FileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object p0

    if-eqz p0, :cond_11

    return-object p0

    :cond_11
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "no such file: "

    invoke-static {v0, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final symlinkTarget(Lokio/FileSystem;Lokio/Path;)Lokio/Path;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lokio/FileMetadata;->getSymlinkTarget()Lokio/Path;

    move-result-object p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    return-object p0

    :cond_16
    invoke-virtual {p1}, Lokio/Path;->parent()Lokio/Path;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lokio/Path;->resolve(Lokio/Path;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method
