.class public final Lh5/a;
.super Lr6/e;
.source ""


# static fields
.field public static final e:Lh5/a;

.field public static final f:Lh6/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "clone"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v1, "identifier(\"clone\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lh5/a;->f:Lh6/f;

    return-void
.end method

.method public constructor <init>(Lx6/m;Li5/e;)V
    .registers 4

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lr6/e;-><init>(Lx6/m;Li5/e;)V

    return-void
.end method


# virtual methods
.method public h()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr6/e;->b:Li5/e;

    sget v1, Lj5/h;->I:I

    sget-object v1, Lj5/h$a;->b:Lj5/h;

    sget-object v2, Lh5/a;->f:Lh6/f;

    sget-object v3, Li5/b$a;->a:Li5/b$a;

    sget-object v4, Li5/v0;->a:Li5/v0;

    invoke-static {v0, v1, v2, v3, v4}, Ll5/j0;->N0(Li5/l;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)Ll5/j0;

    move-result-object v0

    const/4 v6, 0x0

    iget-object v1, p0, Lr6/e;->b:Li5/e;

    invoke-interface {v1}, Li5/e;->C0()Li5/r0;

    move-result-object v7

    sget-object v10, Li4/y;->a:Li4/y;

    iget-object p0, p0, Lr6/e;->b:Li5/e;

    invoke-static {p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->f()Ly6/s0;

    move-result-object v11

    sget-object v12, Li5/d0;->c:Li5/d0;

    sget-object v13, Li5/s;->c:Li5/t;

    move-object v5, v0

    move-object v8, v10

    move-object v9, v10

    invoke-virtual/range {v5 .. v13}, Ll5/j0;->P0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/j0;

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
