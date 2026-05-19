.class public final Lw3/a;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv3/r;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/r<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lv3/r;-><init>()V

    iput-object p1, p0, Lw3/a;->a:Lv3/r;

    return-void
.end method


# virtual methods
.method public a(Lv3/w;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/w;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lv3/w;->l()Lv3/w$b;

    move-result-object v0

    sget-object v1, Lv3/w$b;->i:Lv3/w$b;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lv3/w;->j()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_d
    iget-object p0, p0, Lw3/a;->a:Lv3/r;

    invoke-virtual {p0, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(Lv3/b0;Ljava/lang/Object;)V
    .registers 3
    .param p2  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b0;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lv3/b0;->g()Lv3/b0;

    goto :goto_b

    :cond_6
    iget-object p0, p0, Lw3/a;->a:Lv3/r;

    invoke-virtual {p0, p1, p2}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    :goto_b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lw3/a;->a:Lv3/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".nullSafe()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
