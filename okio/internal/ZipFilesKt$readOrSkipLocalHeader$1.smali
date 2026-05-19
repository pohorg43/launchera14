.class final Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipFilesKt;->readOrSkipLocalHeader(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $createdAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $lastAccessedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $lastModifiedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $this_readOrSkipLocalHeader:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->$this_readOrSkipLocalHeader:Lokio/BufferedSource;

    iput-object p2, p0, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->$lastModifiedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->$lastAccessedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->$createdAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->invoke(IJ)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(IJ)V
    .registers 13

    const/16 v0, 0x5455

    if-ne p1, v0, :cond_7f

    const-wide/16 v0, 0x1

    cmp-long p1, p2, v0

    const-string v2, "bad zip: extended timestamp extra too short"

    if-ltz p1, :cond_79

    iget-object p1, p0, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->$this_readOrSkipLocalHeader:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1c

    move v3, v5

    goto :goto_1d

    :cond_1c
    move v3, v4

    :goto_1d
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    move v6, v4

    :goto_25
    const/4 v7, 0x4

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_2a

    move v4, v5

    :cond_2a
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->$this_readOrSkipLocalHeader:Lokio/BufferedSource;

    if-eqz v3, :cond_30

    const-wide/16 v0, 0x5

    :cond_30
    const-wide/16 v7, 0x4

    if-eqz v6, :cond_35

    add-long/2addr v0, v7

    :cond_35
    if-eqz v4, :cond_38

    add-long/2addr v0, v7

    :cond_38
    cmp-long p2, p2, v0

    if-ltz p2, :cond_73

    const-wide/16 p2, 0x3e8

    if-eqz v3, :cond_4e

    iget-object v0, p0, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->$lastModifiedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-interface {p1}, Lokio/BufferedSource;->readIntLe()I

    move-result p1

    int-to-long v1, p1

    mul-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_4e
    if-eqz v6, :cond_60

    iget-object p1, p0, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->$lastAccessedAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->$this_readOrSkipLocalHeader:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_60
    if-eqz v4, :cond_7f

    iget-object p1, p0, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->$createdAtMillis:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;->$this_readOrSkipLocalHeader:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    move-result p0

    int-to-long v0, p0

    mul-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_7f

    :cond_73
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_79
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7f
    :goto_7f
    return-void
.end method
