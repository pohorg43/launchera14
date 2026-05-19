.class public Ll5/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lr6/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/g$b;


# direct methods
.method public constructor <init>(Ll5/g$b;)V
    .registers 2

    iput-object p1, p0, Ll5/h;->a:Ll5/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 6

    const-string v0, "Scope for type parameter "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll5/h;->a:Ll5/g$b;

    iget-object v1, v1, Ll5/g$b;->a:Lh6/f;

    invoke-virtual {v1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Ll5/h;->a:Ll5/g$b;

    iget-object p0, p0, Ll5/g$b;->b:Ll5/g;

    invoke-virtual {p0}, Ll5/g;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "types"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/l0;

    invoke-virtual {v2}, Ly6/l0;->l()Lr6/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_4a
    invoke-static {v1}, Lh7/a;->b(Ljava/lang/Iterable;)Li7/d;

    move-result-object p0

    const-string v1, "debugName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scopes"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Li7/d;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_78

    const/4 v4, 0x0

    if-eq v1, v3, :cond_71

    new-instance v1, Lr6/b;

    new-array v4, v4, [Lr6/i;

    invoke-virtual {p0, v4}, Li7/d;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lr6/i;

    invoke-direct {v1, v0, v4, v2}, Lr6/b;-><init>(Ljava/lang/String;[Lr6/i;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7a

    :cond_71
    invoke-virtual {p0, v4}, Li7/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr6/i;

    goto :goto_7a

    :cond_78
    sget-object v1, Lr6/i$b;->b:Lr6/i$b;

    :goto_7a
    iget p0, p0, Li7/d;->a:I

    if-gt p0, v3, :cond_7f

    goto :goto_85

    :cond_7f
    new-instance p0, Lr6/o;

    invoke-direct {p0, v0, v1, v2}, Lr6/o;-><init>(Ljava/lang/String;Lr6/i;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p0

    :goto_85
    return-object v1
.end method
