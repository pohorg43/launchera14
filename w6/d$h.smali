.class public final Lw6/d$h;
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
        "Li5/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/d;


# direct methods
.method public constructor <init>(Lw6/d;)V
    .registers 2

    iput-object p1, p0, Lw6/d$h;->a:Lw6/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 7

    iget-object p0, p0, Lw6/d$h;->a:Lw6/d;

    iget-object v0, p0, Lw6/d;->k:Li5/f;

    invoke-virtual {v0}, Li5/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Li5/v0;->a:Li5/v0;

    new-instance v1, Lk6/h$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lk6/h$a;-><init>(Li5/e;Li5/v0;Z)V

    invoke-virtual {p0}, Ll5/b;->m()Ly6/s0;

    move-result-object p0

    invoke-virtual {v1, p0}, Ll5/r;->L0(Ly6/l0;)V

    goto :goto_55

    :cond_1a
    iget-object v0, p0, Lw6/d;->e:Lc6/b;

    iget-object v0, v0, Lc6/b;->p:Ljava/util/List;

    const-string v1, "classProto.constructorList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lc6/d;

    sget-object v5, Le6/b;->m:Le6/b$b;

    iget v4, v4, Lc6/d;->d:I

    invoke-virtual {v5, v4}, Le6/b$b;->c(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_27

    goto :goto_47

    :cond_46
    move-object v1, v3

    :goto_47
    check-cast v1, Lc6/d;

    if-eqz v1, :cond_54

    iget-object p0, p0, Lw6/d;->l:Lu6/m;

    iget-object p0, p0, Lu6/m;->i:Lu6/v;

    invoke-virtual {p0, v1, v2}, Lu6/v;->e(Lc6/d;Z)Li5/d;

    move-result-object v1

    goto :goto_55

    :cond_54
    move-object v1, v3

    :goto_55
    return-object v1
.end method
