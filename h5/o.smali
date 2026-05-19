.class public final Lh5/o;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Li5/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/f;

.field public final synthetic b:Li5/e;


# direct methods
.method public constructor <init>(Lv5/f;Li5/e;)V
    .registers 3

    iput-object p1, p0, Lh5/o;->a:Lv5/f;

    iput-object p2, p0, Lh5/o;->b:Li5/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lh5/o;->a:Lv5/f;

    sget-object v2, Ls5/g;->a:Ls5/g;

    move-object v9, v2

    const-string v3, "EMPTY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lh5/o;->b:Li5/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "javaResolverCache"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lv5/f;

    iget-object v14, v1, Lv5/f;->k:Lu5/g;

    iget-object v13, v14, Lu5/g;->a:Lu5/c;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lu5/c;

    move-object v2, v12

    iget-object v3, v13, Lu5/c;->a:Lx6/m;

    iget-object v4, v13, Lu5/c;->b:Lr5/s;

    iget-object v5, v13, Lu5/c;->c:La6/r;

    iget-object v6, v13, Lu5/c;->d:La6/j;

    iget-object v7, v13, Lu5/c;->e:Ls5/j;

    iget-object v8, v13, Lu5/c;->f:Lu6/q;

    iget-object v10, v13, Lu5/c;->h:Ls5/f;

    iget-object v11, v13, Lu5/c;->i:Lq6/a;

    move-object/from16 p0, v12

    iget-object v12, v13, Lu5/c;->j:Lx5/b;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v16, v14

    iget-object v14, v13, Lu5/c;->k:Lu5/i;

    move-object/from16 v29, v1

    move-object v1, v13

    move-object v13, v14

    iget-object v14, v1, Lu5/c;->l:La6/y;

    move-object/from16 v0, v16

    move-object/from16 v16, v15

    iget-object v15, v1, Lu5/c;->m:Li5/y0;

    move-object/from16 v30, v16

    move-object/from16 v31, v0

    iget-object v0, v1, Lu5/c;->n:Lq5/c;

    move-object/from16 v16, v0

    iget-object v0, v1, Lu5/c;->o:Li5/e0;

    move-object/from16 v17, v0

    iget-object v0, v1, Lu5/c;->p:Lf5/i;

    move-object/from16 v18, v0

    iget-object v0, v1, Lu5/c;->q:Lr5/e;

    move-object/from16 v19, v0

    iget-object v0, v1, Lu5/c;->r:Lz5/n;

    move-object/from16 v20, v0

    iget-object v0, v1, Lu5/c;->s:Lr5/t;

    move-object/from16 v21, v0

    iget-object v0, v1, Lu5/c;->t:Lu5/d;

    move-object/from16 v22, v0

    iget-object v0, v1, Lu5/c;->u:Lz6/l;

    move-object/from16 v23, v0

    iget-object v0, v1, Lu5/c;->v:Lr5/a0;

    move-object/from16 v24, v0

    iget-object v0, v1, Lu5/c;->w:Lr5/x;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/high16 v27, 0x800000

    invoke-direct/range {v2 .. v27}, Lu5/c;-><init>(Lx6/m;Lr5/s;La6/r;La6/j;Ls5/j;Lu6/q;Ls5/g;Ls5/f;Lq6/a;Lx5/b;Lu5/i;La6/y;Li5/y0;Lq5/c;Li5/e0;Lf5/i;Lr5/e;Lz5/n;Lr5/t;Lu5/d;Lz6/l;Lr5/a0;Lr5/x;Lp6/e;I)V

    const-string v0, "<this>"

    move-object/from16 v1, v31

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu5/g;

    iget-object v3, v1, Lu5/g;->b:Lu5/k;

    iget-object v1, v1, Lu5/g;->c:Lh4/f;

    invoke-direct {v0, v2, v3, v1}, Lu5/g;-><init>(Lu5/c;Lu5/k;Lh4/f;)V

    invoke-virtual/range {v29 .. v29}, Ll5/j;->b()Li5/l;

    move-result-object v1

    const-string v2, "containingDeclaration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v29

    iget-object v2, v2, Lv5/f;->i:Ly5/g;

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-direct {v4, v0, v1, v2, v3}, Lv5/f;-><init>(Lu5/g;Li5/l;Ly5/g;Li5/e;)V

    return-object v4
.end method
