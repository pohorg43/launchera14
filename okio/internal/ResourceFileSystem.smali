.class public final Lokio/internal/ResourceFileSystem;
.super Lokio/FileSystem;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/internal/ResourceFileSystem$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nResourceFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n766#2:213\n857#2,2:214\n1549#2:216\n1620#2,3:217\n766#2:220\n857#2,2:221\n1549#2:223\n1620#2,3:224\n*S KotlinDebug\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n*L\n72#1:213\n72#1:214,2\n73#1:216\n73#1:217,3\n88#1:220\n88#1:221,2\n89#1:223\n89#1:224,3\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lokio/internal/ResourceFileSystem$Companion;

.field private static final ROOT:Lokio/Path;


# instance fields
.field private final roots$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lokio/internal/ResourceFileSystem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/internal/ResourceFileSystem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v2, "/"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    sput-object v0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Z)V
    .registers 4

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokio/FileSystem;-><init>()V

    new-instance v0, Lokio/internal/ResourceFileSystem$roots$2;

    invoke-direct {v0, p1}, Lokio/internal/ResourceFileSystem$roots$2;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lokio/internal/ResourceFileSystem;->roots$delegate:Lh4/f;

    if-eqz p2, :cond_1c

    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    :cond_1c
    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lokio/internal/ResourceFileSystem$Companion;
    .registers 1

    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    return-object v0
.end method

.method public static final synthetic access$getROOT$cp()Lokio/Path;
    .registers 1

    sget-object v0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    return-object v0
.end method

.method private final canonicalizeInternal(Lokio/Path;)Lokio/Path;
    .registers 3

    sget-object p0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lokio/Path;->resolve(Lokio/Path;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method private final getRoots()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh4/j<",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lokio/internal/ResourceFileSystem;->roots$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final toRelativePath(Lokio/Path;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->canonicalizeInternal(Lokio/Path;)Lokio/Path;

    move-result-object p0

    sget-object p1, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    invoke-virtual {p0, p1}, Lokio/Path;->relativeTo(Lokio/Path;)Lokio/Path;

    move-result-object p0

    invoke-virtual {p0}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appendingSink(Lokio/Path;Z)Lokio/Sink;
    .registers 3

    const-string p2, "file"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is read-only"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is read-only"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canonicalize(Lokio/Path;)Lokio/Path;
    .registers 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->canonicalizeInternal(Lokio/Path;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public createDirectory(Lokio/Path;Z)V
    .registers 3

    const-string p2, "dir"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is read-only"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is read-only"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Lokio/Path;Z)V
    .registers 3

    const-string p2, "path"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is read-only"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public list(Lokio/Path;)Ljava/util/List;
    .registers 11
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

    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :catch_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/j;

    iget-object v4, v3, Lh4/j;->a:Ljava/lang/Object;

    check-cast v4, Lokio/FileSystem;

    iget-object v3, v3, Lh4/j;->b:Ljava/lang/Object;

    check-cast v3, Lokio/Path;

    :try_start_2b
    invoke-virtual {v3, v0}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/FileSystem;->list(Lokio/Path;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lokio/Path;

    sget-object v8, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-static {v8, v7}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_55
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/Path;

    sget-object v7, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-virtual {v7, v6, v3}, Lokio/internal/ResourceFileSystem$Companion;->removeBase(Lokio/Path;Lokio/Path;)Lokio/Path;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_7a
    invoke-static {v1, v4}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_7d} :catch_17

    const/4 v2, 0x1

    goto :goto_17

    :cond_7f
    if-eqz v2, :cond_86

    invoke-static {v1}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_86
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "file not found: "

    invoke-static {v0, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public listOrNull(Lokio/Path;)Ljava/util/List;
    .registers 10
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

    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/j;

    iget-object v4, v2, Lh4/j;->a:Ljava/lang/Object;

    check-cast v4, Lokio/FileSystem;

    iget-object v2, v2, Lh4/j;->b:Ljava/lang/Object;

    check-cast v2, Lokio/Path;

    invoke-virtual {v2, p1}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/FileSystem;->listOrNull(Lokio/Path;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3f
    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lokio/Path;

    sget-object v7, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-static {v7, v6}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_58
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/Path;

    sget-object v6, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-virtual {v6, v5, v2}, Lokio/internal/ResourceFileSystem$Companion;->removeBase(Lokio/Path;Lokio/Path;)Lokio/Path;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_7d
    move-object v3, v4

    :cond_7e
    if-eqz v3, :cond_17

    invoke-static {v0, v3}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    const/4 v1, 0x1

    goto :goto_17

    :cond_85
    if-eqz v1, :cond_8b

    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    :cond_8b
    return-object v3
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .registers 5

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-static {v0, p1}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/j;

    iget-object v2, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v2, Lokio/FileSystem;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v0, Lokio/Path;

    invoke-virtual {v0, p1}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokio/FileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v0

    if-nez v0, :cond_3a

    goto :goto_1b

    :cond_3a
    return-object v0

    :cond_3b
    return-object v1
.end method

.method public openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .registers 6

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-static {v0, p1}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result v0

    const-string v1, "file not found: "

    if-eqz v0, :cond_42

    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/j;

    iget-object v3, v2, Lh4/j;->a:Ljava/lang/Object;

    check-cast v3, Lokio/FileSystem;

    iget-object v2, v2, Lh4/j;->b:Ljava/lang/Object;

    check-cast v2, Lokio/Path;

    :try_start_2f
    invoke-virtual {v2, v0}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v2

    invoke-virtual {v3, v2}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    move-result-object p0
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_37} :catch_1b

    return-object p0

    :cond_38
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {v1, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {v1, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .registers 4

    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "resources are not writable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sink(Lokio/Path;Z)Lokio/Sink;
    .registers 3

    const-string p2, "file"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is read-only"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public source(Lokio/Path;)Lokio/Source;
    .registers 6

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    invoke-static {v0, p1}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result v0

    const-string v1, "file not found: "

    if-eqz v0, :cond_42

    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/j;

    iget-object v3, v2, Lh4/j;->a:Ljava/lang/Object;

    check-cast v3, Lokio/FileSystem;

    iget-object v2, v2, Lh4/j;->b:Ljava/lang/Object;

    check-cast v2, Lokio/Path;

    :try_start_2f
    invoke-virtual {v2, v0}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v2

    invoke-virtual {v3, v2}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object p0
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_37} :catch_1b

    return-object p0

    :cond_38
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {v1, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-static {v1, p1}, Lokio/a;->a(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
