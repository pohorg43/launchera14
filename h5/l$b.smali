.class public final Lh5/l$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh5/l;-><init>(Li5/e0;Lx6/m;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh5/l;

.field public final synthetic b:Lx6/m;


# direct methods
.method public constructor <init>(Lh5/l;Lx6/m;)V
    .registers 3

    iput-object p1, p0, Lh5/l$b;->a:Lh5/l;

    iput-object p2, p0, Lh5/l$b;->b:Lx6/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lh5/l$b;->a:Lh5/l;

    invoke-virtual {v0}, Lh5/l;->g()Lh5/h$b;

    move-result-object v0

    iget-object v0, v0, Lh5/h$b;->a:Li5/e0;

    sget-object v1, Lh5/f;->d:Lh5/f$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lh5/f;->h:Lh6/b;

    new-instance v2, Li5/g0;

    iget-object v3, p0, Lh5/l$b;->b:Lx6/m;

    iget-object p0, p0, Lh5/l$b;->a:Lh5/l;

    invoke-virtual {p0}, Lh5/l;->g()Lh5/h$b;

    move-result-object p0

    iget-object p0, p0, Lh5/h$b;->a:Li5/e0;

    invoke-direct {v2, v3, p0}, Li5/g0;-><init>(Lx6/m;Li5/e0;)V

    invoke-static {v0, v1, v2}, Li5/w;->c(Li5/e0;Lh6/b;Li5/g0;)Li5/e;

    move-result-object p0

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    return-object p0
.end method
