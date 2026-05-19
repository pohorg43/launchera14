.class public final La7/b;
.super Ll5/j0;
.source ""


# direct methods
.method public constructor <init>(Li5/e;)V
    .registers 19

    const-string v0, "containingDeclaration"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lj5/h;->I:I

    sget-object v4, Lj5/h$a;->b:Lj5/h;

    const-string v0, "<Error function>"

    invoke-static {v0}, Lh6/f;->h(Ljava/lang/String;)Lh6/f;

    move-result-object v5

    sget-object v6, Li5/b$a;->a:Li5/b$a;

    sget-object v7, Li5/v0;->a:Li5/v0;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Ll5/j0;-><init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)V

    sget-object v13, Li4/y;->a:Li4/y;

    sget-object v0, La7/i;->k:La7/i;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object v14

    sget-object v15, Li5/d0;->c:Li5/d0;

    sget-object v16, Li5/s;->e:Li5/t;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object v11, v13

    move-object v12, v13

    invoke-virtual/range {v8 .. v16}, Ll5/j0;->P0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/j0;

    return-void
.end method


# virtual methods
.method public bridge synthetic A0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/b;
    .registers 6

    invoke-virtual/range {p0 .. p5}, La7/b;->M0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/u0;

    return-object p0
.end method

.method public D0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/r;
    .registers 7

    const-string p2, "newOwner"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "kind"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "annotations"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public M0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/u0;
    .registers 6

    const-string p5, "newOwner"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "modality"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "visibility"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "kind"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public P(Li5/a$a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/a$a<",
            "TV;>;)TV;"
        }
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isSuspend()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public q()Li5/x$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/x$a<",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    new-instance v0, La7/b$a;

    invoke-direct {v0, p0}, La7/b$a;-><init>(La7/b;)V

    return-object v0
.end method

.method public w0(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Li5/b;",
            ">;)V"
        }
    .end annotation

    const-string p0, "overriddenDescriptors"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic z0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/x;
    .registers 6

    invoke-virtual/range {p0 .. p5}, La7/b;->M0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/u0;

    return-object p0
.end method
