.class public final Lh5/l$d;
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
        "Lj5/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh5/l;


# direct methods
.method public constructor <init>(Lh5/l;)V
    .registers 2

    iput-object p1, p0, Lh5/l$d;->a:Lh5/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 12

    iget-object p0, p0, Lh5/l$d;->a:Lh5/l;

    iget-object p0, p0, Lh5/l;->a:Li5/e0;

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    const-string v0, "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version"

    sget-object v1, Lj5/g;->a:Lh6/f;

    const-string v1, ""

    const-string v2, "WARNING"

    const-string v3, "<this>"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "message"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "replaceWith"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "level"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lj5/j;

    sget-object v4, Lf5/j$a;->p:Lh6/c;

    const/4 v5, 0x2

    new-array v6, v5, [Lh4/j;

    sget-object v7, Lj5/g;->d:Lh6/f;

    new-instance v8, Lm6/v;

    invoke-direct {v8, v1}, Lm6/v;-><init>(Ljava/lang/String;)V

    new-instance v1, Lh4/j;

    invoke-direct {v1, v7, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    aput-object v1, v6, v7

    sget-object v1, Lj5/g;->e:Lh6/f;

    new-instance v8, Lm6/b;

    sget-object v9, Li4/y;->a:Li4/y;

    new-instance v10, Lj5/f;

    invoke-direct {v10, p0}, Lj5/f;-><init>(Lf5/g;)V

    invoke-direct {v8, v9, v10}, Lm6/b;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    new-instance v9, Lh4/j;

    invoke-direct {v9, v1, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v9, v6, v1

    invoke-static {v6}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v3, p0, v4, v6}, Lj5/j;-><init>(Lf5/g;Lh6/c;Ljava/util/Map;)V

    new-instance v4, Lj5/j;

    sget-object v6, Lf5/j$a;->n:Lh6/c;

    const/4 v8, 0x3

    new-array v8, v8, [Lh4/j;

    sget-object v9, Lj5/g;->a:Lh6/f;

    new-instance v10, Lm6/v;

    invoke-direct {v10, v0}, Lm6/v;-><init>(Ljava/lang/String;)V

    new-instance v0, Lh4/j;

    invoke-direct {v0, v9, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v8, v7

    sget-object v0, Lj5/g;->b:Lh6/f;

    new-instance v7, Lm6/a;

    invoke-direct {v7, v3}, Lm6/a;-><init>(Lj5/c;)V

    new-instance v3, Lh4/j;

    invoke-direct {v3, v0, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v8, v1

    sget-object v0, Lj5/g;->c:Lh6/f;

    new-instance v1, Lm6/j;

    sget-object v3, Lf5/j$a;->o:Lh6/c;

    invoke-static {v3}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v3

    const-string v7, "topLevel(StandardNames.FqNames.deprecationLevel)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    const-string v7, "identifier(level)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lm6/j;-><init>(Lh6/b;Lh6/f;)V

    new-instance v2, Lh4/j;

    invoke-direct {v2, v0, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v8, v5

    invoke-static {v8}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v4, p0, v6, v0}, Lj5/j;-><init>(Lf5/g;Lh6/c;Ljava/util/Map;)V

    sget p0, Lj5/h;->I:I

    invoke-static {v4}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b7

    sget-object p0, Lj5/h$a;->b:Lj5/h;

    goto :goto_bd

    :cond_b7
    new-instance v0, Lj5/i;

    invoke-direct {v0, p0}, Lj5/i;-><init>(Ljava/util/List;)V

    move-object p0, v0

    :goto_bd
    return-object p0
.end method
