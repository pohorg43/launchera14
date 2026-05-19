.class public Le8/y$c;
.super Le8/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/y;->create(Le8/t;Ljava/io/File;)Le8/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/t;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public constructor <init>(Le8/t;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Le8/y$c;->a:Le8/t;

    iput-object p2, p0, Le8/y$c;->b:Ljava/io/File;

    invoke-direct {p0}, Le8/y;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget-object p0, p0, Le8/y$c;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Le8/t;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Le8/y$c;->a:Le8/t;

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object p0, p0, Le8/y$c;->b:Ljava/io/File;

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    invoke-static {v0}, Lf8/c;->e(Ljava/io/Closeable;)V

    return-void

    :catchall_e
    move-exception p0

    invoke-static {v0}, Lf8/c;->e(Ljava/io/Closeable;)V

    throw p0
.end method
