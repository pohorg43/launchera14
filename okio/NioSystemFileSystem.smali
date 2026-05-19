.class public Lokio/NioSystemFileSystem;
.super Lokio/JvmSystemFileSystem;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNioSystemFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NioSystemFileSystem.kt\nokio/NioSystemFileSystem\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokio/JvmSystemFileSystem;-><init>()V

    return-void
.end method

.method private final zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;
    .registers 6

    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method


# virtual methods
.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .registers 5

    const-string p0, "source"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p1}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p2}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/nio/file/CopyOption;

    const/4 v0, 0x0

    sget-object v1, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    sget-object v1, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v1, p2, v0

    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_22
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_a .. :try_end_22} :catch_2b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_22} :catch_23

    return-void

    :catch_23
    new-instance p0, Ljava/io/IOException;

    const-string p1, "atomic move not supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2b
    move-exception p0

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/nio/file/NoSuchFileException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .registers 3

    const-string p0, "source"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p2}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    return-void
.end method

.method public final metadataOrNull(Ljava/nio/file/Path;)Lokio/FileMetadata;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "nioPath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_a
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/nio/file/LinkOption;

    sget-object v6, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v3, v5}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v3
    :try_end_18
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_a .. :try_end_18} :catch_71
    .catch Ljava/nio/file/FileSystemException; {:try_start_a .. :try_end_18} :catch_71

    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-static/range {p1 .. p1}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    goto :goto_24

    :cond_23
    move-object v1, v2

    :goto_24
    new-instance v5, Lokio/FileMetadata;

    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v9

    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v10

    if-eqz v1, :cond_38

    sget-object v6, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-static {v6, v1, v7, v4, v2}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/nio/file/Path;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v1

    move-object v11, v1

    goto :goto_39

    :cond_38
    move-object v11, v2

    :goto_39
    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-direct {v0, v1}, Lokio/NioSystemFileSystem;->zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v1

    move-object v13, v1

    goto :goto_4e

    :cond_4d
    move-object v13, v2

    :goto_4e
    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-direct {v0, v1}, Lokio/NioSystemFileSystem;->zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v1

    move-object v14, v1

    goto :goto_5b

    :cond_5a
    move-object v14, v2

    :goto_5b
    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-direct {v0, v1}, Lokio/NioSystemFileSystem;->zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v2

    :cond_65
    move-object v15, v2

    const/16 v16, 0x0

    const/16 v17, 0x80

    const/16 v18, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v18}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :catch_71
    return-object v2
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .registers 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokio/NioSystemFileSystem;->metadataOrNull(Ljava/nio/file/Path;)Lokio/FileMetadata;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "NioSystemFileSystem"

    return-object p0
.end method
