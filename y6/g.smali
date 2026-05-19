.class public final Ly6/g;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/i1;

.field public final synthetic b:Lc7/p;

.field public final synthetic c:Lc7/k;

.field public final synthetic d:Lc7/k;


# direct methods
.method public constructor <init>(Ly6/i1;Lc7/p;Lc7/k;Lc7/k;)V
    .registers 5

    iput-object p1, p0, Ly6/g;->a:Ly6/i1;

    iput-object p2, p0, Ly6/g;->b:Lc7/p;

    iput-object p3, p0, Ly6/g;->c:Lc7/k;

    iput-object p4, p0, Ly6/g;->d:Lc7/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    sget-object v0, Ly6/i;->a:Ly6/i;

    iget-object v1, p0, Ly6/g;->a:Ly6/i1;

    iget-object v2, p0, Ly6/g;->b:Lc7/p;

    iget-object v3, p0, Ly6/g;->c:Lc7/k;

    invoke-interface {v2, v3}, Lc7/p;->F(Lc7/k;)Lc7/l;

    move-result-object v2

    iget-object p0, p0, Ly6/g;->d:Lc7/k;

    invoke-virtual {v0, v1, v2, p0}, Ly6/i;->h(Ly6/i1;Lc7/l;Lc7/k;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
