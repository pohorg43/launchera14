.class public Ly6/b0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li5/a1;Ly6/c0;Ly6/n1;Ly6/l0;)Ly6/q1;
    .registers 5

    const-string p0, "parameter"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "typeAttr"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "typeParameterUpperBoundEraser"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "erasedUpperBound"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ly6/s1;

    sget-object p1, Ly6/e2;->e:Ly6/e2;

    invoke-direct {p0, p1, p4}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    return-object p0
.end method
