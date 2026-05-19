.class public Ly6/i1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/i1$a;,
        Ly6/i1$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractTypeChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/TypeCheckerState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,835:1\n1#2:836\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Lc7/p;

.field public final e:Ly6/m;

.field public final f:Ly6/n;

.field public g:I

.field public h:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lc7/k;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc7/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZLc7/p;Ly6/m;Ly6/n;)V
    .registers 8

    const-string v0, "typeSystemContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypePreparator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ly6/i1;->a:Z

    iput-boolean p2, p0, Ly6/i1;->b:Z

    iput-boolean p3, p0, Ly6/i1;->c:Z

    iput-object p4, p0, Ly6/i1;->d:Lc7/p;

    iput-object p5, p0, Ly6/i1;->e:Ly6/m;

    iput-object p6, p0, Ly6/i1;->f:Ly6/n;

    return-void
.end method


# virtual methods
.method public a(Lc7/i;Lc7/i;)Ljava/lang/Boolean;
    .registers 3

    const-string p0, "subType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "superType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Ly6/i1;->h:Ljava/util/ArrayDeque;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object p0, p0, Ly6/i1;->i:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public c(Lc7/i;Lc7/i;)Z
    .registers 3

    const-string p0, "subType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "superType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Ly6/i1;->h:Ljava/util/ArrayDeque;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Ly6/i1;->h:Ljava/util/ArrayDeque;

    :cond_c
    iget-object v0, p0, Ly6/i1;->i:Ljava/util/Set;

    if-nez v0, :cond_16

    invoke-static {}, Li7/e$b;->a()Li7/e;

    move-result-object v0

    iput-object v0, p0, Ly6/i1;->i:Ljava/util/Set;

    :cond_16
    return-void
.end method

.method public final e(Lc7/i;)Lc7/i;
    .registers 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/i1;->e:Ly6/m;

    invoke-virtual {p0, p1}, Ly6/m;->a(Lc7/i;)Lc7/i;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lc7/i;)Lc7/i;
    .registers 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/i1;->f:Ly6/n;

    invoke-virtual {p0, p1}, Ly6/n;->a(Lc7/i;)Lc7/i;

    move-result-object p0

    return-object p0
.end method
