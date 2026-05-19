.class public Lio/branch/search/d6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Le8/s$a;)Le8/z;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Li8/f;

    iget-object p0, p0, Li8/f;->f:Le8/x;

    check-cast p1, Li8/f;

    invoke-virtual {p1, p0}, Li8/f;->a(Le8/x;)Le8/z;

    move-result-object p0

    return-object p0
.end method
