.class public Lk8/g$e$a;
.super Lk8/g$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/g$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lk8/g$e;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lk8/q;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p0, Lk8/b;->f:Lk8/b;

    invoke-virtual {p1, p0}, Lk8/q;->c(Lk8/b;)V

    return-void
.end method
