.class public final Lv3/d0;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/r<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final c:Lv3/r$a;


# instance fields
.field public final a:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final b:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv3/d0$a;

    invoke-direct {v0}, Lv3/d0$a;-><init>()V

    sput-object v0, Lv3/d0;->c:Lv3/r$a;

    return-void
.end method

.method public constructor <init>(Lv3/e0;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .registers 4

    invoke-direct {p0}, Lv3/r;-><init>()V

    invoke-virtual {p1, p2}, Lv3/e0;->b(Ljava/lang/reflect/Type;)Lv3/r;

    move-result-object p2

    iput-object p2, p0, Lv3/d0;->a:Lv3/r;

    invoke-virtual {p1, p3}, Lv3/e0;->b(Ljava/lang/reflect/Type;)Lv3/r;

    move-result-object p1

    iput-object p1, p0, Lv3/d0;->b:Lv3/r;

    return-void
.end method


# virtual methods
.method public a(Lv3/w;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lv3/c0;

    invoke-direct {v0}, Lv3/c0;-><init>()V

    invoke-virtual {p1}, Lv3/w;->b()V

    :goto_8
    invoke-virtual {p1}, Lv3/w;->e()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p1}, Lv3/w;->m()V

    iget-object v1, p0, Lv3/d0;->a:Lv3/r;

    invoke-virtual {v1, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lv3/d0;->b:Lv3/r;

    invoke-virtual {v2, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lv3/c0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_24

    goto :goto_8

    :cond_24
    new-instance p0, Lv3/t;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Map key \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' has multiple values at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    invoke-virtual {p1}, Lv3/w;->d()V

    return-object v0
.end method

.method public c(Lv3/b0;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1}, Lv3/b0;->b()Lv3/b0;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {p1}, Lv3/b0;->i()V

    iget-object v1, p0, Lv3/d0;->a:Lv3/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    iget-object v1, p0, Lv3/d0;->b:Lv3/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    goto :goto_d

    :cond_35
    new-instance p0, Lv3/t;

    const-string p2, "Map key is null at "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lv3/b0;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    invoke-virtual {p1}, Lv3/b0;->e()Lv3/b0;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "JsonAdapter("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lv3/d0;->a:Lv3/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv3/d0;->b:Lv3/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
