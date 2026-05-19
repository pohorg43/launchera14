.class public final La7/a;
.super Ll5/k;
.source ""


# direct methods
.method public constructor <init>(Lh6/f;)V
    .registers 20

    const-string v0, "name"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La7/j;->a:La7/j;

    sget-object v2, La7/j;->b:Li5/e0;

    sget-object v4, Li5/d0;->c:Li5/d0;

    sget-object v5, Li5/f;->a:Li5/f;

    sget-object v10, Li4/y;->a:Li4/y;

    sget-object v17, Li5/v0;->a:Li5/v0;

    sget-object v9, Lx6/e;->e:Lx6/m;

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v6, v10

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v9}, Ll5/k;-><init>(Li5/l;Lh6/f;Li5/d0;Li5/f;Ljava/util/Collection;Li5/v0;ZLx6/m;)V

    sget v1, Lj5/h;->I:I

    sget-object v14, Lj5/h$a;->b:Lj5/h;

    new-instance v1, Ll5/i;

    sget-object v16, Li5/b$a;->a:Li5/b$a;

    const/4 v13, 0x0

    const/4 v15, 0x1

    move-object v11, v1

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v17}, Ll5/i;-><init>(Li5/e;Li5/k;Lj5/h;ZLi5/b$a;Li5/v0;)V

    sget-object v2, Li5/s;->d:Li5/t;

    invoke-virtual {v1, v10, v2}, Ll5/i;->O0(Ljava/util/List;Li5/t;)Ll5/i;

    const-string v2, "create(this, Annotations…          )\n            }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, La7/f;->j:La7/f;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1}, Ll5/m;->getName()Lh6/f;

    move-result-object v4

    iget-object v4, v4, Lh6/f;->a:Ljava/lang/String;

    const-string v5, "errorConstructor.name.toString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v6, ""

    aput-object v6, v3, v4

    invoke-static {v2, v3}, La7/j;->b(La7/f;[Ljava/lang/String;)La7/e;

    move-result-object v2

    new-instance v3, La7/g;

    sget-object v9, La7/i;->y0:La7/i;

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v0, v9, v4}, La7/j;->d(La7/i;[Ljava/lang/String;)La7/h;

    move-result-object v7

    new-array v12, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object v6, v3

    move-object v8, v2

    invoke-direct/range {v6 .. v12}, La7/g;-><init>(Ly6/j1;Lr6/i;La7/i;Ljava/util/List;Z[Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ll5/r;->L0(Ly6/l0;)V

    invoke-static {v1}, Ly0/b;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v0, v1}, Ll5/k;->D0(Lr6/i;Ljava/util/Set;Li5/d;)V

    return-void
.end method


# virtual methods
.method public c(Ly6/x1;)Li5/m;
    .registers 3

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ll5/b;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public z(Ly6/t1;Lz6/f;)Lr6/i;
    .registers 5

    const-string v0, "typeSubstitution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, La7/f;->j:La7/f;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Ll5/b;->getName()Lh6/f;

    move-result-object p0

    iget-object p0, p0, Lh6/f;->a:Ljava/lang/String;

    const-string v1, "name.toString()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, La7/j;->b(La7/f;[Ljava/lang/String;)La7/e;

    move-result-object p0

    return-object p0
.end method

.method public z0(Ly6/x1;)Li5/e;
    .registers 3

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
