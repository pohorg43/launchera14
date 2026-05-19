.class public Le8/y$a;
.super Le8/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/y;->create(Le8/t;Lokio/ByteString;)Le8/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/t;

.field public final synthetic b:Lokio/ByteString;


# direct methods
.method public constructor <init>(Le8/t;Lokio/ByteString;)V
    .registers 3

    iput-object p1, p0, Le8/y$a;->a:Le8/t;

    iput-object p2, p0, Le8/y$a;->b:Lokio/ByteString;

    invoke-direct {p0}, Le8/y;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Le8/y$a;->b:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public contentType()Le8/t;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Le8/y$a;->a:Le8/t;

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Le8/y$a;->b:Lokio/ByteString;

    invoke-interface {p1, p0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    return-void
.end method
