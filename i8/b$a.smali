.class public final Li8/b$a;
.super Lokio/ForwardingSink;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .registers 2

    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    iget-wide v0, p0, Li8/b$a;->a:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Li8/b$a;->a:J

    return-void
.end method
