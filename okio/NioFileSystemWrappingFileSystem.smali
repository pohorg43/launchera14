.class public final Lokio/NioFileSystemWrappingFileSystem;
.super Lokio/NioSystemFileSystem;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNioFileSystemWrappingFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NioFileSystemWrappingFileSystem.kt\nokio/NioFileSystemWrappingFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,192:1\n1620#2,3:193\n1#3:196\n37#4,2:197\n37#4,2:199\n37#4,2:201\n*S KotlinDebug\n*F\n+ 1 NioFileSystemWrappingFileSystem.kt\nokio/NioFileSystemWrappingFileSystem\n*L\n77#1:193,3\n104#1:197,2\n125#1:199,2\n138#1:201,2\n*E\n"
    }
.end annotation


# instance fields
.field private final nioFileSystem:Ljava/nio/file/FileSystem;


# direct methods
.method public constructor <init>(Ljava/nio/file/FileSystem;)V
    .registers 3

    const-string v0, "nioFileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokio/NioSystemFileSystem;-><init>()V

    iput-object p1, p0, Lokio/NioFileSystemWrappingFileSystem;->nioFileSystem:Ljava/nio/file/FileSystem;

    return-void
.end method

.method private final list(Lokio/Path;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Z)",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_6
    const-string v2, "*"

    const-string v3, "<this>"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "glob"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_4d

    :try_start_16
    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_46

    :try_start_1f
    invoke-static {v2, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_4d

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/file/Path;

    sget-object v2, Lokio/Path;->Companion:Lokio/Path$Companion;

    const/4 v3, 0x1

    invoke-static {v2, p2, v0, v3, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/nio/file/Path;ZILjava/lang/Object;)Lokio/Path;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_42
    invoke-static {p0}, Li4/s;->m(Ljava/util/List;)V

    return-object p0

    :catchall_46
    move-exception v3

    :try_start_47
    throw v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v4

    :try_start_49
    invoke-static {v2, v3}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_4d

    :catch_4d
    if-eqz p2, :cond_75

    new-array p2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/LinkOption;

    invoke-static {p0, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    if-nez p0, :cond_69

    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p2, "no such file: "

    invoke-static {p2, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    new-instance p0, Ljava/io/IOException;

    const-string p2, "failed to list "

    invoke-static {p2, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    return-object v1
.end method

.method private final resolve(Lokio/Path;)Ljava/nio/file/Path;
    .registers 3

    iget-object p0, p0, Lokio/NioFileSystemWrappingFileSystem;->nioFileSystem:Ljava/nio/file/FileSystem;

    invoke-virtual {p1}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p1, "getPath(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public appendingSink(Lokio/Path;Z)Lokio/Sink;
    .registers 6

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Li4/o;->c()Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    move-object v2, v0

    check-cast v2, Lj4/a;

    invoke-virtual {v2, v1}, Lj4/a;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_18

    sget-object p2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v2, p2}, Lj4/a;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-static {v0}, Li4/o;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/nio/file/StandardOpenOption;

    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/StandardOpenOption;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/OpenOption;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    const-string p1, "newOutputStream(this, *options)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .registers 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p2}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 p2, 0x2

    new-array v0, p2, [Ljava/nio/file/CopyOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v2, v0, v1

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/CopyOption;

    invoke-static {p1, p0, p2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p1, "move(this, target, *options)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_a .. :try_end_2e} :catch_37
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "atomic move not supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_37
    move-exception p0

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/nio/file/NoSuchFileException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canonicalize(Lokio/Path;)Lokio/Path;
    .registers 6

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-interface {p0, v2}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object p0

    const-string v2, "toRealPath(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/nio/file/Path;ZILjava/lang/Object;)Lokio/Path;

    move-result-object p0
    :try_end_1d
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_5 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "no such file: "

    invoke-static {v0, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createDirectory(Lokio/Path;Z)V
    .registers 6

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lokio/FileMetadata;->isDirectory()Z

    move-result v0

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    if-eqz v1, :cond_31

    if-nez p2, :cond_1a

    goto :goto_31

    :cond_1a
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

    :cond_31
    :goto_31
    :try_start_31
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p0

    new-array p2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, p2}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p2, "createDirectory(this, *attributes)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p0

    if-eqz v1, :cond_4b

    return-void

    :cond_4b
    new-instance p2, Ljava/io/IOException;

    const-string v0, "failed to create directory: "

    invoke-static {v0, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p2}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, p0, p2}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p1, "createSymbolicLink(this, target, *attributes)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public delete(Lokio/Path;Z)V
    .registers 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p0

    :try_start_f
    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_12
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_f .. :try_end_12} :catch_2f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_31

    :catch_13
    const/4 p2, 0x0

    new-array v0, p2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/LinkOption;

    invoke-static {p0, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_31

    :cond_23
    new-instance p0, Ljava/io/IOException;

    const-string p2, "failed to delete "

    invoke-static {p2, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2f
    if-nez p2, :cond_32

    :goto_31
    return-void

    :cond_32
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p2, "no such file: "

    invoke-static {p2, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string p1, "interrupted"

    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public list(Lokio/Path;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokio/NioFileSystemWrappingFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public listOrNull(Lokio/Path;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokio/NioFileSystemWrappingFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .registers 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokio/NioSystemFileSystem;->metadataOrNull(Ljava/nio/file/Path;)Lokio/FileMetadata;

    move-result-object p0

    return-object p0
.end method

.method public openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .registers 5

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_15
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_5 .. :try_end_15} :catch_1e

    new-instance p1, Lokio/NioFileSystemFileHandle;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v2, p0}, Lokio/NioFileSystemFileHandle;-><init>(ZLjava/nio/channels/FileChannel;)V

    return-object p1

    :catch_1e
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "no such file: "

    invoke-static {v0, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .registers 9

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_e

    if-nez p3, :cond_c

    goto :goto_e

    :cond_c
    move v2, v0

    goto :goto_f

    :cond_e
    :goto_e
    move v2, v1

    :goto_f
    if-eqz v2, :cond_61

    invoke-static {}, Li4/o;->c()Ljava/util/List;

    move-result-object v2

    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    move-object v4, v2

    check-cast v4, Lj4/a;

    invoke-virtual {v4, v3}, Lj4/a;->add(Ljava/lang/Object;)Z

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v4, v3}, Lj4/a;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2a

    sget-object p2, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v4, p2}, Lj4/a;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_2a
    if-nez p3, :cond_31

    sget-object p2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v4, p2}, Lj4/a;->add(Ljava/lang/Object;)Z

    :cond_31
    :goto_31
    invoke-static {v2}, Li4/o;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    :try_start_35
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p0

    new-array p3, v0, [Ljava/nio/file/StandardOpenOption;

    invoke-interface {p2, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/StandardOpenOption;

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_4c
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_35 .. :try_end_4c} :catch_55

    new-instance p1, Lokio/NioFileSystemFileHandle;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v1, p0}, Lokio/NioFileSystemFileHandle;-><init>(ZLjava/nio/channels/FileChannel;)V

    return-object p1

    :catch_55
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p2, "no such file: "

    invoke-static {p2, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot require mustCreate and mustExist at the same time."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sink(Lokio/Path;Z)Lokio/Sink;
    .registers 5

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Li4/o;->c()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_13

    sget-object p2, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    move-object v1, v0

    check-cast v1, Lj4/a;

    invoke-virtual {v1, p2}, Lj4/a;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {v0}, Li4/o;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    :try_start_17
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/StandardOpenOption;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/StandardOpenOption;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/OpenOption;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    const-string p2, "newOutputStream(this, *options)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p0
    :try_end_3f
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_17 .. :try_end_3f} :catch_40

    return-object p0

    :catch_40
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p2, "no such file: "

    invoke-static {p2, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public source(Lokio/Path;)Lokio/Source;
    .registers 4

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    const-string v0, "newInputStream(this, *options)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0
    :try_end_1f
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_5 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "no such file: "

    invoke-static {v0, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lokio/NioFileSystemWrappingFileSystem;->nioFileSystem:Ljava/nio/file/FileSystem;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-interface {p0}, Lz4/d;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
