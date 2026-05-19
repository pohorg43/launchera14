.class public final Lg5/b$a;
.super Ly6/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFunctionClassDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FunctionClassDescriptor.kt\norg/jetbrains/kotlin/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1549#2:140\n1620#2,2:141\n1549#2:143\n1620#2,3:144\n1622#2:147\n*S KotlinDebug\n*F\n+ 1 FunctionClassDescriptor.kt\norg/jetbrains/kotlin/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor\n*L\n109#1:140\n109#1:141,2\n113#1:143\n113#1:144,3\n109#1:147\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic c:Lg5/b;


# direct methods
.method public constructor <init>(Lg5/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg5/b$a;->c:Lg5/b;

    iget-object p1, p1, Lg5/b;->e:Lx6/m;

    invoke-direct {p0, p1}, Ly6/b;-><init>(Lx6/m;)V

    return-void
.end method


# virtual methods
.method public e()Li5/h;
    .registers 1

    iget-object p0, p0, Lg5/b$a;->c:Lg5/b;

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

    iget-object p0, p0, Lg5/b$a;->c:Lg5/b;

    iget-object p0, p0, Lg5/b;->k:Ljava/util/List;

    return-object p0
.end method

.method public j()Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg5/b$a;->c:Lg5/b;

    iget-object v0, v0, Lg5/b;->g:Lg5/c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_56

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_38

    const/4 v4, 0x3

    if-ne v0, v4, :cond_32

    new-array v0, v3, [Lh6/b;

    sget-object v3, Lg5/b;->m:Lh6/b;

    aput-object v3, v0, v2

    new-instance v2, Lh6/b;

    sget-object v3, Lf5/j;->e:Lh6/c;

    sget-object v4, Lg5/c;->e:Lg5/c;

    iget-object v5, p0, Lg5/b$a;->c:Lg5/b;

    iget v5, v5, Lg5/b;->h:I

    invoke-virtual {v4, v5}, Lg5/c;->a(I)Lh6/f;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_63

    :cond_32
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_38
    new-array v0, v3, [Lh6/b;

    sget-object v3, Lg5/b;->m:Lh6/b;

    aput-object v3, v0, v2

    new-instance v2, Lh6/b;

    sget-object v3, Lf5/j;->k:Lh6/c;

    sget-object v4, Lg5/c;->d:Lg5/c;

    iget-object v5, p0, Lg5/b$a;->c:Lg5/b;

    iget v5, v5, Lg5/b;->h:I

    invoke-virtual {v4, v5}, Lg5/c;->a(I)Lh6/f;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_63

    :cond_56
    sget-object v0, Lg5/b;->l:Lh6/b;

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_63

    :cond_5d
    sget-object v0, Lg5/b;->l:Lh6/b;

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_63
    iget-object v1, p0, Lg5/b$a;->c:Lg5/b;

    iget-object v1, v1, Lg5/b;->f:Li5/h0;

    invoke-interface {v1}, Li5/h0;->b()Li5/e0;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh6/b;

    invoke-static {v1, v4}, Li5/w;->a(Li5/e0;Lh6/b;)Li5/e;

    move-result-object v5

    if-eqz v5, :cond_d5

    iget-object v4, p0, Lg5/b$a;->c:Lg5/b;

    iget-object v4, v4, Lg5/b;->k:Ljava/util/List;

    invoke-interface {v5}, Li5/h;->h()Ly6/j1;

    move-result-object v6

    invoke-interface {v6}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Li4/v;->e0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ad
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li5/a1;

    new-instance v8, Ly6/s1;

    invoke-interface {v7}, Li5/h;->m()Ly6/s0;

    move-result-object v7

    invoke-direct {v8, v7}, Ly6/s1;-><init>(Ly6/l0;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ad

    :cond_c6
    sget-object v4, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ly6/g1;->c:Ly6/g1;

    invoke-static {v4, v5, v6}, Ly6/m0;->e(Ly6/g1;Li5/e;Ljava/util/List;)Ly6/s0;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :cond_d5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Built-in class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f5
    invoke-static {v2}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

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

    iget-object p0, p0, Lg5/b$a;->c:Lg5/b;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lg5/b$a;->c:Lg5/b;

    invoke-virtual {p0}, Lg5/b;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
