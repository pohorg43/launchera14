.class public final Li5/g0$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/g0;-><init>(Lx6/m;Li5/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/g0$a;",
        "Li5/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/g0;


# direct methods
.method public constructor <init>(Li5/g0;)V
    .registers 2

    iput-object p1, p0, Li5/g0$c;->a:Li5/g0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    check-cast p1, Li5/g0$a;

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Li5/g0$a;->a:Lh6/b;

    iget-object p1, p1, Li5/g0$a;->b:Ljava/util/List;

    iget-boolean v1, v0, Lh6/b;->c:Z

    if-nez v1, :cond_60

    invoke-virtual {v0}, Lh6/b;->g()Lh6/b;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v2, p0, Li5/g0$c;->a:Li5/g0;

    const/4 v3, 0x1

    invoke-static {p1, v3}, Li4/v;->A(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Li5/g0;->a(Lh6/b;Ljava/util/List;)Li5/e;

    move-result-object v1

    if-eqz v1, :cond_23

    goto :goto_38

    :cond_23
    iget-object v1, p0, Li5/g0$c;->a:Li5/g0;

    iget-object v1, v1, Li5/g0;->c:Lx6/g;

    invoke-virtual {v0}, Lh6/b;->h()Lh6/c;

    move-result-object v2

    const-string v3, "classId.packageFqName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lx6/e$m;

    invoke-virtual {v1, v2}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/g;

    :goto_38
    move-object v4, v1

    invoke-virtual {v0}, Lh6/b;->k()Z

    move-result v6

    new-instance v1, Li5/g0$b;

    iget-object p0, p0, Li5/g0$c;->a:Li5/g0;

    iget-object v3, p0, Li5/g0;->a:Lx6/m;

    invoke-virtual {v0}, Lh6/b;->j()Lh6/f;

    move-result-object v5

    const-string p0, "classId.shortClassName"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Li4/v;->H(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_59

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_5a

    :cond_59
    const/4 p0, 0x0

    :goto_5a
    move v7, p0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Li5/g0$b;-><init>(Lx6/m;Li5/l;Lh6/f;ZI)V

    return-object v1

    :cond_60
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unresolved local class: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
