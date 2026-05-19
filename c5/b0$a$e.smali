.class public final Lc5/b0$a$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/b0$a;-><init>(Lc5/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lr6/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/b0$a;


# direct methods
.method public constructor <init>(Lc5/b0$a;)V
    .registers 2

    iput-object p1, p0, Lc5/b0$a$e;->a:Lc5/b0$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 14

    iget-object v0, p0, Lc5/b0$a$e;->a:Lc5/b0$a;

    invoke-static {v0}, Lc5/b0$a;->a(Lc5/b0$a;)Ln5/e;

    move-result-object v0

    if-eqz v0, :cond_166

    iget-object p0, p0, Lc5/b0$a$e;->a:Lc5/b0$a;

    iget-object p0, p0, Lc5/t$b;->a:Lc5/p0$a;

    sget-object v1, Lc5/t$b;->b:[Lz4/n;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "<get-moduleData>(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ln5/i;

    iget-object p0, p0, Ln5/i;->b:Ln5/a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fileClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ln5/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ln5/e;->c()Lh6/b;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_15e

    invoke-virtual {v0}, Ln5/e;->c()Lh6/b;

    move-result-object v4

    invoke-virtual {v4}, Lh6/b;->h()Lh6/c;

    move-result-object v4

    const-string v5, "fileClass.classId.packageFqName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Ln5/e;->b:Lb6/a;

    iget-object v6, v5, Lb6/a;->a:Lb6/a$a;

    sget-object v7, Lb6/a$a;->g:Lb6/a$a;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v6, v7, :cond_a9

    iget-object v5, v5, Lb6/a;->c:[Ljava/lang/String;

    if-ne v6, v7, :cond_4f

    move v6, v9

    goto :goto_50

    :cond_4f
    move v6, v2

    :goto_50
    if-eqz v6, :cond_53

    goto :goto_54

    :cond_53
    move-object v5, v8

    :goto_54
    if-eqz v5, :cond_5b

    invoke-static {v5}, Li4/j;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_5c

    :cond_5b
    move-object v5, v8

    :goto_5c
    if-nez v5, :cond_60

    sget-object v5, Li4/y;->a:Li4/y;

    :cond_60
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_69
    :goto_69
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lp6/c;->d(Ljava/lang/String;)Lp6/c;

    move-result-object v7

    new-instance v10, Lh6/c;

    iget-object v7, v7, Lp6/c;->a:Ljava/lang/String;

    const/16 v11, 0x2f

    const/16 v12, 0x2e

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v7

    const-string v10, "topLevel(JvmClassName.by…velClassMaybeWithDollars)"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, p0, Ln5/a;->b:Ln5/f;

    iget-object v11, p0, Ln5/a;->a:La6/j;

    invoke-virtual {v11}, La6/j;->c()Lu6/k;

    move-result-object v11

    iget-object v11, v11, Lu6/k;->c:Lu6/l;

    invoke-static {v11}, Lm4/d;->h(Lu6/l;)Lg6/e;

    move-result-object v11

    invoke-static {v10, v7, v11}, La6/s;->a(La6/r;Lh6/b;Lg6/e;)La6/t;

    move-result-object v7

    if-eqz v7, :cond_69

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_a9
    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :cond_ad
    new-instance v5, Ll5/o;

    iget-object v7, p0, Ln5/a;->a:La6/j;

    invoke-virtual {v7}, La6/j;->c()Lu6/k;

    move-result-object v7

    iget-object v7, v7, Lu6/k;->b:Li5/e0;

    invoke-direct {v5, v7, v4}, Ll5/o;-><init>(Li5/e0;Lh6/c;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c3
    :goto_c3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_db

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La6/t;

    iget-object v11, p0, Ln5/a;->a:La6/j;

    invoke-virtual {v11, v5, v10}, La6/j;->a(Li5/h0;La6/t;)Lr6/i;

    move-result-object v10

    if-eqz v10, :cond_c3

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    :cond_db
    invoke-static {v7}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "debugName"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "scopes"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Li7/d;

    invoke-direct {v6}, Li7/d;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_110
    :goto_110
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_130

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr6/i;

    sget-object v10, Lr6/i$b;->b:Lr6/i$b;

    if-eq v7, v10, :cond_110

    instance-of v10, v7, Lr6/b;

    if-eqz v10, :cond_12c

    check-cast v7, Lr6/b;

    iget-object v7, v7, Lr6/b;->c:[Lr6/i;

    invoke-static {v6, v7}, Li4/t;->r(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_110

    :cond_12c
    invoke-virtual {v6, v7}, Li7/d;->add(Ljava/lang/Object;)Z

    goto :goto_110

    :cond_130
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Li7/d;->size()I

    move-result p0

    if-eqz p0, :cond_153

    if-eq p0, v9, :cond_14c

    new-instance p0, Lr6/b;

    new-array v2, v2, [Lr6/i;

    invoke-virtual {v6, v2}, Li7/d;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lr6/i;

    invoke-direct {p0, v0, v2, v8}, Lr6/b;-><init>(Ljava/lang/String;[Lr6/i;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_155

    :cond_14c
    invoke-virtual {v6, v2}, Li7/d;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6/i;

    goto :goto_155

    :cond_153
    sget-object p0, Lr6/i$b;->b:Lr6/i$b;

    :goto_155
    move-object v4, p0

    invoke-interface {v1, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_15d

    goto :goto_15e

    :cond_15d
    move-object v4, p0

    :cond_15e
    :goto_15e
    const-string p0, "cache.getOrPut(fileClass…ileClass)\", scopes)\n    }"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lr6/i;

    goto :goto_168

    :cond_166
    sget-object v4, Lr6/i$b;->b:Lr6/i$b;

    :goto_168
    return-object v4
.end method
