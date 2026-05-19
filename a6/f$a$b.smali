.class public final La6/f$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/f$a;->d(Lh6/f;)La6/t$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm6/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic b:La6/f;

.field public final synthetic c:Lh6/f;

.field public final synthetic d:La6/f$a;


# direct methods
.method public constructor <init>(La6/f;Lh6/f;La6/f$a;)V
    .registers 4

    iput-object p1, p0, La6/f$a$b;->b:La6/f;

    iput-object p2, p0, La6/f$a$b;->c:Lh6/f;

    iput-object p3, p0, La6/f$a$b;->d:La6/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La6/f$a$b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, La6/f$a$b;->d:La6/f$a;

    iget-object v1, p0, La6/f$a$b;->c:Lh6/f;

    iget-object p0, p0, La6/f$a$b;->a:Ljava/util/ArrayList;

    check-cast v0, La6/f$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "elements"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_14

    goto/16 :goto_87

    :cond_14
    iget-object v2, v0, La6/f$b;->d:Li5/e;

    invoke-static {v1, v2}, Ls5/a;->b(Lh6/f;Li5/e;)Li5/e1;

    move-result-object v2

    const-string v3, "value"

    if-eqz v2, :cond_3e

    iget-object v0, v0, La6/f$b;->b:Ljava/util/HashMap;

    invoke-static {p0}, Li7/a;->c(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2}, Li5/d1;->getType()Ly6/l0;

    move-result-object v2

    const-string v4, "parameter.type"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lm6/w;

    invoke-direct {v3, p0, v2}, Lm6/w;-><init>(Ljava/util/List;Ly6/l0;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_87

    :cond_3e
    iget-object v2, v0, La6/f$b;->c:La6/f;

    iget-object v4, v0, La6/f$b;->e:Lh6/b;

    invoke-virtual {v2, v4}, La6/d;->r(Lh6/b;)Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-virtual {v1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5b
    :goto_5b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lm6/a;

    if-eqz v3, :cond_5b

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_6d
    iget-object p0, v0, La6/f$b;->f:Ljava/util/List;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm6/a;

    iget-object v1, v1, Lm6/g;->a:Ljava/lang/Object;

    check-cast v1, Lj5/c;

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_87
    :goto_87
    return-void
.end method

.method public b(Lh6/b;)La6/t$a;
    .registers 6

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, La6/f$a$b;->b:La6/f;

    sget-object v2, Li5/v0;->a:Li5/v0;

    const-string v3, "NO_SOURCE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2, v0}, La6/f;->s(Lh6/b;Li5/v0;Ljava/util/List;)La6/t$a;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, La6/f$a$b$a;

    invoke-direct {v1, p1, p0, v0}, La6/f$a$b$a;-><init>(La6/t$a;La6/f$a$b;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public c(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, La6/f$a$b;->a:Ljava/util/ArrayList;

    iget-object v1, p0, La6/f$a$b;->b:La6/f;

    iget-object p0, p0, La6/f$a$b;->c:Lh6/f;

    invoke-static {v1, p0, p1}, La6/f;->x(La6/f;Lh6/f;Ljava/lang/Object;)Lm6/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lh6/b;Lh6/f;)V
    .registers 4

    const-string v0, "enumClassId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La6/f$a$b;->a:Ljava/util/ArrayList;

    new-instance v0, Lm6/j;

    invoke-direct {v0, p1, p2}, Lm6/j;-><init>(Lh6/b;Lh6/f;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Lm6/f;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La6/f$a$b;->a:Ljava/util/ArrayList;

    new-instance v0, Lm6/r;

    invoke-direct {v0, p1}, Lm6/r;-><init>(Lm6/f;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
