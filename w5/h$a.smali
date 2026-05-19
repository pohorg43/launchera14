.class public final Lw5/h$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/h;->h(Ly6/s0;Li5/e;Lw5/a;)Lh4/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lz6/f;",
        "Ly6/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/e;

.field public final synthetic b:Lw5/h;

.field public final synthetic c:Ly6/s0;

.field public final synthetic d:Lw5/a;


# direct methods
.method public constructor <init>(Li5/e;Lw5/h;Ly6/s0;Lw5/a;)V
    .registers 5

    iput-object p1, p0, Lw5/h$a;->a:Li5/e;

    iput-object p2, p0, Lw5/h$a;->b:Lw5/h;

    iput-object p3, p0, Lw5/h$a;->c:Ly6/s0;

    iput-object p4, p0, Lw5/h$a;->d:Lw5/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lz6/f;

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw5/h$a;->a:Li5/e;

    instance-of v1, v0, Li5/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, v2

    :goto_10
    if-eqz v0, :cond_38

    invoke-static {v0}, Lo6/c;->f(Li5/h;)Lh6/b;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_38

    :cond_19
    invoke-virtual {p1, v0}, Lz6/f;->b(Lh6/b;)Li5/e;

    move-result-object p1

    if-nez p1, :cond_20

    goto :goto_38

    :cond_20
    iget-object v0, p0, Lw5/h$a;->a:Li5/e;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_38

    :cond_29
    iget-object v0, p0, Lw5/h$a;->b:Lw5/h;

    iget-object v1, p0, Lw5/h$a;->c:Ly6/s0;

    iget-object p0, p0, Lw5/h$a;->d:Lw5/a;

    invoke-virtual {v0, v1, p1, p0}, Lw5/h;->h(Ly6/s0;Li5/e;Lw5/a;)Lh4/j;

    move-result-object p0

    iget-object p0, p0, Lh4/j;->a:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ly6/s0;

    :cond_38
    :goto_38
    return-object v2
.end method
