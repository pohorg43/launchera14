.class public final Lg5/b;
.super Ll5/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg5/b$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFunctionClassDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FunctionClassDescriptor.kt\norg/jetbrains/kotlin/builtins/functions/FunctionClassDescriptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1549#2:140\n1620#2,3:141\n*S KotlinDebug\n*F\n+ 1 FunctionClassDescriptor.kt\norg/jetbrains/kotlin/builtins/functions/FunctionClassDescriptor\n*L\n51#1:140\n51#1:141,3\n*E\n"
    }
.end annotation


# static fields
.field public static final l:Lh6/b;

.field public static final m:Lh6/b;


# instance fields
.field public final e:Lx6/m;

.field public final f:Li5/h0;

.field public final g:Lg5/c;

.field public final h:I

.field public final i:Lg5/b$a;

.field public final j:Lg5/d;

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lh6/b;

    sget-object v1, Lf5/j;->k:Lh6/c;

    const-string v2, "Function"

    invoke-static {v2}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    sput-object v0, Lg5/b;->l:Lh6/b;

    new-instance v0, Lh6/b;

    sget-object v1, Lf5/j;->h:Lh6/c;

    const-string v2, "KFunction"

    invoke-static {v2}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    sput-object v0, Lg5/b;->m:Lh6/b;

    return-void
.end method

.method public constructor <init>(Lx6/m;Li5/h0;Lg5/c;I)V
    .registers 8

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionKind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lg5/c;->a(I)Lh6/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ll5/b;-><init>(Lx6/m;Lh6/f;)V

    iput-object p1, p0, Lg5/b;->e:Lx6/m;

    iput-object p2, p0, Lg5/b;->f:Li5/h0;

    iput-object p3, p0, Lg5/b;->g:Lg5/c;

    iput p4, p0, Lg5/b;->h:I

    new-instance p2, Lg5/b$a;

    invoke-direct {p2, p0}, Lg5/b$a;-><init>(Lg5/b;)V

    iput-object p2, p0, Lg5/b;->i:Lg5/b$a;

    new-instance p2, Lg5/d;

    invoke-direct {p2, p1, p0}, Lg5/d;-><init>(Lx6/m;Lg5/b;)V

    iput-object p2, p0, Lg5/b;->j:Lg5/d;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ly4/d;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p4}, Ly4/d;-><init>(II)V

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Ly4/b;->a()Li4/f0;

    move-result-object p2

    :goto_46
    move-object p4, p2

    check-cast p4, Ly4/c;

    iget-boolean p4, p4, Ly4/c;->c:Z

    if-eqz p4, :cond_6d

    invoke-virtual {p2}, Li4/f0;->nextInt()I

    move-result p4

    sget-object v0, Ly6/e2;->d:Ly6/e2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p0, v0, p4}, Lg5/b;->D0(Ljava/util/ArrayList;Lg5/b;Ly6/e2;Ljava/lang/String;)V

    sget-object p4, Lh4/z;->a:Lh4/z;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_6d
    sget-object p2, Ly6/e2;->e:Ly6/e2;

    const-string p3, "R"

    invoke-static {p1, p0, p2, p3}, Lg5/b;->D0(Ljava/util/ArrayList;Lg5/b;Ly6/e2;Ljava/lang/String;)V

    invoke-static {p1}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lg5/b;->k:Ljava/util/List;

    return-void
.end method

.method public static final D0(Ljava/util/ArrayList;Lg5/b;Ly6/e2;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Li5/a1;",
            ">;",
            "Lg5/b;",
            "Ly6/e2;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget v0, Lj5/h;->I:I

    sget-object v2, Lj5/h$a;->b:Lj5/h;

    invoke-static {p3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p1, Lg5/b;->e:Lx6/m;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Ll5/n0;->I0(Li5/l;Lj5/h;ZLy6/e2;Lh6/f;ILx6/m;)Li5/a1;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic A()Li5/d;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public B0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public S()Li5/c1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/c1<",
            "Ly6/s0;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public V()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public X()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public a0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public b()Li5/l;
    .registers 1

    iget-object p0, p0, Lg5/b;->f:Li5/h0;

    return-object p0
.end method

.method public d0(Lz6/f;)Lr6/i;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lg5/b;->j:Lg5/d;

    return-object p0
.end method

.method public f()Li5/f;
    .registers 1

    sget-object p0, Li5/f;->b:Li5/f;

    return-object p0
.end method

.method public f0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic g0()Lr6/i;
    .registers 1

    sget-object p0, Lr6/i$b;->b:Lr6/i$b;

    return-object p0
.end method

.method public getAnnotations()Lj5/h;
    .registers 1

    sget p0, Lj5/h;->I:I

    sget-object p0, Lj5/h$a;->b:Lj5/h;

    return-object p0
.end method

.method public getSource()Li5/v0;
    .registers 2

    sget-object p0, Li5/v0;->a:Li5/v0;

    const-string v0, "NO_SOURCE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getVisibility()Li5/t;
    .registers 2

    sget-object p0, Li5/s;->e:Li5/t;

    const-string v0, "PUBLIC"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public h()Ly6/j1;
    .registers 1

    iget-object p0, p0, Lg5/b;->i:Lg5/b$a;

    return-object p0
.end method

.method public bridge synthetic h0()Li5/e;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic i()Ljava/util/Collection;
    .registers 1

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public isExternal()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInner()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isValue()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public n()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lg5/b;->k:Ljava/util/List;

    return-object p0
.end method

.method public o()Li5/d0;
    .registers 1

    sget-object p0, Li5/d0;->d:Li5/d0;

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

.method public bridge synthetic v()Ljava/util/Collection;
    .registers 1

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method
