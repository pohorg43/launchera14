.class public abstract Lv3/m;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/util/Collection<",
        "TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/r<",
        "TC;>;"
    }
.end annotation


# static fields
.field public static final b:Lv3/r$a;


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
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv3/m$a;

    invoke-direct {v0}, Lv3/m$a;-><init>()V

    sput-object v0, Lv3/m;->b:Lv3/r$a;

    return-void
.end method

.method public constructor <init>(Lv3/r;Lv3/m$a;)V
    .registers 3

    invoke-direct {p0}, Lv3/r;-><init>()V

    iput-object p1, p0, Lv3/m;->a:Lv3/r;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lv3/w;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv3/m;->d(Lv3/w;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lv3/b0;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lv3/m;->f(Lv3/b0;Ljava/util/Collection;)V

    return-void
.end method

.method public d(Lv3/w;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/w;",
            ")TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lv3/m;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Lv3/w;->a()V

    :goto_7
    invoke-virtual {p1}, Lv3/w;->e()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lv3/m;->a:Lv3/r;

    invoke-virtual {v1, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_17
    invoke-virtual {p1}, Lv3/w;->c()V

    return-object v0
.end method

.method public abstract e()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public f(Lv3/b0;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b0;",
            "TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lv3/b0;->a()Lv3/b0;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lv3/m;->a:Lv3/r;

    invoke-virtual {v1, p1, v0}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    goto :goto_7

    :cond_17
    invoke-virtual {p1}, Lv3/b0;->d()Lv3/b0;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lv3/m;->a:Lv3/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".collection()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
