.class public Li6/h$d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/h$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Li6/h$e;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Li6/h$e;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Li6/h$d;ZLi6/h$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Li6/h$d;->a:Li6/g;

    iget-boolean p3, p1, Li6/g;->c:Z

    if-eqz p3, :cond_1b

    new-instance p3, Li6/k$c;

    iget-object p1, p1, Li6/g;->a:Li6/u;

    invoke-virtual {p1}, Li6/u;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Li6/u$d;

    invoke-virtual {p1}, Li6/u$d;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p3, p1}, Li6/k$c;-><init>(Ljava/util/Iterator;)V

    goto :goto_27

    :cond_1b
    iget-object p1, p1, Li6/g;->a:Li6/u;

    invoke-virtual {p1}, Li6/u;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Li6/u$d;

    invoke-virtual {p1}, Li6/u$d;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_27
    iput-object p3, p0, Li6/h$d$a;->a:Ljava/util/Iterator;

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Li6/h$d$a;->b:Ljava/util/Map$Entry;

    :cond_37
    iput-boolean p2, p0, Li6/h$d$a;->c:Z

    return-void
.end method


# virtual methods
.method public a(ILi6/e;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Li6/h$d$a;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_ce

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li6/h$e;

    iget v0, v0, Li6/h$e;->b:I

    if-ge v0, p1, :cond_ce

    iget-object v0, p0, Li6/h$d$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li6/h$e;

    iget-boolean v1, p0, Li6/h$d$a;->c:Z

    if-eqz v1, :cond_46

    iget-object v1, v0, Li6/h$e;->c:Li6/y;

    iget-object v1, v1, Li6/y;->a:Li6/z;

    sget-object v2, Li6/z;->j:Li6/z;

    if-ne v1, v2, :cond_46

    iget-boolean v1, v0, Li6/h$e;->d:Z

    if-nez v1, :cond_46

    iget v0, v0, Li6/h$e;->b:I

    iget-object v1, p0, Li6/h$d$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/p;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {p2, v2, v3}, Li6/e;->A(II)V

    const/16 v4, 0x10

    invoke-virtual {p2, v4}, Li6/e;->y(I)V

    invoke-virtual {p2, v0}, Li6/e;->y(I)V

    invoke-virtual {p2, v3, v1}, Li6/e;->r(ILi6/p;)V

    const/4 v0, 0x4

    invoke-virtual {p2, v2, v0}, Li6/e;->A(II)V

    goto/16 :goto_b5

    :cond_46
    iget-object v1, p0, Li6/h$d$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Li6/g;->d:Li6/g;

    invoke-virtual {v0}, Li6/h$e;->getLiteType()Li6/y;

    move-result-object v2

    invoke-virtual {v0}, Li6/h$e;->getNumber()I

    move-result v3

    invoke-virtual {v0}, Li6/h$e;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_a4

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Li6/h$e;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_92

    const/4 v0, 0x2

    invoke-virtual {p2, v3, v0}, Li6/e;->A(II)V

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Li6/g;->d(Li6/y;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_6d

    :cond_7d
    invoke-virtual {p2, v0}, Li6/e;->y(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v2, v1}, Li6/g;->o(Li6/e;Li6/y;Ljava/lang/Object;)V

    goto :goto_84

    :cond_92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v2, v3, v1}, Li6/g;->n(Li6/e;Li6/y;ILjava/lang/Object;)V

    goto :goto_96

    :cond_a4
    instance-of v0, v1, Li6/k;

    if-eqz v0, :cond_b2

    check-cast v1, Li6/k;

    invoke-virtual {v1}, Li6/k;->a()Li6/p;

    move-result-object v0

    invoke-static {p2, v2, v3, v0}, Li6/g;->n(Li6/e;Li6/y;ILjava/lang/Object;)V

    goto :goto_b5

    :cond_b2
    invoke-static {p2, v2, v3, v1}, Li6/g;->n(Li6/e;Li6/y;ILjava/lang/Object;)V

    :cond_b5
    :goto_b5
    iget-object v0, p0, Li6/h$d$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Li6/h$d$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Li6/h$d$a;->b:Ljava/util/Map$Entry;

    goto/16 :goto_0

    :cond_c9
    const/4 v0, 0x0

    iput-object v0, p0, Li6/h$d$a;->b:Ljava/util/Map$Entry;

    goto/16 :goto_0

    :cond_ce
    return-void
.end method
