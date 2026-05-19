.class public final Ly6/y0;
.super Ly6/r1;
.source ""


# instance fields
.field public final a:Li5/a1;

.field public final b:Lh4/f;


# direct methods
.method public constructor <init>(Li5/a1;)V
    .registers 3

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly6/r1;-><init>()V

    iput-object p1, p0, Ly6/y0;->a:Li5/a1;

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance v0, Ly6/y0$a;

    invoke-direct {v0, p0}, Ly6/y0$a;-><init>(Ly6/y0;)V

    invoke-static {p1, v0}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Ly6/y0;->b:Lh4/f;

    return-void
.end method


# virtual methods
.method public a(Lz6/f;)Ly6/q1;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public c()Ly6/e2;
    .registers 1

    sget-object p0, Ly6/e2;->e:Ly6/e2;

    return-object p0
.end method

.method public getType()Ly6/l0;
    .registers 1

    iget-object p0, p0, Ly6/y0;->b:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/l0;

    return-object p0
.end method
