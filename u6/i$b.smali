.class public final Lu6/i$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/i;-><init>(Lu6/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lu6/i$a;",
        "Li5/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu6/i;


# direct methods
.method public constructor <init>(Lu6/i;)V
    .registers 2

    iput-object p1, p0, Lu6/i$b;->a:Lu6/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    check-cast p1, Lu6/i$a;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu6/i$b;->a:Lu6/i;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lu6/i$a;->a:Lh6/b;

    iget-object v1, p0, Lu6/i;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->k:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk5/b;

    invoke-interface {v2, v0}, Lk5/b;->a(Lh6/b;)Li5/e;

    move-result-object v2

    if-eqz v2, :cond_16

    goto/16 :goto_112

    :cond_2a
    sget-object v1, Lu6/i;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    goto/16 :goto_112

    :cond_35
    iget-object p1, p1, Lu6/i$a;->b:Lu6/g;

    if-nez p1, :cond_45

    iget-object p1, p0, Lu6/i;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->d:Lu6/h;

    invoke-interface {p1, v0}, Lu6/h;->a(Lh6/b;)Lu6/g;

    move-result-object p1

    if-nez p1, :cond_45

    goto/16 :goto_112

    :cond_45
    iget-object v1, p1, Lu6/g;->a:Le6/c;

    iget-object v10, p1, Lu6/g;->b:Lc6/b;

    iget-object v11, p1, Lu6/g;->c:Le6/a;

    iget-object p1, p1, Lu6/g;->d:Li5/v0;

    invoke-virtual {v0}, Lh6/b;->g()Lh6/b;

    move-result-object v3

    const-string v4, "name"

    const-string v5, "classId.shortClassName"

    if-eqz v3, :cond_86

    const/4 v6, 0x2

    invoke-static {p0, v3, v2, v6}, Lu6/i;->a(Lu6/i;Lh6/b;Lu6/g;I)Li5/e;

    move-result-object p0

    instance-of v3, p0, Lw6/d;

    if-eqz v3, :cond_63

    check-cast p0, Lw6/d;

    goto :goto_64

    :cond_63
    move-object p0, v2

    :goto_64
    if-nez p0, :cond_68

    goto/16 :goto_112

    :cond_68
    invoke-virtual {v0}, Lh6/b;->j()Lh6/f;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw6/d;->D0()Lw6/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lw6/k;->m()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_112

    :cond_82
    iget-object p0, p0, Lw6/d;->l:Lu6/m;

    goto/16 :goto_107

    :cond_86
    iget-object v3, p0, Lu6/i;->a:Lu6/k;

    iget-object v3, v3, Lu6/k;->f:Li5/i0;

    invoke-virtual {v0}, Lh6/b;->h()Lh6/c;

    move-result-object v6

    const-string v7, "classId.packageFqName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lv1/k;->e(Li5/i0;Lh6/c;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_de

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Li5/h0;

    instance-of v8, v7, Lu6/o;

    const/4 v9, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_da

    check-cast v7, Lu6/o;

    invoke-virtual {v0}, Lh6/b;->j()Lh6/f;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lu6/p;

    invoke-virtual {v7}, Lu6/p;->l()Lr6/i;

    move-result-object v7

    instance-of v13, v7, Lw6/k;

    if-eqz v13, :cond_d7

    check-cast v7, Lw6/k;

    invoke-virtual {v7}, Lw6/k;->m()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    move v7, v12

    goto :goto_d8

    :cond_d7
    move v7, v9

    :goto_d8
    if-eqz v7, :cond_db

    :cond_da
    move v9, v12

    :cond_db
    if-eqz v9, :cond_9d

    goto :goto_df

    :cond_de
    move-object v6, v2

    :goto_df
    move-object v4, v6

    check-cast v4, Li5/h0;

    if-nez v4, :cond_e5

    goto :goto_112

    :cond_e5
    iget-object v3, p0, Lu6/i;->a:Lu6/k;

    new-instance v6, Le6/g;

    iget-object p0, v10, Lc6/b;->E:Lc6/t;

    const-string v0, "classProto.typeTable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, p0}, Le6/g;-><init>(Lc6/t;)V

    sget-object p0, Le6/h;->b:Le6/h$a;

    iget-object v0, v10, Lc6/b;->G:Lc6/w;

    const-string v2, "classProto.versionRequirementTable"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le6/h$a;->a(Lc6/w;)Le6/h;

    move-result-object v7

    const/4 v9, 0x0

    move-object v5, v1

    move-object v8, v11

    invoke-virtual/range {v3 .. v9}, Lu6/k;->a(Li5/h0;Le6/c;Le6/g;Le6/h;Le6/a;Lw6/i;)Lu6/m;

    move-result-object p0

    :goto_107
    move-object v4, p0

    new-instance v2, Lw6/d;

    move-object v3, v2

    move-object v5, v10

    move-object v6, v1

    move-object v7, v11

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lw6/d;-><init>(Lu6/m;Lc6/b;Le6/c;Le6/a;Li5/v0;)V

    :goto_112
    return-object v2
.end method
