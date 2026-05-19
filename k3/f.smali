.class public final Lk3/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/io/File;)J
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_e

    goto :goto_2c

    :cond_e
    const/4 v2, 0x0

    array-length v3, p0

    :goto_10
    if-ge v2, v3, :cond_2c

    aget-object v4, p0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_26

    const-string v5, "file"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lk3/f;->a(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_2a

    :cond_26
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_2a
    add-long/2addr v0, v4

    goto :goto_10

    :cond_2c
    :goto_2c
    return-wide v0
.end method

.method public static final b(Ljava/io/File;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_30

    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_30

    :cond_14
    const/4 v1, 0x0

    array-length v2, v0

    :cond_16
    :goto_16
    if-ge v1, v2, :cond_30

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_16

    :cond_26
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {v3}, Lk3/f;->b(Ljava/io/File;)V

    goto :goto_16

    :cond_30
    :goto_30
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method
