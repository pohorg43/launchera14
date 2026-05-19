.class public final Lz6/b$a$a;
.super Ly6/i1$b$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/b$a;->d0(Lz6/b;Lc7/k;)Ly6/i1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz6/b;

.field public final synthetic b:Ly6/x1;


# direct methods
.method public constructor <init>(Lz6/b;Ly6/x1;)V
    .registers 3

    iput-object p1, p0, Lz6/b$a$a;->a:Lz6/b;

    iput-object p2, p0, Lz6/b$a$a;->b:Ly6/x1;

    invoke-direct {p0}, Ly6/i1$b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly6/i1;Lc7/i;)Lc7/k;
    .registers 4

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lz6/b$a$a;->a:Lz6/b;

    iget-object p0, p0, Lz6/b$a$a;->b:Ly6/x1;

    invoke-interface {p1, p2}, Lc7/p;->v(Lc7/i;)Lc7/k;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.KotlinType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ly6/l0;

    sget-object v0, Ly6/e2;->c:Ly6/e2;

    invoke-virtual {p0, p2, v0}, Ly6/x1;->i(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object p0

    const-string p2, "substitutor.safeSubstitu…VARIANT\n                )"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lz6/b;->e(Lc7/i;)Lc7/k;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
