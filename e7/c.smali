.class public final Le7/c;
.super Ly6/l1;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly6/l1;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ly6/j1;)Ly6/q1;
    .registers 3

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ll6/b;

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    check-cast p1, Ll6/b;

    goto :goto_e

    :cond_d
    move-object p1, v0

    :goto_e
    if-nez p1, :cond_11

    return-object v0

    :cond_11
    invoke-interface {p1}, Ll6/b;->d()Ly6/q1;

    move-result-object p0

    invoke-interface {p0}, Ly6/q1;->b()Z

    move-result p0

    if-eqz p0, :cond_2b

    new-instance p0, Ly6/s1;

    sget-object v0, Ly6/e2;->e:Ly6/e2;

    invoke-interface {p1}, Ll6/b;->d()Ly6/q1;

    move-result-object p1

    invoke-interface {p1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    return-object p0

    :cond_2b
    invoke-interface {p1}, Ll6/b;->d()Ly6/q1;

    move-result-object p0

    return-object p0
.end method
