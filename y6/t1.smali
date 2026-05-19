.class public abstract Ly6/t1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ly6/t1;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly6/t1$a;

    invoke-direct {v0}, Ly6/t1$a;-><init>()V

    sput-object v0, Ly6/t1;->a:Ly6/t1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final c()Ly6/x1;
    .registers 2

    invoke-static {p0}, Ly6/x1;->e(Ly6/t1;)Ly6/x1;

    move-result-object p0

    const-string v0, "create(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Lj5/h;)Lj5/h;
    .registers 2

    const-string p0, "annotations"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract e(Ly6/l0;)Ly6/q1;
.end method

.method public f()Z
    .registers 1

    instance-of p0, p0, Ly6/t1$a;

    return p0
.end method

.method public g(Ly6/l0;Ly6/e2;)Ly6/l0;
    .registers 3

    const-string p0, "topLevelType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "position"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
