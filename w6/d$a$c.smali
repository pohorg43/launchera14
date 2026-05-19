.class public final Lw6/d$a$c;
.super Lk6/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/d$a;->s(Lh6/f;Ljava/util/Collection;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TD;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lw6/d$a$c;->a:Ljava/util/List;

    invoke-direct {p0}, Lk6/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li5/b;)V
    .registers 3

    const-string v0, "fakeOverride"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lk6/o;->r(Li5/b;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lw6/d$a$c;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Li5/b;Li5/b;)V
    .registers 3

    const-string p0, "fromSuper"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fromCurrent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Ll5/r;

    if-eqz p0, :cond_15

    check-cast p2, Ll5/r;

    sget-object p0, Li5/u;->a:Li5/u;

    invoke-virtual {p2, p0, p1}, Ll5/r;->I0(Li5/a$a;Ljava/lang/Object;)V

    :cond_15
    return-void
.end method
