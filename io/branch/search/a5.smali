.class public final Lio/branch/search/a5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/a5$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/a5$a;


# instance fields
.field public final a:Lh4/f;

.field public final b:Ljava/io/File;

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/a5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/a5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/a5;->Companion:Lio/branch/search/a5$a;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    const-string v0, "rootDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/a5;->b:Ljava/io/File;

    iput-object p2, p0, Lio/branch/search/a5;->c:Ljava/lang/String;

    new-instance p1, Lio/branch/search/a5$b;

    invoke-direct {p1, p0}, Lio/branch/search/a5$b;-><init>(Lio/branch/search/a5;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/a5;->a:Lh4/f;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/a5;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lio/branch/search/a5;->b:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic b(Lio/branch/search/a5;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/a5;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lio/branch/search/a5;->a:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public final a(Ljava/io/File;)Ljava/io/InputStreamReader;
    .registers 3

    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/branch/search/a5;->b(Ljava/lang/String;)Ljava/io/OutputStreamWriter;

    move-result-object p0

    :try_start_e
    invoke-virtual {p0, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_16

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    throw p1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p2

    invoke-static {p0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/a5;->a()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Ls4/f;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/String;)Ljava/io/OutputStreamWriter;
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lio/branch/search/a5;->a()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Ls4/f;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public final b(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lio/branch/search/a5;->a(Ljava/io/File;)Ljava/io/InputStreamReader;

    move-result-object p0

    :try_start_4
    instance-of p1, p0, Ljava/io/BufferedReader;

    if-eqz p1, :cond_c

    move-object p1, p0

    check-cast p1, Ljava/io/BufferedReader;

    goto :goto_13

    :cond_c
    new-instance p1, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {p1, p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_13
    invoke-static {p1}, Ls4/h;->c(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_1c
    move-exception p1

    :try_start_1d
    throw p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    invoke-static {p0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()[Ljava/io/File;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/a5;->a()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_b

    goto :goto_e

    :cond_b
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    :goto_e
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/a5;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Ls4/f;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/branch/search/a5;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
