.class public final Lw6/d$c$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/d$c;-><init>(Lw6/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/f;",
        "Li5/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/d$c;

.field public final synthetic b:Lw6/d;


# direct methods
.method public constructor <init>(Lw6/d$c;Lw6/d;)V
    .registers 3

    iput-object p1, p0, Lw6/d$c$a;->a:Lw6/d$c;

    iput-object p2, p0, Lw6/d$c$a;->b:Lw6/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    move-object v2, p1

    check-cast v2, Lh6/f;

    const-string p1, "name"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lw6/d$c$a;->a:Lw6/d$c;

    iget-object p1, p1, Lw6/d$c;->a:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/g;

    if-eqz p1, :cond_37

    iget-object v1, p0, Lw6/d$c$a;->b:Lw6/d;

    iget-object p0, p0, Lw6/d$c$a;->a:Lw6/d$c;

    iget-object v0, v1, Lw6/d;->l:Lu6/m;

    iget-object v0, v0, Lu6/m;->a:Lu6/k;

    iget-object v0, v0, Lu6/k;->a:Lx6/m;

    iget-object v3, p0, Lw6/d$c;->c:Lx6/i;

    new-instance v4, Lw6/a;

    iget-object p0, v1, Lw6/d;->l:Lu6/m;

    iget-object p0, p0, Lu6/m;->a:Lu6/k;

    iget-object p0, p0, Lu6/k;->a:Lx6/m;

    new-instance v5, Lw6/e;

    invoke-direct {v5, v1, p1}, Lw6/e;-><init>(Lw6/d;Lc6/g;)V

    invoke-direct {v4, p0, v5}, Lw6/a;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    sget-object v5, Li5/v0;->a:Li5/v0;

    invoke-static/range {v0 .. v5}, Ll5/p;->D0(Lx6/m;Li5/e;Lh6/f;Lx6/i;Lj5/h;Li5/v0;)Ll5/p;

    move-result-object p0

    goto :goto_38

    :cond_37
    const/4 p0, 0x0

    :goto_38
    return-object p0
.end method
