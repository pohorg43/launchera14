.class public Lokio/JvmSystemFileSystem;
.super Lokio/FileSystem;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmSystemFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmSystemFileSystem.kt\nokio/JvmSystemFileSystem\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,158:1\n11400#2,3:159\n*S KotlinDebug\n*F\n+ 1 JvmSystemFileSystem.kt\nokio/JvmSystemFileSystem\n*L\n77#1:159,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokio/FileSystem;-><init>()V

    return-void
.end method

.method private final list(Lokio/Path;Z)Ljava/util/List;
    .registers 6
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

    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    if-eqz p2, :cond_2a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1e

    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p2, "no such file: "

    invoke-static {p2, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    new-instance p0, Ljava/io/IOException;

    const-string p2, "failed to list "

    invoke-static {p2, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    const/4 p0, 0x0

    return-object p0

    :cond_2c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    array-length v1, v0

    :goto_33
    if-ge p2, v1, :cond_44

    aget-object v2, v0, p2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_33

    :cond_44
    invoke-static {p0}, Li4/s;->m(Ljava/util/List;)V

    return-object p0
.end method

.method private final requireCreate(Lokio/Path;)V
    .registers 3

    invoke-virtual {p0, p1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final requireExist(Lokio/Path;)V
    .registers 3

    invoke-virtual {p0, p1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public appendingSink(Lokio/Path;Z)Lokio/Sink;
    .registers 4

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    invoke-direct {p0, p1}, Lokio/JvmSystemFileSystem;->requireExist(Lokio/Path;)V

    :cond_a
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lokio/Okio;->sink(Ljava/io/File;Z)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .registers 5

    const-string p0, "source"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p2}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_19

    return-void

    :cond_19
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to move "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canonicalize(Lokio/Path;)Lokio/Path;
    .registers 5

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_20

    sget-object p1, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    move-result-object p0

    return-object p0

    :cond_20
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "no such file"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createDirectory(Lokio/Path;Z)V
    .registers 5

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0, p1}, Lokio/JvmSystemFileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lokio/FileMetadata;->isDirectory()Z

    move-result p0

    if-ne p0, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    if-eqz v0, :cond_3b

    if-nez p2, :cond_24

    return-void

    :cond_24
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

    :cond_3b
    new-instance p0, Ljava/io/IOException;

    const-string p2, "failed to create directory: "

    invoke-static {p2, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    return-void
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .registers 3

    const-string p0, "source"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "unsupported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public delete(Lokio/Path;Z)V
    .registers 4

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p0

    if-nez p0, :cond_37

    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2a

    if-nez p2, :cond_1e

    goto :goto_36

    :cond_1e
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p2, "no such file: "

    invoke-static {p2, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    new-instance p0, Ljava/io/IOException;

    const-string p2, "failed to delete "

    invoke-static {p2, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    :goto_36
    return-void

    :cond_37
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

    invoke-direct {p0, p1, v0}, Lokio/JvmSystemFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

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

    invoke-direct {p0, p1, v0}, Lokio/JvmSystemFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .registers 14

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    if-nez v1, :cond_2f

    if-nez v2, :cond_2f

    const-wide/16 v7, 0x0

    cmp-long p1, v3, v7

    if-nez p1, :cond_2f

    cmp-long p1, v5, v7

    if-nez p1, :cond_2f

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2f

    const/4 p0, 0x0

    return-object p0

    :cond_2f
    new-instance p0, Lokio/FileMetadata;

    const/4 p1, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-object v10, v11

    invoke-direct/range {v0 .. v10}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .registers 4

    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lokio/JvmFileHandle;

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p1

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lokio/JvmFileHandle;-><init>(ZLjava/io/RandomAccessFile;)V

    return-object p0
.end method

.method public openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .registers 6

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_d

    if-nez p3, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    move v1, v0

    :goto_e
    if-eqz v1, :cond_2b

    if-eqz p2, :cond_15

    invoke-direct {p0, p1}, Lokio/JvmSystemFileSystem;->requireCreate(Lokio/Path;)V

    :cond_15
    if-eqz p3, :cond_1a

    invoke-direct {p0, p1}, Lokio/JvmSystemFileSystem;->requireExist(Lokio/Path;)V

    :cond_1a
    new-instance p0, Lokio/JvmFileHandle;

    new-instance p2, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p1

    const-string p3, "rw"

    invoke-direct {p2, p1, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lokio/JvmFileHandle;-><init>(ZLjava/io/RandomAccessFile;)V

    return-object p0

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot require mustCreate and mustExist at the same time."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sink(Lokio/Path;Z)Lokio/Sink;
    .registers 4

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    invoke-direct {p0, p1}, Lokio/JvmSystemFileSystem;->requireCreate(Lokio/Path;)V

    :cond_a
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public source(Lokio/Path;)Lokio/Source;
    .registers 2

    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "JvmSystemFileSystem"

    return-object p0
.end method
