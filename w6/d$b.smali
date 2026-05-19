.class public final Lw6/d$b;
.super Ly6/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedClassDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedClassDescriptor.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,424:1\n1549#2:425\n1620#2,3:426\n1603#2,9:429\n1855#2:438\n1856#2:440\n1612#2:441\n1549#2:442\n1620#2,3:443\n1#3:439\n*S KotlinDebug\n*F\n+ 1 DeserializedClassDescriptor.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor\n*L\n236#1:425\n236#1:426,3\n240#1:429,9\n240#1:438\n240#1:440\n240#1:441\n247#1:442\n247#1:443,3\n240#1:439\n*E\n"
    }
.end annotation


# instance fields
.field public final c:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lw6/d;


# direct methods
.method public constructor <init>(Lw6/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw6/d$b;->d:Lw6/d;

    iget-object v0, p1, Lw6/d;->l:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->a:Lx6/m;

    invoke-direct {p0, v0}, Ly6/b;-><init>(Lx6/m;)V

    iget-object v0, p1, Lw6/d;->l:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->a:Lx6/m;

    new-instance v1, Lw6/d$b$a;

    invoke-direct {v1, p1}, Lw6/d$b$a;-><init>(Lw6/d;)V

    invoke-interface {v0, v1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lw6/d$b;->c:Lx6/i;

    return-void
.end method


# virtual methods
.method public e()Li5/h;
    .registers 1

    iget-object p0, p0, Lw6/d$b;->d:Lw6/d;

    return-object p0
.end method

.method public f()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/d$b;->c:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public j()Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw6/d$b;->d:Lw6/d;

    iget-object v1, v0, Lw6/d;->e:Lc6/b;

    iget-object v0, v0, Lw6/d;->l:Lu6/m;

    iget-object v0, v0, Lu6/m;->d:Le6/g;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeTable"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lc6/b;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object v2, v4

    :goto_1f
    const/16 v3, 0xa

    if-nez v2, :cond_54

    iget-object v1, v1, Lc6/b;->i:Ljava/util/List;

    const-string v2, "supertypeIdList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v6, "it"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Le6/g;->a(I)Lc6/q;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_54
    iget-object v0, p0, Lw6/d$b;->d:Lw6/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc6/q;

    iget-object v6, v0, Lw6/d;->l:Lu6/m;

    iget-object v6, v6, Lu6/m;->h:Lu6/f0;

    invoke-virtual {v6, v5}, Lu6/f0;->i(Lc6/q;)Ly6/l0;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_7b
    iget-object v0, p0, Lw6/d$b;->d:Lw6/d;

    iget-object v2, v0, Lw6/d;->l:Lu6/m;

    iget-object v2, v2, Lu6/m;->a:Lu6/k;

    iget-object v2, v2, Lu6/k;->n:Lk5/a;

    invoke-interface {v2, v0}, Lk5/a;->a(Li5/e;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v1, v0}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_94
    :goto_94
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly6/l0;

    invoke-virtual {v5}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v5

    invoke-interface {v5}, Ly6/j1;->e()Li5/h;

    move-result-object v5

    instance-of v6, v5, Li5/g0$b;

    if-eqz v6, :cond_af

    check-cast v5, Li5/g0$b;

    goto :goto_b0

    :cond_af
    move-object v5, v4

    :goto_b0
    if-eqz v5, :cond_94

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_94

    :cond_b6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_100

    iget-object p0, p0, Lw6/d$b;->d:Lw6/d;

    iget-object v2, p0, Lw6/d;->l:Lu6/m;

    iget-object v2, v2, Lu6/m;->a:Lu6/k;

    iget-object v2, v2, Lu6/k;->h:Lu6/q;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/g0$b;

    invoke-static {v3}, Lo6/c;->f(Li5/h;)Lh6/b;

    move-result-object v5

    if-eqz v5, :cond_f1

    invoke-virtual {v5}, Lh6/b;->b()Lh6/c;

    move-result-object v5

    if-eqz v5, :cond_f1

    invoke-virtual {v5}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f9

    :cond_f1
    invoke-virtual {v3}, Ll5/b;->getName()Lh6/f;

    move-result-object v3

    invoke-virtual {v3}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v5

    :cond_f9
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    :cond_fd
    invoke-interface {v2, p0, v4}, Lu6/q;->a(Li5/e;Ljava/util/List;)V

    :cond_100
    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public n()Li5/y0;
    .registers 1

    sget-object p0, Li5/y0$a;->a:Li5/y0$a;

    return-object p0
.end method

.method public s()Li5/e;
    .registers 1

    iget-object p0, p0, Lw6/d$b;->d:Lw6/d;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lw6/d$b;->d:Lw6/d;

    invoke-virtual {p0}, Ll5/b;->getName()Lh6/f;

    move-result-object p0

    iget-object p0, p0, Lh6/f;->a:Ljava/lang/String;

    const-string v0, "name.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
