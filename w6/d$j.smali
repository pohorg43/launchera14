.class public final Lw6/d$j;
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
        "Li5/c1<",
        "Ly6/s0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/d;


# direct methods
.method public constructor <init>(Lw6/d;)V
    .registers 2

    iput-object p1, p0, Lw6/d$j;->a:Lw6/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 15

    iget-object p0, p0, Lw6/d$j;->a:Lw6/d;

    invoke-virtual {p0}, Lw6/d;->isInline()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lw6/d;->isValue()Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_226

    :cond_11
    iget-object v0, p0, Lw6/d;->e:Lc6/b;

    iget-object v2, p0, Lw6/d;->l:Lu6/m;

    iget-object v3, v2, Lu6/m;->b:Le6/c;

    iget-object v2, v2, Lu6/m;->d:Le6/g;

    new-instance v4, Lw6/f;

    iget-object v5, p0, Lw6/d;->l:Lu6/m;

    iget-object v5, v5, Lu6/m;->h:Lu6/f0;

    invoke-direct {v4, v5}, Lw6/f;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lw6/g;

    invoke-direct {v5, p0}, Lw6/g;-><init>(Ljava/lang/Object;)V

    const-string v6, "<this>"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "nameResolver"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "typeTable"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "typeDeserializer"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "typeOfPublicProperty"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Lc6/b;->z:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v8, :cond_146

    iget-object v5, v0, Lc6/b;->z:Ljava/util/List;

    const-string v6, "multiFieldValueClassUnderlyingNameList"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_60
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v11, "it"

    if-eqz v8, :cond_7d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v3, v8}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_7d
    iget-object v5, v0, Lc6/b;->C:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v8, v0, Lc6/b;->B:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v12, Lh4/j;

    invoke-direct {v12, v5, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v13, Lh4/j;

    invoke-direct {v13, v5, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    iget-object v0, v0, Lc6/b;->C:Ljava/util/List;

    const-string v3, "multiFieldValueClassUnderlyingTypeIdList"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Le6/g;->a(I)Lc6/q;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    :cond_dc
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Lh4/j;

    invoke-direct {v8, v2, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_124

    iget-object v3, v0, Lc6/b;->B:Ljava/util/List;

    :cond_f5
    const-string v0, "when (typeIdCount to typ…epresentation\")\n        }"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v3, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_107
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_119

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lw6/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    :cond_119
    new-instance v2, Li5/f0;

    invoke-static {v6, v0}, Li4/v;->o0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Li5/f0;-><init>(Ljava/util/List;)V

    goto/16 :goto_1b8

    :cond_124
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "class "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lc6/b;->e:I

    invoke-static {v3, v0}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has illegal multi-field value class representation"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_146
    iget v8, v0, Lc6/b;->c:I

    const/16 v11, 0x8

    and-int/2addr v8, v11

    if-ne v8, v11, :cond_14f

    move v8, v10

    goto :goto_150

    :cond_14f
    move v8, v9

    :goto_150
    if-eqz v8, :cond_1b7

    iget v8, v0, Lc6/b;->w:I

    invoke-static {v3, v8}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v8

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lc6/b;->m()Z

    move-result v6

    if-eqz v6, :cond_167

    iget-object v2, v0, Lc6/b;->x:Lc6/q;

    goto :goto_179

    :cond_167
    iget v6, v0, Lc6/b;->c:I

    const/16 v7, 0x20

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_16f

    move v9, v10

    :cond_16f
    if-eqz v9, :cond_178

    iget v6, v0, Lc6/b;->y:I

    invoke-virtual {v2, v6}, Le6/g;->a(I)Lc6/q;

    move-result-object v2

    goto :goto_179

    :cond_178
    move-object v2, v1

    :goto_179
    if-eqz v2, :cond_183

    invoke-virtual {v4, v2}, Lw6/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc7/k;

    if-nez v2, :cond_18b

    :cond_183
    invoke-virtual {v5, v8}, Lw6/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc7/k;

    if-eqz v2, :cond_192

    :cond_18b
    new-instance v0, Li5/y;

    invoke-direct {v0, v8, v2}, Li5/y;-><init>(Lh6/f;Lc7/k;)V

    move-object v2, v0

    goto :goto_1b8

    :cond_192
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot determine underlying type for value class "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lc6/b;->e:I

    invoke-static {v3, v0}, Lu6/z;->b(Le6/c;I)Lh6/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with property "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b7
    move-object v2, v1

    :goto_1b8
    if-eqz v2, :cond_1bc

    move-object v1, v2

    goto :goto_226

    :cond_1bc
    iget-object v0, p0, Lw6/d;->f:Le6/a;

    const/4 v2, 0x5

    invoke-virtual {v0, v10, v2, v10}, Le6/a;->a(III)Z

    move-result v0

    if-nez v0, :cond_226

    invoke-virtual {p0}, Lw6/d;->A()Li5/d;

    move-result-object v0

    if-eqz v0, :cond_20b

    invoke-interface {v0}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    const-string v1, "constructor.valueParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/e1;

    invoke-interface {v0}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    const-string v1, "constructor.valueParameters.first().name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lw6/d;->E0(Lh6/f;)Ly6/s0;

    move-result-object v1

    if-eqz v1, :cond_1f0

    new-instance p0, Li5/y;

    invoke-direct {p0, v0, v1}, Li5/y;-><init>(Lh6/f;Lc7/k;)V

    move-object v1, p0

    goto :goto_226

    :cond_1f0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value class has no underlying property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inline class has no primary constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_226
    :goto_226
    return-object v1
.end method
