.class public final Lv5/t;
.super Li7/b$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li7/b$b<",
        "Li5/e;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/e;

.field public final synthetic b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lr6/i;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li5/e;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lr6/i;",
            "+",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lv5/t;->a:Li5/e;

    iput-object p2, p0, Lv5/t;->b:Ljava/util/Set;

    iput-object p3, p0, Lv5/t;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Li7/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 1

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Li5/e;

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv5/t;->a:Li5/e;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_d

    goto :goto_28

    :cond_d
    invoke-interface {p1}, Li5/e;->g0()Lr6/i;

    move-result-object p1

    const-string v0, "current.staticScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lv5/u;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lv5/t;->b:Ljava/util/Set;

    iget-object p0, p0, Lv5/t;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :cond_28
    :goto_28
    return v1
.end method
