.class public Lio/branch/search/x5$a;
.super Le8/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/x5;->a(Le8/y;Ljava/lang/String;)Le8/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/y;

.field public final synthetic b:[B


# direct methods
.method public constructor <init>(Lio/branch/search/x5;Le8/y;[B)V
    .registers 4

    iput-object p2, p0, Lio/branch/search/x5$a;->a:Le8/y;

    iput-object p3, p0, Lio/branch/search/x5$a;->b:[B

    invoke-direct {p0}, Le8/y;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget-object p0, p0, Lio/branch/search/x5$a;->b:[B

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public contentType()Le8/t;
    .registers 1

    iget-object p0, p0, Lio/branch/search/x5$a;->a:Le8/y;

    invoke-virtual {p0}, Le8/y;->contentType()Le8/t;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/x5$a;->b:[B

    invoke-interface {p1, p0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/Sink;->close()V

    return-void
.end method
