.class public final Lk3/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/io/Closeable;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_14

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "close exception:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CloseUtils"

    invoke-static {v0, p0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void
.end method
