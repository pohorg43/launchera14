.class public abstract Lokio/ForwardingFileSystem;
.super Lokio/FileSystem;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nForwardingFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n1620#2,3:244\n1620#2,3:247\n*S KotlinDebug\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n*L\n166#1:244,3\n174#1:247,3\n*E\n"
    }
.end annotation


# instance fields
.field private final delegate:Lokio/FileSystem;


# direct methods
.method public constructor <init>(Lokio/FileSystem;)V
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokio/FileSystem;-><init>()V

    iput-object p1, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    return-void
.end method


# virtual methods
.method public appendingSink(Lokio/Path;Z)Lokio/Sink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appendingSink"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object p0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->appendingSink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "atomicMove"

    invoke-virtual {p0, p1, v2, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    invoke-virtual {p0, p2, v2, v1}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p2

    iget-object p0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    return-void
.end method

.method public canonicalize(Lokio/Path;)Lokio/Path;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "canonicalize"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1}, Lokio/FileSystem;->canonicalize(Lokio/Path;)Lokio/Path;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public createDirectory(Lokio/Path;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "createDirectory"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object p0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->createDirectory(Lokio/Path;Z)V

    return-void
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "createSymlink"

    invoke-virtual {p0, p1, v2, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    invoke-virtual {p0, p2, v2, v1}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p2

    iget-object p0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->createSymlink(Lokio/Path;Lokio/Path;)V

    return-void
.end method

.method public final delegate()Lokio/FileSystem;
    .registers 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "delegate"
    .end annotation

    iget-object p0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    return-object p0
.end method

.method public delete(Lokio/Path;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "delete"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object p0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    return-void
.end method

.method public list(Lokio/Path;)Ljava/util/List;
    .registers 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "list"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1}, Lokio/FileSystem;->list(Lokio/Path;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/Path;

    invoke-virtual {p0, v2, v1}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2e
    invoke-static {v0}, Li4/s;->m(Ljava/util/List;)V

    return-object v0
.end method

.method public listOrNull(Lokio/Path;)Ljava/util/List;
    .registers 5
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

    const-string v1, "listOrNull"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1}, Lokio/FileSystem;->listOrNull(Lokio/Path;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/Path;

    invoke-virtual {p0, v2, v1}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_32
    invoke-static {v0}, Li4/s;->m(Ljava/util/List;)V

    return-object v0
.end method

.method public listRecursively(Lokio/Path;Z)Lj7/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Z)",
            "Lj7/h<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listRecursively"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1, p2}, Lokio/FileSystem;->listRecursively(Lokio/Path;Z)Lj7/h;

    move-result-object p1

    new-instance p2, Lokio/ForwardingFileSystem$listRecursively$1;

    invoke-direct {p2, p0}, Lokio/ForwardingFileSystem$listRecursively$1;-><init>(Lokio/ForwardingFileSystem;)V

    invoke-static {p1, p2}, Lj7/p;->p(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    return-object p0
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataOrNull"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1}, Lokio/FileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v2

    if-nez v2, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    invoke-virtual {v2}, Lokio/FileMetadata;->getSymlinkTarget()Lokio/Path;

    move-result-object p1

    if-nez p1, :cond_1c

    return-object v2

    :cond_1c
    invoke-virtual {v2}, Lokio/FileMetadata;->getSymlinkTarget()Lokio/Path;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfb

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lokio/FileMetadata;->copy$default(Lokio/FileMetadata;ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILjava/lang/Object;)Lokio/FileMetadata;

    move-result-object p0

    return-object p0
.end method

.method public onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;
    .registers 4

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "functionName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parameterName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;
    .registers 3

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "functionName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "openReadOnly"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object p0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {p0, p1}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    move-result-object p0

    return-object p0
.end method

.method public openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "openReadWrite"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object p0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {p0, p1, p2, p3}, Lokio/FileSystem;->openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;

    move-result-object p0

    return-object p0
.end method

.method public sink(Lokio/Path;Z)Lokio/Sink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sink"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object p0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public source(Lokio/Path;)Lokio/Source;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    iget-object p0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {p0, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-interface {v1}, Lz4/d;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
