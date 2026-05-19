.class public Le8/y$b;
.super Le8/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/y;->create(Le8/t;[BII)Le8/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/t;

.field public final synthetic b:I

.field public final synthetic c:[B

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Le8/t;I[BI)V
    .registers 5

    iput-object p1, p0, Le8/y$b;->a:Le8/t;

    iput p2, p0, Le8/y$b;->b:I

    iput-object p3, p0, Le8/y$b;->c:[B

    iput p4, p0, Le8/y$b;->d:I

    invoke-direct {p0}, Le8/y;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget p0, p0, Le8/y$b;->b:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public contentType()Le8/t;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Le8/y$b;->a:Le8/t;

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Le8/y$b;->c:[B

    iget v1, p0, Le8/y$b;->d:I

    iget p0, p0, Le8/y$b;->b:I

    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    return-void
.end method
