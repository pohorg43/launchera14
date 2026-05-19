.class public final Lh8/e;
.super Ljava/lang/RuntimeException;
.source ""


# instance fields
.field public a:Ljava/io/IOException;

.field public b:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lh8/e;->a:Ljava/io/IOException;

    iput-object p1, p0, Lh8/e;->b:Ljava/io/IOException;

    return-void
.end method
