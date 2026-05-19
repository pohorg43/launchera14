.class public final Lv3/e0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/e0$a;,
        Lv3/e0$c;,
        Lv3/e0$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/r$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/r$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lv3/e0$c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lv3/r<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lv3/e0;->d:Ljava/util/List;

    sget-object v1, Lv3/g0;->a:Lv3/r$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lv3/m;->b:Lv3/r$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lv3/d0;->c:Lv3/r$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lv3/f;->c:Lv3/r$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lv3/f0;->a:Lv3/r$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lv3/l;->d:Lv3/r$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lv3/e0$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lv3/e0;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lv3/e0;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lv3/e0$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lv3/e0;->d:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p1, Lv3/e0$a;->a:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lv3/e0;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lv3/r;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lv3/r<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    sget-object v0, Lw3/b;->a:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lv3/e0;->c(Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/r;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/reflect/Type;)Lv3/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lv3/r<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    sget-object v0, Lw3/b;->a:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lv3/e0;->d(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lv3/r;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lv3/r<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lv3/e0;->d(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lv3/r;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lv3/r;
    .registers 12
    .param p3  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lv3/r<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const-string v0, "type == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "annotations == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lw3/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lw3/b;->i(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    move-object v0, p1

    goto :goto_27

    :cond_1c
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_27
    iget-object v3, p0, Lv3/e0;->c:Ljava/util/Map;

    monitor-enter v3

    :try_start_2a
    iget-object v4, p0, Lv3/e0;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv3/r;

    if-eqz v4, :cond_36

    monitor-exit v3

    return-object v4

    :cond_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_d7

    iget-object v3, p0, Lv3/e0;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv3/e0$c;

    if-nez v3, :cond_4b

    new-instance v3, Lv3/e0$c;

    invoke-direct {v3, p0}, Lv3/e0$c;-><init>(Lv3/e0;)V

    iget-object v4, p0, Lv3/e0;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_4b
    iget-object v4, v3, Lv3/e0$c;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v2

    :goto_52
    if-ge v5, v4, :cond_72

    iget-object v6, v3, Lv3/e0$c;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv3/e0$b;

    iget-object v7, v6, Lv3/e0$b;->c:Ljava/lang/Object;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    iget-object p3, v3, Lv3/e0$c;->b:Ljava/util/Deque;

    invoke-interface {p3, v6}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object p3, v6, Lv3/e0$b;->d:Lv3/r;

    if-eqz p3, :cond_82

    move-object v6, p3

    goto :goto_82

    :cond_6f
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_72
    new-instance v4, Lv3/e0$b;

    invoke-direct {v4, p1, p3, v0}, Lv3/e0$b;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p3, v3, Lv3/e0$c;->a:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, v3, Lv3/e0$c;->b:Ljava/util/Deque;

    invoke-interface {p3, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    :cond_82
    :goto_82
    if-eqz v6, :cond_88

    invoke-virtual {v3, v2}, Lv3/e0$c;->b(Z)V

    return-object v6

    :cond_88
    :try_start_88
    iget-object p3, p0, Lv3/e0;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    move v0, v2

    :goto_8f
    if-ge v0, p3, :cond_b0

    iget-object v4, p0, Lv3/e0;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv3/r$a;

    invoke-interface {v4, p1, p2, p0}, Lv3/r$a;->a(Ljava/lang/reflect/Type;Ljava/util/Set;Lv3/e0;)Lv3/r;

    move-result-object v4

    if-nez v4, :cond_a2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    :cond_a2
    iget-object p0, v3, Lv3/e0$c;->b:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv3/e0$b;

    iput-object v4, p0, Lv3/e0$b;->d:Lv3/r;
    :try_end_ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_ac} :catch_cd
    .catchall {:try_start_88 .. :try_end_ac} :catchall_cb

    invoke-virtual {v3, v1}, Lv3/e0$c;->b(Z)V

    return-object v4

    :cond_b0
    :try_start_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No JsonAdapter for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lw3/b;->m(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b0 .. :try_end_cb} :catch_cd
    .catchall {:try_start_b0 .. :try_end_cb} :catchall_cb

    :catchall_cb
    move-exception p0

    goto :goto_d3

    :catch_cd
    move-exception p0

    :try_start_ce
    invoke-virtual {v3, p0}, Lv3/e0$c;->a(Ljava/lang/IllegalArgumentException;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
    :try_end_d3
    .catchall {:try_start_ce .. :try_end_d3} :catchall_cb

    :goto_d3
    invoke-virtual {v3, v2}, Lv3/e0$c;->b(Z)V

    throw p0

    :catchall_d7
    move-exception p0

    :try_start_d8
    monitor-exit v3
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw p0
.end method

.method public e(Lv3/r$a;Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/r;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lv3/r$a;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lv3/r<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const-string v0, "annotations == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lw3/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lw3/b;->i(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    iget-object v0, p0, Lv3/e0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_49

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Lv3/e0;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1e
    if-ge v0, p1, :cond_32

    iget-object v1, p0, Lv3/e0;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/r$a;

    invoke-interface {v1, p2, p3, p0}, Lv3/r$a;->a(Ljava/lang/reflect/Type;Ljava/util/Set;Lv3/e0;)Lv3/r;

    move-result-object v1

    if-eqz v1, :cond_2f

    return-object v1

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No next JsonAdapter for "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2, p3}, Lw3/b;->m(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to skip past unknown factory "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
