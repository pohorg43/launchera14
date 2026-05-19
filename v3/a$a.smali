.class public Lv3/a$a;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/a;->a(Ljava/lang/reflect/Type;Ljava/util/Set;Lv3/e0;)Lv3/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv3/r<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv3/a$b;

.field public final synthetic b:Lv3/r;

.field public final synthetic c:Lv3/e0;

.field public final synthetic d:Lv3/a$b;

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lv3/a;Lv3/a$b;Lv3/r;Lv3/e0;Lv3/a$b;Ljava/util/Set;Ljava/lang/reflect/Type;)V
    .registers 8

    iput-object p2, p0, Lv3/a$a;->a:Lv3/a$b;

    iput-object p3, p0, Lv3/a$a;->b:Lv3/r;

    iput-object p4, p0, Lv3/a$a;->c:Lv3/e0;

    iput-object p5, p0, Lv3/a$a;->d:Lv3/a$b;

    iput-object p6, p0, Lv3/a$a;->e:Ljava/util/Set;

    iput-object p7, p0, Lv3/a$a;->f:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Lv3/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv3/w;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lv3/a$a;->d:Lv3/a$b;

    if-nez v0, :cond_b

    iget-object p0, p0, Lv3/a$a;->b:Lv3/r;

    invoke-virtual {p0, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    iget-boolean v0, v0, Lv3/a$b;->g:Z

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Lv3/w;->l()Lv3/w$b;

    move-result-object v0

    sget-object v1, Lv3/w$b;->i:Lv3/w$b;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1}, Lv3/w;->j()Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lv3/a$a;->d:Lv3/a$b;

    iget-object p0, p0, Lv3/a$a;->c:Lv3/e0;

    invoke-virtual {v0, p0, p1}, Lv3/a$b;->b(Lv3/e0;Lv3/w;)Ljava/lang/Object;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_31

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_31
    new-instance v0, Lv3/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lv3/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c(Lv3/b0;Ljava/lang/Object;)V
    .registers 5
    .param p2  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lv3/a$a;->a:Lv3/a$b;

    if-nez v0, :cond_a

    iget-object p0, p0, Lv3/a$a;->b:Lv3/r;

    invoke-virtual {p0, p1, p2}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    goto :goto_19

    :cond_a
    iget-boolean v1, v0, Lv3/a$b;->g:Z

    if-nez v1, :cond_14

    if-nez p2, :cond_14

    invoke-virtual {p1}, Lv3/b0;->g()Lv3/b0;

    goto :goto_19

    :cond_14
    :try_start_14
    iget-object p0, p0, Lv3/a$a;->c:Lv3/e0;

    invoke-virtual {v0, p0, p1, p2}, Lv3/a$b;->d(Lv3/e0;Lv3/b0;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p2, p0, Ljava/io/IOException;

    if-eqz p2, :cond_26

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_26
    new-instance p2, Lv3/t;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lv3/b0;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lv3/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "JsonAdapter"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lv3/a$a;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv3/a$a;->f:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
