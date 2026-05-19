.class public final Ll5/o0$a;
.super Ll5/o0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final l:Lh4/f;


# direct methods
.method public constructor <init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;Lkotlin/jvm/functions/Function0;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/a;",
            "Li5/e1;",
            "I",
            "Lj5/h;",
            "Lh6/f;",
            "Ly6/l0;",
            "ZZZ",
            "Ly6/l0;",
            "Li5/v0;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "+",
            "Li5/f1;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "containingDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destructuringVariables"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p11}, Ll5/o0;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V

    invoke-static {p12}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Ll5/o0$a;->l:Lh4/f;

    return-void
.end method


# virtual methods
.method public E(Li5/a;Lh6/f;I)Li5/e1;
    .registers 19

    move-object v0, p0

    const-string v1, "newOwner"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ll5/o0$a;

    invoke-virtual {p0}, Lj5/b;->getAnnotations()Lj5/h;

    move-result-object v6

    const-string v2, "annotations"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll5/p0;->getType()Ly6/l0;

    move-result-object v8

    const-string v2, "type"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll5/o0;->t0()Z

    move-result v9

    iget-boolean v10, v0, Ll5/o0;->h:Z

    iget-boolean v11, v0, Ll5/o0;->i:Z

    iget-object v12, v0, Ll5/o0;->j:Ly6/l0;

    sget-object v13, Li5/v0;->a:Li5/v0;

    const-string v2, "NO_SOURCE"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ll5/o0$a$a;

    invoke-direct {v14, p0}, Ll5/o0$a$a;-><init>(Ll5/o0$a;)V

    const/4 v4, 0x0

    move-object v2, v1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v14}, Ll5/o0$a;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;Lkotlin/jvm/functions/Function0;)V

    return-object v1
.end method
