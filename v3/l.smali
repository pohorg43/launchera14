.class public final Lv3/l;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/r<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d:Lv3/r$a;


# instance fields
.field public final a:Lv3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:[Lv3/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lv3/w$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv3/l$a;

    invoke-direct {v0}, Lv3/l$a;-><init>()V

    sput-object v0, Lv3/l;->d:Lv3/r$a;

    return-void
.end method

.method public constructor <init>(Lv3/k;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/k<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lv3/l$b<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lv3/r;-><init>()V

    iput-object p1, p0, Lv3/l;->a:Lv3/k;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lv3/l$b;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lv3/l$b;

    iput-object p1, p0, Lv3/l;->b:[Lv3/l$b;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lv3/w$a;->a([Ljava/lang/String;)Lv3/w$a;

    move-result-object p1

    iput-object p1, p0, Lv3/l;->c:Lv3/w$a;

    return-void
.end method


# virtual methods
.method public a(Lv3/w;)Ljava/lang/Object;
    .registers 5
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

    :try_start_0
    iget-object v0, p0, Lv3/l;->a:Lv3/k;

    invoke-virtual {v0}, Lv3/k;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_6} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6} :catch_39

    :try_start_6
    invoke-virtual {p1}, Lv3/w;->b()V

    :goto_9
    invoke-virtual {p1}, Lv3/w;->e()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lv3/l;->c:Lv3/w$a;

    invoke-virtual {p1, v1}, Lv3/w;->o(Lv3/w$a;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    invoke-virtual {p1}, Lv3/w;->q()V

    invoke-virtual {p1}, Lv3/w;->r()V

    goto :goto_9

    :cond_1f
    iget-object v2, p0, Lv3/l;->b:[Lv3/l$b;

    aget-object v1, v2, v1

    iget-object v2, v1, Lv3/l$b;->c:Lv3/r;

    invoke-virtual {v2, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v1, Lv3/l$b;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_2f
    invoke-virtual {p1}, Lv3/w;->d()V
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_32} :catch_33

    return-object v0

    :catch_33
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catch_39
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catch_3f
    move-exception p0

    invoke-static {p0}, Lw3/b;->l(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0

    :catch_45
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public c(Lv3/b0;Ljava/lang/Object;)V
    .registers 7
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

    :try_start_0
    invoke-virtual {p1}, Lv3/b0;->b()Lv3/b0;

    iget-object p0, p0, Lv3/l;->b:[Lv3/l$b;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    iget-object v3, v2, Lv3/l$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lv3/b0;->f(Ljava/lang/String;)Lv3/b0;

    iget-object v3, v2, Lv3/l$b;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v2, Lv3/l$b;->c:Lv3/r;

    invoke-virtual {v2, p1, v3}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    invoke-virtual {p1}, Lv3/b0;->e()Lv3/b0;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    :catch_22
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "JsonAdapter("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lv3/l;->a:Lv3/k;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
