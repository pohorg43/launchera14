.class public final Lw6/d$a;
.super Lw6/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedClassDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedClassDescriptor.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 addToStdlib.kt\norg/jetbrains/kotlin/utils/addToStdlib/AddToStdlibKt\n*L\n1#1,424:1\n1549#2:425\n1620#2,3:426\n1446#2,5:430\n1446#2,5:435\n1#3:429\n196#4,5:440\n*S KotlinDebug\n*F\n+ 1 DeserializedClassDescriptor.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope\n*L\n269#1:425\n269#1:426,3\n349#1:430,5\n355#1:435,5\n361#1:440,5\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lz6/f;

.field public final h:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic j:Lw6/d;


# direct methods
.method public constructor <init>(Lw6/d;Lz6/f;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/f;",
            ")V"
        }
    .end annotation

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lw6/d$a;->j:Lw6/d;

    iget-object v2, p1, Lw6/d;->l:Lu6/m;

    iget-object v0, p1, Lw6/d;->e:Lc6/b;

    iget-object v3, v0, Lc6/b;->q:Ljava/util/List;

    const-string v0, "classProto.functionList"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lw6/d;->e:Lc6/b;

    iget-object v4, v0, Lc6/b;->r:Ljava/util/List;

    const-string v0, "classProto.propertyList"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lw6/d;->e:Lc6/b;

    iget-object v5, v0, Lc6/b;->s:Ljava/util/List;

    const-string v0, "classProto.typeAliasList"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lw6/d;->e:Lc6/b;

    iget-object v0, v0, Lc6/b;->k:Ljava/util/List;

    const-string v1, "classProto.nestedClassNameList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lw6/d;->l:Lu6/m;

    iget-object p1, p1, Lu6/m;->b:Le6/c;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {p1, v6}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_58
    new-instance v6, Lw6/d$a$a;

    invoke-direct {v6, v1}, Lw6/d$a$a;-><init>(Ljava/util/List;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lw6/k;-><init>(Lu6/m;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    iput-object p2, p0, Lw6/d$a;->g:Lz6/f;

    iget-object p1, p0, Lw6/k;->b:Lu6/m;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->a:Lx6/m;

    new-instance p2, Lw6/d$a$b;

    invoke-direct {p2, p0}, Lw6/d$a$b;-><init>(Lw6/d$a;)V

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lw6/d$a;->h:Lx6/i;

    iget-object p1, p0, Lw6/k;->b:Lu6/m;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->a:Lx6/m;

    new-instance p2, Lw6/d$a$d;

    invoke-direct {p2, p0}, Lw6/d$a$d;-><init>(Lw6/d$a;)V

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Lw6/d$a;->i:Lx6/i;

    return-void
.end method


# virtual methods
.method public b(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Lq5/b;",
            ")",
            "Ljava/util/Collection<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw6/d$a;->t(Lh6/f;Lq5/b;)V

    invoke-super {p0, p1, p2}, Lw6/k;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public c(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Lq5/b;",
            ")",
            "Ljava/util/Collection<",
            "Li5/o0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw6/d$a;->t(Lh6/f;Lq5/b;)V

    invoke-super {p0, p1, p2}, Lw6/k;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/d$a;->h:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public f(Lh6/f;Lq5/b;)Li5/h;
    .registers 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw6/d$a;->t(Lh6/f;Lq5/b;)V

    iget-object v1, p0, Lw6/d$a;->j:Lw6/d;

    iget-object v1, v1, Lw6/d;->p:Lw6/d$c;

    if-eqz v1, :cond_21

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lw6/d$c;->b:Lx6/h;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/e;

    if-eqz v0, :cond_21

    return-object v0

    :cond_21
    invoke-super {p0, p1, p2}, Lw6/k;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/d$a;->j:Lw6/d;

    iget-object p0, p0, Lw6/d;->p:Lw6/d$c;

    if-eqz p0, :cond_3e

    iget-object p2, p0, Lw6/d$c;->a:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1f
    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh6/f;

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lw6/d$c;->b:Lx6/h;

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/e;

    if-eqz v1, :cond_1f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_3e
    const/4 v0, 0x0

    :cond_3f
    if-nez v0, :cond_43

    sget-object v0, Li4/y;->a:Li4/y;

    :cond_43
    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public j(Lh6/f;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/util/List<",
            "Li5/u0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lw6/d$a;->i:Lx6/i;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/l0;

    invoke-virtual {v2}, Ly6/l0;->l()Lr6/i;

    move-result-object v2

    sget-object v3, Lq5/d;->l:Lq5/d;

    invoke-interface {v2, p1, v3}, Lr6/i;->b(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b

    :cond_35
    iget-object v1, p0, Lw6/k;->b:Lu6/m;

    iget-object v1, v1, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->n:Lk5/a;

    iget-object v2, p0, Lw6/d$a;->j:Lw6/d;

    invoke-interface {v1, p1, v2}, Lk5/a;->c(Lh6/f;Li5/e;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, v0, p2}, Lw6/d$a;->s(Lh6/f;Ljava/util/Collection;Ljava/util/List;)V

    return-void
.end method

.method public k(Lh6/f;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/util/List<",
            "Li5/o0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lw6/d$a;->i:Lx6/i;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/l0;

    invoke-virtual {v2}, Ly6/l0;->l()Lr6/i;

    move-result-object v2

    sget-object v3, Lq5/d;->l:Lq5/d;

    invoke-interface {v2, p1, v3}, Lr6/i;->c(Lh6/f;Lq5/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b

    :cond_35
    invoke-virtual {p0, p1, v0, p2}, Lw6/d$a;->s(Lh6/f;Ljava/util/Collection;Ljava/util/List;)V

    return-void
.end method

.method public l(Lh6/f;)Lh6/b;
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/d$a;->j:Lw6/d;

    iget-object p0, p0, Lw6/d;->h:Lh6/b;

    invoke-virtual {p0, p1}, Lh6/b;->d(Lh6/f;)Lh6/b;

    move-result-object p0

    const-string p1, "classId.createNestedClassId(name)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public n()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/d$a;->j:Lw6/d;

    iget-object p0, p0, Lw6/d;->n:Lw6/d$b;

    invoke-virtual {p0}, Ly6/j;->o()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/l0;

    invoke-virtual {v1}, Ly6/l0;->l()Lr6/i;

    move-result-object v1

    invoke-interface {v1}, Lr6/i;->g()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_29

    const/4 v0, 0x0

    goto :goto_2d

    :cond_29
    invoke-static {v0, v1}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_11

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public o()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw6/d$a;->j:Lw6/d;

    iget-object v0, v0, Lw6/d;->n:Lw6/d$b;

    invoke-virtual {v0}, Ly6/j;->o()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/l0;

    invoke-virtual {v2}, Ly6/l0;->l()Lr6/i;

    move-result-object v2

    invoke-interface {v2}, Lr6/i;->a()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_11

    :cond_29
    iget-object v0, p0, Lw6/d$a;->j:Lw6/d;

    iget-object p0, p0, Lw6/k;->b:Lu6/m;

    iget-object p0, p0, Lu6/m;->a:Lu6/k;

    iget-object p0, p0, Lu6/k;->n:Lk5/a;

    invoke-interface {p0, v0}, Lk5/a;->e(Li5/e;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public p()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw6/d$a;->j:Lw6/d;

    iget-object p0, p0, Lw6/d;->n:Lw6/d$b;

    invoke-virtual {p0}, Ly6/j;->o()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/l0;

    invoke-virtual {v1}, Ly6/l0;->l()Lr6/i;

    move-result-object v1

    invoke-interface {v1}, Lr6/i;->d()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_11

    :cond_29
    return-object v0
.end method

.method public r(Li5/u0;)Z
    .registers 3

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw6/k;->b:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->o:Lk5/c;

    iget-object p0, p0, Lw6/d$a;->j:Lw6/d;

    invoke-interface {v0, p0, p1}, Lk5/c;->b(Li5/e;Li5/u0;)Z

    move-result p0

    return p0
.end method

.method public final s(Lh6/f;Ljava/util/Collection;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/b;",
            ">(",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "+TD;>;",
            "Ljava/util/List<",
            "TD;>;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lw6/k;->b:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->q:Lz6/l;

    invoke-interface {v0}, Lz6/l;->a()Lk6/o;

    move-result-object v0

    iget-object v4, p0, Lw6/d$a;->j:Lw6/d;

    new-instance v5, Lw6/d$a$c;

    invoke-direct {v5, p3}, Lw6/d$a$c;-><init>(Ljava/util/List;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lk6/o;->h(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lk6/n;)V

    return-void
.end method

.method public t(Lh6/f;Lq5/b;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw6/k;->b:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->i:Lq5/c;

    iget-object p0, p0, Lw6/d$a;->j:Lw6/d;

    invoke-static {v0, p2, p0, p1}, Lp5/a;->a(Lq5/c;Lq5/b;Li5/e;Lh6/f;)V

    return-void
.end method
