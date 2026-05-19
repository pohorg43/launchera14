.class public Lv5/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv5/b;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeclaredMemberIndex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeclaredMemberIndex.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/ClassDeclaredMemberIndex\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n970#2:67\n999#2,3:68\n1002#2,3:78\n674#2:81\n704#2,4:82\n1137#2,3:95\n1137#2,3:98\n361#3,7:71\n766#4:86\n857#4,2:87\n1194#4,2:89\n1222#4,4:91\n*S KotlinDebug\n*F\n+ 1 DeclaredMemberIndex.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/ClassDeclaredMemberIndex\n*L\n52#1:67\n52#1:68,3\n52#1:78,3\n53#1:81\n53#1:82,4\n57#1:95,3\n60#1:98,3\n52#1:71,7\n54#1:86\n54#1:87,2\n54#1:89,2\n54#1:91,4\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ly5/g;

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ly5/q;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ly5/r;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/f;",
            "Ljava/util/List<",
            "Ly5/r;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/f;",
            "Ly5/n;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/f;",
            "Ly5/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly5/g;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/g;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ly5/q;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv5/a;->a:Ly5/g;

    iput-object p2, p0, Lv5/a;->b:Lkotlin/jvm/functions/Function1;

    new-instance p2, Lv5/a$a;

    invoke-direct {p2, p0}, Lv5/a$a;-><init>(Lv5/a;)V

    iput-object p2, p0, Lv5/a;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1}, Ly5/g;->x()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object p1

    invoke-static {p1, p2}, Lj7/p;->m(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Lj7/e;

    new-instance v0, Lj7/e$a;

    invoke-direct {v0, p1}, Lj7/e$a;-><init>(Lj7/e;)V

    :goto_30
    invoke-virtual {v0}, Lj7/e$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-virtual {v0}, Lj7/e$a;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ly5/r;

    invoke-interface {v1}, Ly5/t;->getName()Lh6/f;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_55
    iput-object p2, p0, Lv5/a;->d:Ljava/util/Map;

    iget-object p1, p0, Lv5/a;->a:Ly5/g;

    invoke-interface {p1}, Ly5/g;->u()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object p1

    iget-object p2, p0, Lv5/a;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Lj7/p;->m(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Lj7/e;

    new-instance v0, Lj7/e$a;

    invoke-direct {v0, p1}, Lj7/e$a;-><init>(Lj7/e;)V

    :goto_73
    invoke-virtual {v0}, Lj7/e$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_88

    invoke-virtual {v0}, Lj7/e$a;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ly5/n;

    invoke-interface {v1}, Ly5/t;->getName()Lh6/f;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    :cond_88
    iput-object p2, p0, Lv5/a;->e:Ljava/util/Map;

    iget-object p1, p0, Lv5/a;->a:Ly5/g;

    invoke-interface {p1}, Ly5/g;->k()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lv5/a;->b:Lkotlin/jvm/functions/Function1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9b
    :goto_9b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :cond_b5
    const/16 p1, 0xa

    invoke-static {v0, p1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Li4/j0;->b(I)I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_c4

    move p1, p2

    :cond_c4
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_cd
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ly5/w;

    invoke-interface {v1}, Ly5/t;->getName()Lh6/f;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    :cond_e2
    iput-object p2, p0, Lv5/a;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv5/a;->a:Ly5/g;

    invoke-interface {v0}, Ly5/g;->x()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object v0

    iget-object p0, p0, Lv5/a;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0}, Lj7/p;->m(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p0, Lj7/e;

    new-instance v1, Lj7/e$a;

    invoke-direct {v1, p0}, Lj7/e$a;-><init>(Lj7/e;)V

    :goto_1c
    invoke-virtual {v1}, Lj7/e$a;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_30

    invoke-virtual {v1}, Lj7/e$a;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5/r;

    invoke-interface {p0}, Ly5/t;->getName()Lh6/f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_30
    return-object v0
.end method

.method public b(Lh6/f;)Ly5/n;
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv5/a;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5/n;

    return-object p0
.end method

.method public c(Lh6/f;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            ")",
            "Ljava/util/Collection<",
            "Ly5/r;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv5/a;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_12
    return-object p0
.end method

.method public d()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lv5/a;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv5/a;->a:Ly5/g;

    invoke-interface {v0}, Ly5/g;->u()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object v0

    iget-object p0, p0, Lv5/a;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p0}, Lj7/p;->m(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p0, Lj7/e;

    new-instance v1, Lj7/e$a;

    invoke-direct {v1, p0}, Lj7/e$a;-><init>(Lj7/e;)V

    :goto_1c
    invoke-virtual {v1}, Lj7/e$a;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_30

    invoke-virtual {v1}, Lj7/e$a;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5/n;

    invoke-interface {p0}, Ly5/t;->getName()Lh6/f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_30
    return-object v0
.end method

.method public f(Lh6/f;)Ly5/w;
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv5/a;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5/w;

    return-object p0
.end method
