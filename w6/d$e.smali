.class public final Lw6/d$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/d;-><init>(Lu6/m;Lc6/b;Le6/c;Le6/a;Li5/v0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Li5/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/d;


# direct methods
.method public constructor <init>(Lw6/d;)V
    .registers 2

    iput-object p1, p0, Lw6/d$e;->a:Lw6/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object p0, p0, Lw6/d$e;->a:Lw6/d;

    iget-object v0, p0, Lw6/d;->e:Lc6/b;

    iget v1, v0, Lc6/b;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const/4 v2, 0x0

    if-nez v1, :cond_11

    goto :goto_2c

    :cond_11
    iget-object v1, p0, Lw6/d;->l:Lu6/m;

    iget-object v1, v1, Lu6/m;->b:Le6/c;

    iget v0, v0, Lc6/b;->f:I

    invoke-static {v1, v0}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v0

    invoke-virtual {p0}, Lw6/d;->D0()Lw6/d$a;

    move-result-object p0

    sget-object v1, Lq5/d;->r:Lq5/d;

    invoke-virtual {p0, v0, v1}, Lw6/d$a;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    instance-of v0, p0, Li5/e;

    if-eqz v0, :cond_2c

    move-object v2, p0

    check-cast v2, Li5/e;

    :cond_2c
    :goto_2c
    return-object v2
.end method
